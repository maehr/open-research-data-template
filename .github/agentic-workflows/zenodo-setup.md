---
name: 'Zenodo Integration Setup'
description: 'Set up Zenodo integration for long-term data archiving'
on:
  workflow_dispatch:
    inputs:
      zenodo_record_id:
        description: 'Zenodo record ID'
        required: true
      zenodo_doi:
        description: 'Zenodo DOI'
        required: true

triggers:
  - '@copilot setup zenodo'
---

# Zenodo Integration Setup

Configure Zenodo integration for long-term archiving and DOI assignment of research data.

## 1. Update Zenodo References

Replace `ZENODO_RECORD` placeholder with the actual Zenodo record ID in the following files:

### Documentation Files

- `README.md` - Update DOI badge and citation links
- `README.template.md` - Update example URLs for future use

### Configuration Files

- `_brand.yml` - Add Zenodo links if applicable
- `CITATION.cff` - Add Zenodo DOI information

## 2. Update Citation Information

In `CITATION.cff`, add or update:

```yaml
doi: { { inputs.zenodo_doi } }
url: 'https://zenodo.org/record/{{ inputs.zenodo_record_id }}'
repository-code: 'https://github.com/OWNER/REPO'
```

## 3. Update README Badges

Update the DOI badge in README.md:

```markdown
[![DOI](https://zenodo.org/badge/DOI/{{ inputs.zenodo_doi }}.svg)](https://doi.org/{{ inputs.zenodo_doi }})
```

## 4. Update Citation Links

Update all Zenodo citation format links in README.md:

- BibTeX: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/hx`
- CSL: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/csl`
- DataCite: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/dcite4`
- Dublin Core: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/xd`
- DCAT: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/dcat`
- JSON: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/json`
- JSON-LD: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/schemaorg_jsonld`
- GeoJSON: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/geojson`
- MARCXML: `https://zenodo.org/record/{{ inputs.zenodo_record_id }}/export/xm`

## 5. Update API Examples

Update the Zenodo API example in README.md:

```bash
curl -i https://zenodo.org/api/records/{{ inputs.zenodo_record_id }}
```

## 6. Validation Steps

After updating Zenodo information:

1. Verify all links are accessible
2. Check that DOI resolves correctly
3. Validate CITATION.cff format
4. Test API endpoint
5. Update any documentation that references the old placeholder

Create a commit with the message: "feat: configure Zenodo integration with record {{ inputs.zenodo_record_id }}"
