#!/usr/bin/env python
# -*- coding: utf-8 -*-


from jinja2 import Template, Environment, FileSystemLoader
import json
from appz_models import Application

if __name__ == "__main__":
    # TODO: iterate through a directory of json spec files
    data_file = open('twitter-spec.json')
    data = json.load(data_file)
    # all template files should be inside the templates folder
    env = Environment(loader=FileSystemLoader('templates'))
    # this is the application class that will parse the json file
    app = Application(data)
    template = env.get_template("app_template.swift")
    outputFile = template.render(app=app)
    file_ = open("{}.swift".format(app.name), 'w')
    file_.write(outputFile.encode('utf-8'))
    file_.close()
    print "Done"
