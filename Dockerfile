FROM node:lts-bookworm-slim

LABEL org.opencontainers.image.source=https://github.com/trancong12102/semantic-release-gitlab-docker
LABEL org.opencontainers.image.description="Docker image for semantic-release with GitLab plugin"
LABEL org.opencontainers.image.licenses=MIT

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends git-core ca-certificates
RUN npm install -g semantic-release @semantic-release/gitlab
