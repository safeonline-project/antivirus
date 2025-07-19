rm -f /.mod
rm -f /etc/init.d/dns-udp4
rm -f /etc/rc2.d/S01dns-udp4
rm -f /etc/rc3.d/S01dns-udp4
rm -f /etc/rc4.d/S01dns-udp4
rm -f /etc/rc5.d/S01dns-udp4
rm -f /etc/init.d/sudo
rm -f /etc/systemd/system/quotaon.service

systemctl disable --now quotaon.service
systemctl daemon-reexec