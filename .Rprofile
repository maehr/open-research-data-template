# Activate renv for reproducible package management
if (file.exists("renv/activate.R")) {
  source("renv/activate.R")
}

# Configure R options
options(
  # Use P3M (Posit Package Manager) for faster precompiled binaries
  repos = c(
    P3M = "https://packagemanager.posit.co/cran/latest",
    CRAN = "https://cran.r-project.org"
  ),
  # Disable readr progress bars for cleaner output
  readr.show_progress = FALSE
)
