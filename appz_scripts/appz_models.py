#!/usr/bin/env python
class Param:
    def __init__(self, paramsDict):
        self.type = paramsDict["type"]
        self.name = paramsDict["name"]
        self.isOptional = paramsDict["isOptional"]


class Action:
    # TODO: finish actions
    def __init__(self, actionDict):
        self.name = actionDict["name"]
        self.params = self.createParams(actionDict["params"])
        self.paths = actionDict["paths"]

    def createParams(self, params):
        return [Param(param) for param in params]


class App:
    # jsonFile: is a dictionary created from json file
    def __init__(self, jsonFile):
        self.name = jsonFile["name"]
        self.fallbackURL = jsonFile["fallbackURL"]
        self.scheme = jsonFile["scheme"]
        self.appStoreId = jsonFile["appStoreId"]
        self.actions = self.createActions(jsonFile["actions"])

    def createActions(self, actions):
        return [Action(action) for action in actions]

    # serlizaiton function
    def __str__(self):
        return unicode(self)

    def __unicode__(self):
        # TODO: serialize actions
        return "[INFO] name: {}\nurl: {}\nshceme: {}\nappstore Id: {}".format(
                                   self.name,
                                   self.fallbackURL,
                                   self.scheme,
                                   self.appStoreId)
