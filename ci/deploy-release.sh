#!/bin/bash
set -e
set -uxo pipefail

openssl aes-256-cbc -K "${encrypted_ec79e61fc360_key}" -iv "${encrypted_ec79e61fc360_iv}" -in 'ci/keyring.gpg.enc' -out 'ci/keyring.gpg' -d
./mvnw -B -q deploy --settings 'ci/settings.xml' -DperformRelease=true -Dmaven.test.skip=true