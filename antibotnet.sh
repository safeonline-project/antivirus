#!/bin/bash
echo "#############################################"
echo "#                                           #"
echo "#      Antibotnet Script  v1.3              #"
echo "#      Created by @safeonline-project       #"
echo "#                                           #"
echo "#############################################"

malicious_paths=(
  "/tmp/bot.mips" "/tmp/bot.arm" "/tmp/bot.arm7" "/tmp/bot.arm5"
  "/tmp/bot.x86_64" "/tmp/bot.ppc" "/tmp/bot.spc" "/tmp/botnet.mips"
  "/tmp/main.arm" "/tmp/main.arm5" "/tmp/main.arm7" "/tmp/main.ppc"
  "/tmp/main.x86_64" "/tmp/main.mips" "/tmp/main.spc" "/tmp/botnet.arm"
  "/tmp/botnet.arm7" "/tmp/botnet.ppc" "/tmp/botnet.spc" "/tmp/botnet.mpsl"
  "/tmp/w.sh" "/tmp/sh4" "/tmp/wget.sh" "/tmp/arm7" "/tmp/ppc"
  "/tmp/boatnet.i686" "/tmp/boatnet.x86_64" "/tmp/boatnet.i468"
  "/tmp/morte.arc" "/tmp/morte.arm6" "/tmp/morte.i686" "/tmp/morte.ppc"
  "/tmp/morte.i468" "/tmp/morte.mips" "/tmp/morte.arm5" "/tmp/morte.mpsl"
  "/tmp/morte.spc" "/tmp/morte.arm" "/tmp/morte.m68k" "/tmp/morte.sh4"
  "/tmp/morte.x86" "/tmp/morte.x86_64" "/tmp/morte.arm7" "/tmp/top1miku.arm4"
  "/tmp/fghe3tj.arm7" "/tmp/fghe3tj.arm5" "/tmp/fghe3tj.arm6" "/tmp/fghe3tj.sh4"
  "/tmp/PwnKit.sh" "/tmp/fghe3tj.arm" "/tmp/ppc64_1" "/tmp/mipsel_1"
  "/tmp/mips_1" "/tmp/ppc64le_1" "/tmp/i686_1" "/tmp/arm926t_1"
  "/tmp/daemon" "/tmp/daemon_bak" "/tmp/uam.pl"
)

cron_files=(
  /etc/crontab
  /etc/cron.d/*
  /var/spool/cron/root
  /var/spool/cron/crontabs/root
  /var/spool/cron/crontabs/*
  /etc/cron.d/anacron
)


echo "[*] Удаляю вредоносные файлы..."
for file in "${malicious_paths[@]}"; do
  rm -f "$file" 2>/dev/null
done

echo "[*] Чищу cron от вредоносных заданий..."
for file in "${cron_files[@]}"; do
  [ -f "$file" ] || continue
  for path in "${malicious_paths[@]}"; do
    sed -i "\|rm -f $path|d" "$file"
  done
done

echo "[Plugin_Cleaner] обезараживатель"
rm -f /tmp/ad_gevt_*
rm -f /tmp/ad_mailbox_*
rm -f /tmp/ad_700_*
rm -rf /tmp/plasma-csd-generator.*
rm -rf /tmp/systemd-private-*
rm -f /tmp/ksmserver.*
rm -f /tmp/sddm-*
rm -rf /tmp/.ICE-unix/
rm -rf /tmp/.XIM-unix/
rm -rf /tmp/.X11-unix/
rm -f /tmp/ad_connect_queue_*
rm -f /tmp/qipc_*
rm -rf /tmp/ssh-*
rm -rf /tmp/.font-unix
rm -f /var/spool/anacron/*
rm -f /dev/shm/*ad*
rm -rf /var/tmp/systemd-private-*
find /tmp -type f -name '*\(deleted\)*' -exec rm -f {} + 2>/dev/null
