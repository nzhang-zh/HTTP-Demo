#!/usr/bin/env bash

socat \
    -v -d -d \
    TCP-LISTEN:$1,crlf,reuseaddr,fork \
    SYSTEM:"
        echo HTTP/1.1 200 OK;
        echo Content-Type\: text/plain;
        echo;
        echo \"Hello World\";
    "
