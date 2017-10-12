from flask import Flask, jsonify
app = Flask(__name__)

json = [{'student': 'Billy', 'grade': 'Fifth'}, {'student': 'Bobby', 'grade': 'First'}]

@app.route('/', methods=['GET'])
def test():
    return jsonify({'students': json})

if __name__ == '__main__':
    httpd = make_server('', 8000, application)
    print("Serving on port 8000...")
    httpd.serve_forever()
