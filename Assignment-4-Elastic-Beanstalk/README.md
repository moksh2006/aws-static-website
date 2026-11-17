# Assignment 4 — Elastic Beanstalk Zero-Downtime Deployment

## Files
- `server.js`: Express application
- `package.json`: Node.js dependencies and start command
- `Procfile`: Elastic Beanstalk web process

## Run locally
```bash
cd Assignment-4-Elastic-Beanstalk
npm install
npm start
```
Open http://localhost:8080. Check /health and /env.

## AWS setup
1. Create an Elastic Beanstalk Node.js web server environment.
2. Set environment variable `APP_ENV=staging`.
3. Create a CodePipeline with this GitHub repository as the source, branch `main`.
4. Configure the deploy action for the Elastic Beanstalk application and environment.
5. For zero-downtime deployment, configure a suitable policy such as rolling with an additional batch, immutable, or traffic splitting where supported.
6. Push a change and monitor environment health and deployment events.
7. For production, use a separate environment and set `APP_ENV=production`.

## Notes
- The app listens on the port supplied by Elastic Beanstalk, with 8080 as a local fallback.
- Never commit passwords, API keys, or secrets.
- Verify environment health and deployment policy behavior in your AWS region/configuration.
