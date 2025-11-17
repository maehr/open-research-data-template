FROM rocker/r-ver:latest

# Install wget only (keine Python-Abhängigkeiten)
RUN apt-get update && apt-get install -y --no-install-recommends wget \
    && rm -rf /var/lib/apt/lists/*

# Install uv using wget
RUN wget -qO- https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

# R packages
RUN R -q -e "install.packages('renv', repos='https://cloud.r-project.org')"
RUN R -q -e "install.packages('languageserver', repos='https://cloud.r-project.org')"

# Install Quarto (tar.gz, kein apt)
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.tar.gz && \
    tar -xzf quarto-linux-amd64.tar.gz && \
    rm quarto-linux-amd64.tar.gz && \
    mv quarto-* /opt/quarto && \
    ln -s /opt/quarto/bin/quarto /usr/local/bin/quarto

RUN quarto check

WORKDIR /workspace
