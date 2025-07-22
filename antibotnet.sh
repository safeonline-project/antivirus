#!/bin/bash
echo "#############################################"
echo "#                                           #"
echo "#      Antibotnet Script  v1.4              #"
echo "#      Updated by @safeonline-project       #"
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
  "/tmp/daemon" "/tmp/daemon_bak" "/tmp/uam.pl" "/tmp/aarch64" "/boot/system.pub"
  "/tmp/odin.arm" "/tmp/odin.arm5n" "/tmp/odin.arm7" "/tmp/odin.m68k"
  "/tmp/odin.mips" "/tmp/odin.mpsl" "/tmp/odin.ppc" "/tmp/odin.sh4"
  "/tmp/odin.spc" "/tmp/odin.x86"
  "/tmp/bizy.arm" "/tmp/bizy.arm5" "/tmp/bizy.arm6" "/tmp/bizy.arm7"
  "/tmp/bizy.arm8" "/tmp/bizy.mips" "/tmp/bizy.mpsl" "/tmp/bizy.mipss"
  "/tmp/bizy.mpsls" "/tmp/bizy.riscv" "/tmp/bizy.x86" "/tmp/bizy.x64"
  "/tmp/bizy.mips64" "/tmp/bizy.mpsl64" "/tmp/bizy.mips64s" "/tmp/bizy.mpsl64s"
  "/tmp/bizy.s930x" "/tmp/.main"
)

cron_files=(
  /etc/crontab
  /etc/cron.d/*
  /var/spool/cron/root
  /var/spool/cron/crontabs/root
  /var/spool/cron/pi
  /var/spool/cron/teamhd
  /var/spool/cron/crontabs/*
  /etc/cron.d/anacron
)

echo "[*] Удаляю вредоносные файлы..."
for file in "${malicious_paths[@]}"; do
  rm -f "$file" 2>/dev/null
done

echo "[*] Удаляю директории, связанные с ботнетами..."
rm -rf /tmp/.IDC-unix /tmp/.puscarie

echo "[*] Чищу cron от вредоносных заданий..."
for file in "${cron_files[@]}"; do
  [ -f "$file" ] || continue
  for path in "${malicious_paths[@]}"; do
    sed -i "\|$path|d" "$file"
  done
done

echo "[*] Удаляю следы Mirai и временные файлы..."
rm -f /tmp/ad_gevt_* /tmp/ad_mailbox_* /tmp/ad_700_* /tmp/ad_connect_queue_*
rm -f /tmp/qipc_* /tmp/ksmserver.* /tmp/sddm-* /tmp/ksplashqml-*
rm -rf /tmp/plasma-csd-generator.* /tmp/systemd-private-* /tmp/ssh-* /tmp/.font-unix
rm -f /dev/shm/*ad*
rm -f /var/spool/anacron/*
rm -f /tmp/*(deleted)* 2>/dev/null

echo "[✔] Очистка завершена!"
