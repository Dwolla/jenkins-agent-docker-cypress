NVM_TAG := sha-a9c907d-core-4.13.2-1-jdk11-7b03219
JOB := core-${NVM_TAG}
CHECK_JOB := check-${NVM_TAG}
CLEAN_JOB := clean-${NVM_TAG}

all: ${CHECK_JOB} ${JOB}
check: ${CHECK_JOB}
clean: ${CLEAN_JOB}
.PHONY: all check clean ${JOB} ${CHECK_JOB} ${CLEAN_JOB}

${JOB}: core-%: Dockerfile
	docker build \
	  --build-arg NVM_TAG=$* \
	  --tag dwolla/jenkins-agent-cypress:$*-SNAPSHOT \
	  .

${CHECK_JOB}: check-%:
	grep --silent "^  NVM_TAG: $*$$" .github/workflows/ci.yml

${CLEAN_JOB}: clean-%:
	docker image rm --force dwolla/jenkins-agent-cypress:$*-SNAPSHOT