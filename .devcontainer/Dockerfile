# Dockerfile
FROM python:3.11-slim

ENV WORKDIR=/workspace

# System deps + tini
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential curl tini 