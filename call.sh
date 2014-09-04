#!/usr/bin/env bash

# Read configuration/settings
source ${HOME}/.alfred-ciscocall.conf

# Store arguments in variable and replace spaces
PHONENUMBER=${*// /}

if [[ -z ${CISCOIP} || -z ${CISCOUSER} || -z ${CISCOPASS} || -z ${CISCOENDPOINT} ]]; then
    echo "Error reading environment variables. Check '~/.alfred-ciscocall.conf'"
    exit 1
fi

# Display output
RAWRESPONSE=$(curl -s --data 'XML=<CiscoIPPhoneExecute><ExecuteItem URL="Dial:'${PHONENUMBER}'" /></CiscoIPPhoneExecute>' http://${CISCOUSER}:${CISCOPASS}@${CISCOIP}:${CISCOPORT}/CGI/Execute)
STATUSCODE=$?

# Check exit code of curl command
if [[ ${STATUSCODE} -ne 0 ]]; then
    echo "Error while establish phone call"
fi

if [[ $(echo "${RAWRESPONSE}") =~ "Error" ]]; then
    echo "Error in response: \"${RAWRESPONSE}\""
fi
