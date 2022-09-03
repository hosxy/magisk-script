#!/system/bin/sh

see_name="com.caij.see"
see_uid=`grep $see_name /data/system/packages.list | cut -d " " -f 2`

iptables -A OUTPUT -d 212.64.63.190 -m owner --uid-owner $see_uid -j DROP
iptables -A OUTPUT -d 212.64.63.215 -m owner --uid-owner $see_uid -j DROP
