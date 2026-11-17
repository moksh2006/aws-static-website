# Assignment 2 — Build & Test Automation with AWS CodeBuild

## Files
- `app.py`: small Flask application
- `test_app.py`: automated unit tests
- `requirements.txt`: Python dependencies
- `buildspec.yml`: CodeBuild install, test, and artifact instructions

## Run locally
```bash
cd Assignment-2-CodeBuild
python -m venv .venv
# Windows:
.venv\Scripts\activate
# macOS/Linux:
source .venv/bin/activate
pip install -r requirements.txt
python -m pytest -v
python app.py
```
Open http://127.0.0.1:5000.

## AWS CodeBuild setup
1. Create an S3 bucket for build artifacts (or use the bucket configured by your pipeline).
2. Create a CodeBuild project and connect this GitHub repository.
3. Set the buildspec path to `Assignment-2-CodeBuild/buildspec.yml`.
4. Use a managed Linux image with Python 3.11 support.
5. Create a CodePipeline source stage for the `main` branch and a CodeBuild build/test stage.
6. Enable a webhook or pipeline trigger for pushes/PR events as required by your lab.
7. Push a commit and confirm the build succeeds.

## Demonstrate a failing test
Temporarily change the expected message in `test_app.py` to a wrong value, commit, and run the pipeline. Confirm CodeBuild fails. Restore the original expected message and commit again; confirm the build succeeds.
