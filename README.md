# jenkins-agent-docker-cypress

[![license](https://img.shields.io/github/license/dwolla/jenkins-agent-docker-mono.svg?style=flat-square)](https://github.com/Dwolla/jenkins-agent-docker-cypress/blob/main/LICENSE)

Docker image based on Dwolla's [nvm Jenkins Agent](https://github.com/Dwolla/jenkins-agent-docker-core) that inclues a number of system dependencies making [nvm](https://github.com/creationix/nvm) and [Cypress](https://www.cypress.io/) available to Jenkins jobs.

## Local Development

To build this image locally, refer to the NVM_TAG default value defined in [jenkins-agents-workflow](https://github.com/Dwolla/jenkins-agents-workflow/blob/main/.github/workflows/build-docker-image.yml) and run the following command:

`make TAG_ENV=<default-nvm-tag-from-jenkins-agents-workflow> all`