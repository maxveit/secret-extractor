This is a simple init container which extracts an arbitrary secret from an arbitrary path in a JSON file and stores it in the notion "KEY=VALUE" in a specific file that is mounted externally.

## Idea of this container
This container was created initially to extract specific secrets from JSON strings (which are part of secrets) created by the IBM Cloud Operator. These secrets are stored in a unix environment variable notion which can be read by Quarkus. Thus, this container can be used to provide secrets from IBM Cloud Services to Quarkus applications without having the developer or an administrator gain knowledge of the secret itself.

## Usage
There is an example deployment provided in sample-deploy.yaml. In a real scenario you would want to use one or more of these containers as init-container. The following variables have to be set as environment variables of the container:
* SECRET_PATH - describes a path in a JSON file that can be ingested by the jq tool, that will be extracted
* MOUNT_PATH -  the path where the JSON file is mounted
* ENV_NAME - the name of the output environment variable

Results will be stored in the file /secrets/env_list and can be mounted to your application container by using an emptyDir volume.