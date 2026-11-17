const express = require("express");

const app = express();
const port = process.env.PORT || 8080;

app.get("/", (_req, res) => {
  res.send(`<!doctype html>
<html lang="en">
<head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Elastic Beanstalk</title></head>
<body>
  <h1>Assignment 4: Elastic Beanstalk</h1>
  <p>Node.js application deployed on AWS Elastic Beanstalk.</p>
  <p>Environment: ${process.env.APP_ENV || process.env.NODE_ENV || "not set"}</p>
</body>
</html>`);
});

app.get("/health", (_req, res) => res.json({ status: "healthy" }));
app.get("/env", (_req, res) => res.json({ appEnvironment: process.env.APP_ENV || "not set" }));

app.listen(port, "0.0.0.0", () => console.log(`Server listening on port ${port}`));
