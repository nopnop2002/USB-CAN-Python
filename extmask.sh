#!/bin/bash

# Enable 0x00000103 and 0x00000106
json=$(cat << EOS
{
  "request": "Filter",
  "index": 0,
  "id": "0x00000103",
  "mask": "0x000001FF",
  "type": "ext",
  "status": "Enable"
}
EOS
)

echo "$json"
echo "$json"  | socat - udp-datagram:255.255.255.255:8200,broadcast

json=$(cat << EOS
{
  "request": "Filter",
  "index": 1,
  "id": "0x00000106",
  "mask": "0x000001FF",
  "type": "ext",
  "status": "Enable"
}
EOS
)

echo "$json"
echo "$json"  | socat - udp-datagram:255.255.255.255:8200,broadcast


