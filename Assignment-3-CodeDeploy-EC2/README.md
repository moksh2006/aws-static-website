# Assignment 3 — EC2 Deployment with AWS CodeDeploy

## Files
- `index.html`: web page deployed to the instance
- `appspec.yml`: CodeDeploy deployment instructions and lifecycle hooks
- `scripts/`: install, stop, and start Apache

## AWS setup
1. Launch an EC2 Linux instance and allow HTTP (port 80) in its security group.
2. Attach an EC2 instance profile with permissions required for CodeDeploy and access to the deployment bundle.
3. Install and start the CodeDeploy agent using the official AWS instructions for your OS and region.
4. Create a CodeDeploy service role.
5. Create a CodeDeploy application (EC2/On-premises) and deployment group targeting your instance.
6. Package this folder's contents so `appspec.yml` is at the root of the deployment bundle. Upload the bundle to S3 or use a supported CodePipeline artifact arrangement.
7. Create a pipeline with source and CodeDeploy deploy stages; configure the deployment group.
8. Deploy and open the instance's public IPv4 address.

## Important
- The deployment bundle root must contain `appspec.yml`, `index.html`, and `scripts/`; do not zip the parent folder itself.
- Ensure shell scripts have executable permissions in the deployment archive (`chmod +x scripts/*.sh`).
- IAM roles, security group rules, and agent setup are required before deployment.
