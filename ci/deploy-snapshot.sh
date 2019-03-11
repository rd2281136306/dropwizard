#!/bin/bash
set -e
set -uxo pipefail

./mvnw -B -q deploy --settings 'ci/settings.xml' -Dmaven.test.skip=true