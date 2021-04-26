import instana
from flask import Flask, jsonify

app = Flask(__name__)
app.config["DEBUG"] = True

@app.route('/getDivision', methods=['GET'])
def home():
    return jsonify({'division': 'Labs'})
app.run(host='0.0.0.0', debug=True, port=5000)