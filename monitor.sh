#!/bin/bash
url='http://syd2.5awo.com:666'
echo '******正在安装一键gost监控程序，请等待几分钟******'
get_opsy() {
    [ -f /etc/redhat-release ] && awk '{print ($1,$3~/^[0-9]/?$3:$4)}' /etc/redhat-release && return
    [ -f /etc/os-release ] && awk -F'[= "]' '/PRETTY_NAME/{print $3,$4,$5}' /etc/os-release && return
    [ -f /etc/lsb-release ] && awk -F'[="]+' '/DESCRIPTION/{print $2}' /etc/lsb-release && return
}
opsy=$( get_opsy )
if [ "${opsy:0:6}" = "CentOS" ]; then
	echo '检测到您的系统是Centos，自动执行安装程序'
	yum -y install screen
elif [ "${opsy:0:6}" = "Debian" ]; then
echo '检测到您的系统是Debian，自动执行安装程序'
	apt-get install screen
fi
	wget ${url}/gost/gost.sh
	bash gost.sh
	sleep 1.2
	echo 'gost已经安装完成，接下来安装监控脚本，因为编码问题，'
	echo '以下监控内容可能会乱码，看到OK，直接退出即可'
	wget ${url}/gost/gostyj.sh
	bash gostyj.sh
