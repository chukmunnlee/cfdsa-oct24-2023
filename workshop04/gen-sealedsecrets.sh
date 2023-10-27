#!/bin/bash 
kubeseal -oyaml --controller-name=sealed-secrets --controller-namespace=sealed-secrets \
	< ./secrets.yaml > ./sealed-secrets.yaml
