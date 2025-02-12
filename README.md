# n8n on Railway 🚀

Welcome to the n8n Railway Template repository! This project lets you deploy an n8n instance with PostgreSQL on Railway seamlessly—with dynamic password generation for enhanced security.

## One-Click Deployment

Click the button below to deploy your n8n instance on Railway:

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?repo=https://github.com/leonardocuco/n8n-railway)

**Important:**  
- Make sure the URL uses **railway.app** (not railway.com).  
- If you see a 404 ("Looks like you are lost"), verify that:
  - Your repository is public.
  - The `railway.json` file is in the root of your default branch (typically `main`).

## How It Works

- **Dynamic Password Generation:**  
  The `railway.json` file uses placeholders like `{{ generate_password() }}` to automatically generate secure, random passwords when the project is deployed.
  
- **Service Configuration:**  
  The deployment sets up:
  - An **n8n service** using your repository’s Dockerfile.
  - A **PostgreSQL plugin** configured with dynamic credentials.
