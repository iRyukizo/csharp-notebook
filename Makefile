build:
	docker build --no-cache -t ryukizo/csharp-notebook .

run:
	docker run --rm -it -p 8080:8888 -v ~/:/host --name ryuki-server ryukizo/csharp-notebook

.PHONY: build run
