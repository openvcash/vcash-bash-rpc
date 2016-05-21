# A bash script for making RPC to vcashd on Linux

Dependencies
```
jq
```

Get the script and make it executable
```
wget https://raw.githubusercontent.com/whphhg/vcashd-rpc/master/rpc.sh
chmod +x rpc.sh
```

Usage
```
./rpc.sh -m <method> -p <params>
./rpc.sh -m getincentiveinfo
./rpc.sh -m getblockhash -p 220200
./rpc.sh -m sendtoaddress -p '["address",amount]'
./rpc.sh -m listreceivedbyaccount -p '{"minconf":1,"includeempty":true}'
```

![Screenshot](http://i.imgur.com/Ab0SvOp.jpg)
