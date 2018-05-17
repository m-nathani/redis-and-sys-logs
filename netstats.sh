#!/bin/bash
[[ -z "${NETWORK_IFACE}" ]] && iface='wlan' || iface="${NETWORK_IFACE}"


while sleep 1; do
sar -n DEV 1 1 | grep ${iface} >> ~/log/netstats;
done
