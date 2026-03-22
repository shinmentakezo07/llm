FROM docker.litellm.ai/berriai/litellm:main-stable

# Set working directory
WORKDIR /app

# Copy config file
COPY litellm_config.yaml /app/config.yaml

# Expose port
EXPOSE 7860

# Run LiteLLM
CMD ["--config", "/app/config.yaml", "--port", "7860", "--detailed_debug"]
