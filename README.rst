=====
About
=====

This repo contains Docker files to build container for httpbin.org service.
Nginx runs as a frontend serving both: HTTP and HTTPS.

There is a helper makefile to build docker image and container locally::

    $ make image
    $ make container
