#!/bin/bash

# Update Firefox browser to the latest version

readonly FIREFOX_ARCHIVE='/tmp/firefox.tar.bz2'
readonly FIREFOX_DIRECTORY='/opt/firefox'

if [ "$(id -u)" != '0' ]; then
    echo "ERROR: The script need to be run as root." >&2
    exit 1
fi

echo 'Downloading the latest version of firefox archive:'
wget --output-document="${FIREFOX_ARCHIVE}" \
    --tries=10 \
    --no-verbose \
    --show-progress \
    'https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-GB'

if [ $? -ne 0 ]; then
    echo 'ERROR: The firefox archive can not be downloaded! Existing...'
    exit 1
fi

if [ -d "${FIREFOX_DIRECTORY}" ]; then
    rm --recursive \
        --force \
        "${FIREFOX_DIRECTORY}"
fi

echo 'Extracting the firefox archive:'
tar --extract \
    --bzip2 \
    --file="${FIREFOX_ARCHIVE}" \
    --directory='/opt/' \
    --checkpoint='.400'

rm --force "${FIREFOX_ARCHIVE}" 

echo -e '\nFirefox is updated!'
