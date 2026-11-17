# Assignment 5 — Containerized CI/CD with Docker and Amazon ECR

## Files
- `app.py`: Flask API
- `requirements.txt`: Python dependencies
- `Dockerfile`: container image definition
- `buildspec.yml`: CodeBuild instructions to build and push to ECR

## Run locally
```bash
cd Assignment-5-Docker-ECR
docker build -t aws-ecr-assignment .
docker run --rm -p 5000:5000 aws-ecr-assignment
```
Open http://localhost:5000 and http://localhost:5000/health.

## AWS setup
1. Create an Amazon ECR private repository. Use its name as `IMAGE_REPO_NAME`.
2. Create a CodeBuild project connected to this GitHub repository.
3. Set buildspec path to `Assignment-5-Docker-ECR/buildspec.yml`.
4. Enable **Privileged** mode in the CodeBuild environment.
5. Set `AWS_DEFAULT_REGION` and `IMAGE_REPO_NAME` in CodeBuild.
6. Grant the CodeBuild service role ECR permissions to authenticate and upload image layers/images.
7. Run the build and verify the image tag appears in ECR.

## Optional ECS/Fargate extension
Create an ECS cluster, task definition referencing the ECR image, and a service. Add an ECS deploy stage if your lab requires deployment beyond pushing the image to ECR.

## Important
The ECR repository must exist before the build. This buildspec pushes the image to ECR; ECS deployment is an optional extension.
