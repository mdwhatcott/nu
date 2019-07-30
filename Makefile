#!/usr/bin/make -f

test:
	go test -timeout=1s -short -coverprofile=coverage.txt -covermode=atomic ./...

compile:
	go build ./...

build: test compile

.PHONY: test compile build
