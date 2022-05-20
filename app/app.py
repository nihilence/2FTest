from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return 'Hello, 2F - My Name is Sabby'

if __name__ == "__main__":
    app.run(debug=True, host='127.0.0.1', port=8888)
