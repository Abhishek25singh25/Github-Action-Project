# 🚀 CI/CD Pipeline Project (GitHub Actions + Docker)

![PR Pipeline](https://github.com/1357912468/Github-Action-Project/actions/workflows/pr-pipeline.yml/badge.svg)
![Main Pipeline](https://github.com/1357912468/Github-Action-Project/actions/workflows/main-pipeline.yml/badge.svg)
![Health Check](https://github.com/1357912468/Github-Action-Project/actions/workflows/health-check.yml/badge.svg)

---

## 📌 Project Overview

This project demonstrates a complete CI/CD pipeline using GitHub Actions with reusable workflows, Docker integration, and automated health checks.

---

## ⚙️ Pipeline Architecture

### 🔹 PR Workflow

* Trigger: Pull Request to main
* Runs build & test workflow
* Ensures code quality before merge

### 🔹 Main Pipeline

* Trigger: Push
* Steps:

  * Build & Test
  * Docker Build & Push (latest + sha tag)
  * Deploy (production environment)

### 🔹 Health Check

* Trigger: Every 12 hours (cron) + manual
* Pulls Docker image
* Runs container
* Performs health check using curl
* Generates summary report

---

## 🔄 Workflow Flow

PR opened
→ Build & Test
→ PR checks passed ✅

Push to main
→ Build & Test
→ Docker Build & Push
→ Deploy 🚀

Every 12 hours
→ Health Check
→ Status Report 📊

---

## 🐳 Docker Image

* Image: `1357912468/capstone-app`
* Tags:

  * `latest`
  * `sha-<commit-hash>`

---

## 🔐 Security Features

* Secrets managed using GitHub Secrets
* No hardcoded credentials
* Optional Docker image scanning
* Dependency vulnerability checks

---

## 🚀 Future Improvements

* Slack / Email notifications
* Multi-environment deployment (dev, staging, production)
* Rollback strategy using previous Docker images
* Kubernetes deployment
* Monitoring with Prometheus & Grafana

---

## 📦 Tech Stack

* GitHub Actions
* Docker
* Python (Flask)
* CI/CD Concepts

---

## 💡 Key Learning

* Reusable workflows in GitHub Actions
* End-to-end CI/CD pipeline design
* Docker build and push automation
* Environment-based deployment
* Automated health checks

---

## 📌 Author

**Abhishek Singh**
