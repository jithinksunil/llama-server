# Use the official Ollama image as the base
FROM ollama/ollama

# Set environment variables
ENV OLLAMA_KEEP_ALIVE=24h
ENV OLLAMA_HOST=0.0.0.0

# Expose the necessary port
EXPOSE 11434

# Create a volume for Ollama configuration and data
VOLUME ["/root/.ollama"]

# Set the working directory (optional, based on your usage)
WORKDIR /code

# Default command to run Ollama
ENTRYPOINT ["/bin/sh", "-c", "ollama serve & sleep 10 && ollama run llama3.2:1b"]
