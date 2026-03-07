FROM python:3.12-slim-trixie
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

# Copy project files
COPY pyproject.toml uv.lock .python-version ./
COPY . .

# Install dependencies using uv
RUN uv sync --frozen

# Expose Jupyter Lab port
EXPOSE 8888

# Run Jupyter Lab
CMD ["uv", "run", "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
