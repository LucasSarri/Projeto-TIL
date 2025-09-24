from flask import Flask, request, url_for, render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template('hello.html')

@app.route("/login", methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return "Rota post"
    else:
        return "Rota get"

@app.route("/user/<username>")
def profile(username):
    return f"Olá, {username}"
