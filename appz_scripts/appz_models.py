#!/usr/bin/env python
import re
from __init__ import env  # i don't like this will change it in the future


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
        definition = definition[:-1]  # remove trailing ',' character
        definition += ")"
        return definition

    def parameter_generation(self):
        parameter_string = ""
        for parameter in self.parameters:
            parameter_string += "let {},".format(parameter.name)
        if len(self.parameters) > 0:
            parameter_string = parameter_string[:-1]  # remove trailing ,
        return parameter_string

    def path_components_generation(self, path_type):
        if path_type == "app":
            paths = self.path.app_path
        else:
            paths = self.path.web_path
        components = ""
        for path in paths:
            parameter = self.get_parameter(path)
            if parameter is not None:
                parameter_names = [param.name for param in self.parameters]
                if parameter in parameter_names:
                    components += "{},".format(parameter)
                else:
                    components += '"{}",'.format(path)
            else:
                components += '"{}",'.format(path)
        if len(paths) > 0:
            components = components[:-1]  # remove trailing ,

        return components

    def query_parameters_generation(self, query_type):
        if query_type == "app":
            query_items = self.path.app_query
        else:
            query_items = self.path.web_query
        query = ""
        for key, value in query_items.iteritems():
            query += '"{}" : '.format(key)
            parameter = self.get_parameter(value)
            if parameter is not None:
                parameter_names = [param.name for param in self.parameters]
                if parameter in parameter_names:
                    query += "{},".format(parameter)
                else:
                    query += '"{}",'.format(value)
            else:
                query += '"{}",'.format(value)
        if len(query_items) > 0:
            query = query[:-1]  # remove trailing ,
        else:
            query += ":"
        return query

    def create_action(self):
        template = env.get_template("action_template.txt")
        outputFile = template.render(action=self)
        return outputFile.encode('utf-8')

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
