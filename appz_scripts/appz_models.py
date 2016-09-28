#!/usr/bin/env python
import re


class Path:
    def __init__(self, paths_dict):
        self.app_path = paths_dict["app"]["path"]
        self.app_query = paths_dict["app"]["query"]
        self.web_path = paths_dict["web"]["path"]
        self.web_query = paths_dict["web"]["query"]

    def __str__(self):
        return unicode(self)

    def __unicode__(self):
        return "app_path: {}\napp_query: {}\nweb_path: {}\nweb_query: {}"\
            .format(
                self.app_path,
                self.app_query,
                self.web_path,
                self.web_query
                )


class Parameter:
    def __init__(self, paramters_dict):
        self.type = paramters_dict["type"]
        self.name = paramters_dict["name"]
        self.isOptional = paramters_dict["isOptional"]

    def create_paramter_for_function(self):
        optinal = "?" if self.isOptional else ""
        return "{}: {}{}".format(self.name, self.type, optinal)

    def __str__(self):
        return unicode(self)

    def __unicode__(self):
        return "name: {}\ntype: {}\nOptional: {}".format(
            self.name,
            self.type,
            self.isOptional
            )


class Action:
    def __init__(self, action_dict):
        self.name = action_dict["name"]
        self.parameters = self.create_params(action_dict["params"])
        self.path = Path(action_dict["paths"])

    def create_params(self, params):
        return [Parameter(param) for param in params]

    def get_parameter(self, parameter_string):
        regex_query = re.findall('^{(.+?)}', parameter_string)
        if len(regex_query) > 0:
            return regex_query[0]
        else:
            return None

    def create_function_definition(self):
        definition = "case {}(".format(self.name)
        for parameter in self.parameters:
            definition += parameter.create_paramter_for_function()
            definition += ","
        definition = definition[:-1]  # remove tailing ',' character
        definition += ")"
        return definition

    def create_action(self):
        action = "case .{}(".format(self.name)
        for parameter in self.parameters:
            action += "let {},".format(parameter.name)
        if len(self.parameters) > 0:
            action = action[:-1]  # remove tailing ,
        action += "):\n"  # finished enum definition
        # enum implementaion starts here
        action += "\t\treturn ActionPaths(\n"
        action += "\t\t\tapp: Path(\n"
        action += "\t\t\t\tpathComponents:["
        for app_path in self.path.app_path:
            parameter = self.get_parameter(app_path)
            if parameter is not None:
                parameter_names = [param.name for param in self.parameters]
                if parameter in parameter_names:
                    action += "{},".format(parameter)
                else:
                    action += '"{}",'.format(app_path)
            else:
                action += '"{}",'.format(app_path)
        if len(self.path.app_path) > 0:
            action = action[:-1] + "],\n"  # remove tailing ,
        else:
            action += "],\n"
        # pathComponents for app done here
        action += "\t\t\t\tqueryParameters: ["
        for key, value in self.path.app_query.iteritems():
            action += '"{}" : '.format(key)
            parameter = self.get_parameter(value)
            if parameter is not None:
                parameter_names = [param.name for param in self.parameters]
                if parameter in parameter_names:
                    action += "{},".format(parameter)
                else:
                    action += '"{}",'.format(value)
            else:
                action += '"{}",'.format(value)
        if len(self.path.app_query) > 0:
            action = action[:-1] + "]),\n"  # remove tailing ,
        else:
            action += ":]),\n"
        # queryParameters for app done here

        action += "\t\t\tweb: Path(\n"
        action += "\t\t\t\tpathComponents:["
        for web_path in self.path.web_path:
            parameter = self.get_parameter(web_path)
            if parameter is not None:
                parameter_names = [param.name for param in self.parameters]
                if parameter in parameter_names:
                    action += "{},".format(parameter)
                else:
                    action += '"{}",'.format(web_path)
            else:
                action += '"{}",'.format(web_path)
        if len(self.path.web_path) > 0:
            action = action[:-1] + "],\n"  # remove tailing ,
        else:
            action += "],\n"
        # pathComponents for web done here
        action += "\t\t\t\tqueryParameters: ["
        for key, value in self.path.web_query.iteritems():
            action += '"{}":'.format(key)
            parameter = self.get_parameter(value)
            if parameter is not None:
                parameter_names = [param.name for param in self.parameters]
                if parameter in parameter_names:
                    action += "{},".format(parameter)
                else:
                    action += '"{}",'.format(value)
            else:
                action += '"{}",'.format(value)
        if len(self.path.web_query) > 0:
            action = action[:-1] + "]),"  # remove tailing ,
        else:
            action += ":]\n\t\t\t)\n\t\t)\n"
        return action

    # serlizaiton functions
    def __str__(self):
        return unicode(self)

    def __unicode__(self):
        parameters = "\n".join(self.parameters)
        paths = "\n".join(self.paths)
        return "name: {}\nparameters: {}\npaths: {}".format(
            self.name,
            parameters,
            paths
            )


class Application:
    # json_file: is a dictionary created from json file
    def __init__(self, json_file):
        self.name = json_file["name"]
        self.fallbackURL = json_file["fallbackURL"]
        self.scheme = json_file["scheme"]
        self.appStoreId = json_file["appStoreId"]
        self.actions = self.create_actions(json_file["actions"])

    def create_actions(self, actions):
        return [Action(action) for action in actions]

    # serlizaiton functions
    def __str__(self):
        return unicode(self)

    def __unicode__(self):
        # TODO: serialize actions
        return "name: {}\nurl: {}\nshceme: {}\nappstore Id: {}".format(
               self.name,
               self.fallbackURL,
               self.scheme,
               self.appStoreId)
