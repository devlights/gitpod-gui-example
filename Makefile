init:
	go get -v ./...

prepare:
	mkdir -p bin

build: prepare
	go build -o ./bin/fyneapp ./cmd/fyneapp

run: build
	./bin/fyneapp &
	echo "$!" > ./bin/fyneapp.pid

