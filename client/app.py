from flask import Flask
import threading
import menousdb

app = Flask(__name__)


@app.route('/', methods=["GET", "POST"])
def index():
    return 'Hello World'

