image_tag := povilasb/httpbin


image:
	docker build -t $(image_tag) .
.PHONY: image

container:
	docker run  -d -t $(image_tag)
.PHONY: container

ssl-keys:
	openssl req -x509 -newkey rsa:2048 -keyout ssl/key.pem \
		-out ssl/cert.pem -days 100000 -nodes
.PHONY: ssl-key
