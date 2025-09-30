useradd Anna
useradd -m Marta
useradd -m Petra
cat marta_credentials.txt | chpasswd
cat perta_credentials.txt | chpasswd
groupadd programmers
groupadd designers
usermod -aG programmers Anna
usermod -aG programmers Marta
echo "0 2 * * 7 reboot" > anna_cron.txt
echo "* * * * * date > /home/Marta/.date.txt" > marta_cron.txt
