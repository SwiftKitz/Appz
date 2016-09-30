#!/usr/bin/env python
# -*- coding: utf-8 -*-
from jinja2 import Environment, FileSystemLoader

env = Environment(loader=FileSystemLoader('templates'))
