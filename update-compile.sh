#!/bin/bash
export GOPATH=/home/eclips/go
export PATH=$PATH:$GOPATH/bin
cd /home/eclips/go/src/github.com/lightningnetwork/lnd
echo "pull"
/usr/bin/git pull
echo "build"
make clean && make && make install tags="autopilotrpc chainrpc invoicesrpc routerrpc signrpc walletrpc watchtowerrpc wtclientrpc"
cd /home/eclips/pool
/usr/bin/git pull
echo "build pool"
make && make install
echo "build loop"
cd /home/eclips/loop && /usr/bin/git pull
cd /home/eclips/loop/cmd && go install ./...
