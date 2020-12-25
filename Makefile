init:
	go get -v ./...

clean:
	rm -rf ./bin

prepare:
	mkdir -p bin

build: prepare
	go build -o ./bin/fyneapp ./cmd/fyneapp
	go build -o ./bin/uiapp ./cmd/uiapp

run: build
	./bin/fyneapp &
	echo "$!" > ./bin/fyneapp.pid
	./bin/uiapp &
	echo "$!" > ./bin/uiapp.pid
