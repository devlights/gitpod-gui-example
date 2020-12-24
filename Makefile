init:
	go get -v ./...

build:
	go build -o app .

run: build
	./app &
	echo "$!" > app.pid

