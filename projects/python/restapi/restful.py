from flask import Flask, jsonify
app = Flask(__name__)

json = [{'student': 'Billy', 'grade': 'Fifth'}, {'student': 'Bobby', 'grade': 'First'}]

@app.route('/', methods=['GET'])
def test():
    return jsonify({'students': json})

if __name__ == '__main__':
    app.run(debug=True, port=8080)
