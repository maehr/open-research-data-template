FROM rocker/r-ver:latest

WORKDIR /workspace

# Install uv using static curl
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

# Install R packages
RUN R -q -e "install.packages('renv', repos='https://cloud.r-project.org')"
RUN R -q -e "install.packages('languageserver', repos='https://cloud.r-project.org')"

# Install Quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.tar.gz && \
    tar -xzf quarto-linux-amd64.tar.gz && \
    rm quarto-linux-amd64.tar.gz && \
    mv quarto-* /opt/quarto && \
    ln -s /opt/quarto/bin/quarto /usr/local/bin/quarto

# Verify
RUN quarto check
