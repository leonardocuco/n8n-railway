# n8n on Railway 🚀

Welcome to the n8n Railway template repository! This project allows you to deploy an n8n instance with PostgreSQL on Railway quickly and securely. The template uses dynamic password generation for secure credentials on every deployment.

## One‑Click Deploy

Click the button below to deploy n8n with PostgreSQL on Railway. Railway will read the `railway.json` file, generate secure random passwords for you, and set up your environment automatically.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?repo=https://github.com/leonardocuco/n8n-railway)

## How It Works

- **Dynamic Password Generation:**  
  The `railway.json` file uses placeholders like `{{ generate_password() }}` to create secure, random passwords for:
  - The n8n basic authentication (`N8N_BASIC_AUTH_PASSWORD`)
  - PostgreSQL credentials (`DB_POSTGRESDB_PASSWORD` and `POSTGRES_PASSWORD`)

- **Service Configuration:**  
  The template sets up:
  - An **n8n service** that uses your repository's Dockerfile.
  - A **PostgreSQL plugin** with the necessary environment variables.

## Prerequisites

- Make sure your GitHub repository is public, or that Railway has access to your repository.
- Ensure that your `railway.json` file is located in the root of your default branch (usually `main`).
