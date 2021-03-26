# GitHub Action to Upload Directories to Azure FileShare

This action uses the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) to upload a directory of your choice to your Azure File Storage.

## Usage

### Example

Place in a `.yml` file in your `.github/workflows` folder.

```yaml
name: Upload To Azure FileShare
on:
  push:
    branches:
      - master
jobs:
  upload:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: cahaseler/azure-fileshare-upload@v1.0.0
        with:
          account_name: storageaccount
          account_key: ${{secrets.ACCOUNT_KEY}}
          share_name: azure-fileshare
          source_dir: config
          cloud: AzureUSGovernment
```
