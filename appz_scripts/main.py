#!/usr/bin/env python
# -*- coding: utf-8 -*-


import json
from appz_models import Application
from __init__ import env  # i don't like this will change it in the future

if __name__ == "__main__":
    # TODO: iterate through a directory of json spec files
    data_file = open('twitter-spec.json')
    data = json.load(data_file)
    # this is the application class that will parse the json file
    app = Application(data)
    template = env.get_template("app_template.swift")
    outputFile = template.render(app=app)
    file_ = open("{}.swift".format(app.name), 'w')
    file_.write(outputFile.encode('utf-8'))
    file_.close()
    print "Done"
