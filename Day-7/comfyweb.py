from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p> yo dawg</p>"

@app.route("/projects/")
def projects():
    return "<p> yo projects</p>"

@app.route("/demo")
def demo():
    return "<p> demo</p>"