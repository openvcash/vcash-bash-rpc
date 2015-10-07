# A bash script for making RPC to vanillacoind on Linux

Dependencies
```
jq
```

Get the script and make it executable
```
wget https://raw.githubusercontent.com/whphhg/vanillacoind-rpc/master/rpc.sh
chmod +x rpc.sh
```

Usage
```
./rpc.sh -m <method> -p <params>
./rpc.sh -m getincentiveinfo
./rpc.sh -m getblockhash -p 220200
./rpc.sh -m listreceivedbyaccount -p '{"minconf":1,"includeempty":true}'
```

![Screenshot](http://i.imgur.com/Ab0SvOp.jpg)

If you're feeling generous and want to tip
```
VNL: Vsaj7MMLwSMgzBQEonfMLR9QxqkKprFVGR
BTC: 1Pay4nywPa1qkP5no3rcrLhfVo6Bc1JE8s
```
