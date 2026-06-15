---
title: Repository Selection
description: Guidance on selecting the right data repository for your project.
---

Choosing the appropriate repository is a critical step in the data publication process. This project template is configured for [Zenodo](https://zenodo.org/) by default due to its excellent GitHub integration, but you should evaluate if another repository better suits your discipline or institutional requirements.

## Evaluation Criteria

Consider the following characteristics when selecting a repository:

- **Formats and Size**: Does the repository support the formats and total volume of your data?
- **Metadata**: Does it support discipline-specific metadata standards?
- **Support and Operation**: Is it operated by a trusted institution? What level of user support is available?
- **Persistent Identifiers**: Does it issue DOIs (Digital Object Identifiers) or other persistent identifiers?
- **Retention**: What are the guarantees for long-term preservation?
- **Registration**: Do users need an account, institutional affiliation, or approval to deposit?
- **Costs**: Are there fees for data deposition or access?

## Common Repositories

### Zenodo (General Purpose)

[Zenodo](https://zenodo.org/) is a general-purpose repository hosted by CERN.

- **Pros**: Free, excellent GitHub integration, supports versioning, issues DOIs, very easy to use.
- **Cons**: Generic metadata, file size limits (50GB per dataset by default).
- **Use Case**: Excellent default choice if your discipline doesn't have a specific repository or if you want to automatically archive GitHub releases.

### Discipline-Specific Repositories

Many fields have specialized repositories that better support domain-specific metadata and data formats. You should use a discipline-specific repository if one exists for your field.

_Examples:_

- **OpenAgrar**: Repository for agricultural and nutritional research in Germany. Relevant for institutions like the BfR (Bundesinstitut für Risikobewertung).
- **PubPsych**: For psychology.
- **PANGAEA**: For earth and environmental sciences.

_You can find discipline-specific repositories using [re3data.org](https://www.re3data.org/)._

## Linking Articles and Datasets

Regardless of the repository you choose, always ensure you:

1. Include the dataset DOI in your article's Data Availability Statement.
2. Include the article's DOI in your dataset's metadata.
