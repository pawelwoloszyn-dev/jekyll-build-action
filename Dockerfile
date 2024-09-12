FROM jvconseil/jekyll-docker:latest
LABEL version="1.2.0"
LABEL description="Minimal Jekyll image with basic build tools."
LABEL maintainer="Vivien Richter <vivien-richter@outlook.de>"

# Requirements
USER root
RUN apk --no-cache add build-base
EXPOSE 4000/tcp

# Entry point
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
