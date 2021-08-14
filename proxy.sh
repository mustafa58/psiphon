#!/usr/bin/env bash

export http_proxy="http://127.0.0.1:8081"
export https_proxy="https://127.0.0.1:8081"
export ftp_proxy="http://127.0.0.1:8081"
export socks_proxy="socks://127.0.0.1:1081"

# Set Proxy
function setproxy() {
    local PROXY_SERVER="127.0.0.1"
    local PORT="8081"
    export {http,https,ftp}_proxy="http://$PROXY_SERVER:$PORT"
    export socks_proxy="socks://$PROXY_SERVER:1081"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
    unset socks_proxy
}
