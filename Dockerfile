FROM docker.litellm.ai/berriai/litellm:main-stable

WORKDIR /app

COPY config.yaml /app/config.yaml

EXPOSE 7860

CMD ["--config", "/app/config.yaml", "--port", "7860", "--detailed_debug"]
