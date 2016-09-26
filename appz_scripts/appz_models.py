#!/usr/bin/env python


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
    # TODO: finish actions
    def __init__(self, action_dict):
        self.name = action_dict["name"]
        self.parameters = self.create_params(action_dict["params"])
        self.paths = action_dict["paths"]

    def create_params(self, params):
        return [Parameter(param) for param in params]

    def create_function_definition(self):
        definition = "case {}(".format(self.name)
        for parameter in self.parameters:
            definition += parameter.create_paramter_for_function()
            definition += ","
        definition = definition[:-1]  # remove tailing ',' character
        definition += ")"
        return definition

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
    # jsonFile: is a dictionary created from json file
    def __init__(self, jsonFile):
        self.name = jsonFile["name"]
        self.fallbackURL = jsonFile["fallbackURL"]
        self.scheme = jsonFile["scheme"]
        self.appStoreId = jsonFile["appStoreId"]
        self.actions = self.create_actions(jsonFile["actions"])

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
