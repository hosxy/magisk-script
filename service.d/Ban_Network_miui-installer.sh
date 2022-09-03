#!/system/bin/sh

app_name="com.miui.packageinstaller"
app_uid=`grep $app_name /data/system/packages.list | cut -d " " -f 2`

iptables -A OUTPUT -m owner --uid-owner $app_uid -j REJECT
ip6tables -A OUTPUT -m owner --uid-owner $app_uid -j REJECT
