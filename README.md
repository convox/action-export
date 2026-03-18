# Convox Export Action
This Action runs the [export Command](https://docs.convox.com/reference/cli/resources#resources-export) in a specific resource and creates a file with the output. The file created can be read and managed by any post action.

## Inputs
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) containing the app you wish to run the command against
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to run the command against
### `resource`
**Required** The name of the [resource](https://docs.convox.com/reference/cli/resources) to run the command against
### `filename`
**Required** The name of the file that will be created with the output of the export

## Example usage
```
steps:
- name: login
  id: login
  uses: convox/action-login@v2
  with:
    password: ${{ secrets.CONVOX_DEPLOY_KEY }}

- name: Export database
  uses: convox/action-export@v1
  with:
    rack: staging
    app: myapp
    resource: database
    filename: my-file.sql

- name: Read export output
  run: cat my-file.sql
```
