#/bin/bash
#created by @safeonline-project on GitHub.
echo "[1/2] Завершаю базовые процессы ботнетов"
kill $(pgrep -f "./bot.mips")
kill $(pgrep -f "./bot.arm")
kill $(pgrep -f "./bot.arm5")
kill $(pgrep -f "./bot.arm7")
kill $(pgrep -f "./bot.ppc")
kill $(pgrep -f "./bot.x86")
kill $(pgrep -f "./bot.x86_64")
kill $(pgrep -f "./botnet.arm")
kill $(pgrep -f "./botnet.arm5")
kill $(pgrep -f "./botnet.arm7")
kill $(pgrep -f "./botnet.mips")
kill $(pgrep -f "./botnet.ppc")
kill $(pgrep -f "./Sora-a-r-m")
kill $(pgrep -f "./Sora-m-i-p-s")
kill $(pgrep -f "./Sora-a-r-m-5")
kill $(pgrep -f "./Sora-a-r-m-7")
kill $(pgrep -f "./Sora-p-p-c")
kill $(pgrep -f "./i")
kill $(pgrep -f "./bin.sh")
kill $(pgrep -f "./mozi.a")
kill $(pgrep -f "./mozi.m")
kill $(pgrep -f "./android")
kill $(pgrep -f "./b")
kill $(pgrep -f "./bin.sh")
kill $(pgrep -f "./nginx")


echo "[2/2] Удаляю файлы вируса."
rm /tmp/bot.mips
rm /tmp/bot.arm
rm /tmp/bot.arm7
rm /tmp/bot.arm5
rm /tmp/bot.x86_64
rm /tmp/bot.ppc
rm /tmp/botnet.mips
rm /tmp/main.arm
rm /tmp/main.arm5
rm /tmp/main.arm7
rm /tmp/main.ppc
rm /tmp/main.x86_64
rm /tmp/main.mips
rm /tmp/botnet.mips
rm /tmp/botnet.arm
rm /tmp/botnet.arm7
rm /tmp/botnet.ppc
