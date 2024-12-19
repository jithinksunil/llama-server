# Use the official Node.js 20.9.0 image as a base
FROM ollama/ollama

# Expose the application port
EXPOSE 11434

# Start the NestJS application
ENTRYPOINT ["/bin/sh", "-c", "ollama serve & sleep 10 && ollama run llama3.2:1b"]
