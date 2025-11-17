# Fast base: includes R, R-dev libs, pandoc, LaTeX stripped down.
FROM rocker/r-ver:latest

# Install uv (no apt)
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

# Install renv (no apt)
RUN R -q -e "install.packages('renv', repos='https://cloud.r-project.org')"

WORKDIR /workspace
