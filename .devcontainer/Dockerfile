FROM rocker/r-ver:latest

# Install curl (required for uv installation)
RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

RUN R -q -e "install.packages('renv', repos='https://cloud.r-project.org')"

WORKDIR /workspace
