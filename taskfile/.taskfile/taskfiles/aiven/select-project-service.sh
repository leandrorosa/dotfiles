#!/usr/bin/env bash

echo "Select a project:"
PROJECT=$(gum choose $(avn project list --json | jq -r .[].project_name))
echo "You picked ${PROJECT}"

echo "Select a service:"
SERVICE=$(gum choose $(avn service list --project "${PROJECT}" --json | jq -r '.[].service_name'))
echo "You picked ${SERVICE}"