# n8n-railway Docker Image

This repository provides a custom Docker image for [n8n](https://n8n.io/), an extendable workflow automation tool. The image is based on the official `n8nio/n8n:latest` image and adds support for `ffmpeg`.

## What this Docker image does
- **Base Image:** Uses the official `n8nio/n8n:latest` as the starting point.
- **Adds ffmpeg:** Installs `ffmpeg` via `apt-get` to enable workflows that require audio/video processing or conversion.
- **Optimized:** Removes package lists after installation to keep the image size smaller.

## Usage
This image is intended for users who need n8n with `ffmpeg` available for their workflows, such as processing media files.

## How to use
You can pull and run this image from Docker Hub:

```sh
docker pull leonardocuco/n8n-railway:latest
docker run -p 5678:5678 leonardocuco/n8n-railway:latest
```

## Building locally
To build the image yourself:

```sh
docker build -t yourname/n8n-railway:latest ./n8n-railway
```

## Automated Builds
This repository includes a GitHub Actions workflow to automatically build and push the image to Docker Hub on every push to the `main` branch or when triggered manually. 