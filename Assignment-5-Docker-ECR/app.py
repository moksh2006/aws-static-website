from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.get("/")
def home():
    return jsonify(
        message="Hello from the Docker + Amazon ECR assignment!",
        environment=os.getenv("APP_ENV", "development")
    )

@app.get("/health")
def health():
    return jsonify(status="healthy")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.getenv("PORT", "5000")))
