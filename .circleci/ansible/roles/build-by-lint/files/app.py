#!/usr/bin/env python
# save this as app.py
from flask import Flask, escape, request

app = Flask(__name__)

@app.route('/<name>')
def hello(name):
    return "Hello " + str(name)