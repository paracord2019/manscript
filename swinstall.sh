#!/bin/sh
#Disabling root
#usermod -s /sbin/nologin root && service network-manager restart

apt-get install nmap

wget http://www.rfxn.com/downloads/maldetect-current.tar.gz

wget https://kent.dl.sourceforge.net/project/rkhunter/1.4.6/rkhunter-1.4.6.tar.gz

wget https://downloads.cisofy.com/lynis/lynis-2.7.0.tar.gz

apt-get install fail2ban -y

apt-get install ssh -y

tar xzf maldetect-current.tar.gz && cd maldetect-1.6.3 && ./install.sh && cd

tar xzf rkhunter-1.4.6.tar.gz && cd rkhunter-1.4.6 && ./installer.sh -l /usr --install && cd

tar xzf lynis-2.7.0.tar.gz && cd lynis && apt-get install lynis -y && cd

apt-get install auditd -y

#making directories for upcoming files
mkdir /home/user1/Conf
mkdir /home/user1/Bkup
mkdir /home/user1/Hrdn

tail -vn +1 /etc/passwd /etc/shadow /var/log/auth.log >> /home/user1/Conf/stdlog.txt
tail -vn +1 /var/log/dpkg.log | grep -w '/var/log\|installed' >> home/user1/Conf/stdlog.txt

(cat /et/hosts; ip a show; route -n; w; apr -a) >> /home/user1/Conf/net.txt

chmod 644 /etc/passwd /etc/group && chmod 640 /etc/shadow && chmod 555 /boot

exit 0;

