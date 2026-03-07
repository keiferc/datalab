# Data Lab

Sandbox for mini experiments and practice with data tools and techniques.

## Requirements

- [Docker](https://docker.com) >= 4.63

## Local Installation

```bash
$ docker build --t datalab .
```

## Usage

```bash
$ docker run -p 8888:8888 datalab:latest
```

## Contributing

### Requirements
- [uv](https://docs.astral.sh/uv/) >= 0.10

### Installation
```bash
uv sync
```

Deep learning dependencies are kept separate to reduce installation size and prevent
conflicts. To install Tensorflow, use `uv sync --group tf`. To install Pytorch, use 
`uv sync --group pytorch`. Remember to adjust the Dockerfile to include the relevant 
dependency groups.

### Usage
```bash
uv run jupyter lab
```

### Guidelines

- Write self-documenting code
- Manage dependencies with `uv` (e.g., `uv add polars`)
- Verify types with `ty` (e.g., `uv run ty check`)
- Use `pytest` for tests (e.g., `uv run pytest`)
- Ensure style compliance with `ruff` (e.g., `uv run ruff check --fix`)
- Containerize releases with Docker
- Submit pull requests to `dev`