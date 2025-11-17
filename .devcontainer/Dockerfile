FROM rocker/tidyverse:latest

RUN apt-get update && apt-get install -y --no-install-recommends wget \
    && rm -rf /var/lib/apt/lists/*

# Install uv using wget
RUN wget -qO- https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

# Set Posit Package Manager for fast binary R packages
ENV RSPM="https://packagemanager.posit.co/cran/latest"

# R packages (binary if available)
RUN R -q -e "options(repos = c(CRAN = Sys.getenv('RSPM'))); install.packages('renv')"
RUN R -q -e "options(repos = c(CRAN = Sys.getenv('RSPM'))); install.packages('languageserver')"

# Install Quarto
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.tar.gz && \
    tar -xzf quarto-linux-amd64.tar.gz && \
    rm quarto-linux-amd64.tar.gz && \
    mv quarto-* /opt/quarto && \
    ln -s /opt/quarto/bin/quarto /usr/local/bin/quarto

# Verify Quarto installation
RUN quarto check

WORKDIR /workspace
