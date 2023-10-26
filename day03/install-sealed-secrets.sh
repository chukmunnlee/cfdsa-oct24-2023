#!/bin/bash

helm install sealed-secrets bitnami-labs/sealed-secrets \
	-n sealed-secrets --create-namespace

