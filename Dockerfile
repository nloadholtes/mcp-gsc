FROM ghcr.io/astral-sh/uv:python3.13-bookworm-slim

WORKDIR /app

COPY gsc_server.py .
COPY pyproject.toml uv.lock .
RUN uv sync --frozen --no-cache
CMD ["uv", "run", "python", "gsc_server.py"]

