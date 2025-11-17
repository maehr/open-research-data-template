FROM rocker/r-ver:latest

# Install curl (for uv) and gdebi-core (for Quarto .deb install)
RUN apt-get update && apt-get install -y --no-install-recommends \
        curl \
        gdebi-core \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

# Install renv
RUN R -q -e "install.packages('renv', repos='https://cloud.r-project.org')"

# Install R language server
RUN R -q -e "install.packages('languageserver', repos='https://cloud.r-project.org')"

# Install Quarto (stable release)
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    gdebi -n quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb

# Verify Quarto installation (fails build if Quarto is misconfigured)
RUN quarto check

WORKDIR /workspace
