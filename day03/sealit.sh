#!/bin/bash

kubeseal -oyaml \
	--controller-namespace=sealed-secrets \
	--controller-name=sealed-secrets \
	< ./my-secrets.yaml > sealed_secrets.yaml
