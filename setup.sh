#!/bin/bash
#


# =================================================
#         Script Mod Modified By Prince 
# Command line auto script setup has been updated
# please and hopelly pull an issue if got an error
# =================================================
#               Modified on 24-1-22
# =================================================


red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
blue='\e[1;34m'
NC='\e[0m'

if [ "${EUID}" -ne 0 ]; then
    echo -e "${red}You need to run this script as root user${NC}"
    exit 1
 fi

#run update before start installing ,
#for ensure if forget update
apt-get update -y
apt-get upgrade -y
apt dist-upgrade -y

# install wget and curl
apt -y install wget curl
apt-get install screen -y 

# remove any old and not use 
apt-get autoclean && apt-get autoremove -y

clear
cd
# Checking VPS ( if fresh or used vps before excute another )..
if [[ ! -e /etc/v2ray ]]; then
    echo -e "          ${yellow}Hello Stranger , thanks using my-repo${NC}" 
    echo -e "    ${red}It's seem you have installed kind vpn-script before"
    echo -e "  Auto-Script will remove your current configuration folder"
    echo -e "to avoid problem while auto-script running configuration setup${NC}"
    sleep 5
    rm -rf /etc/v2ray
    cd
    mkdir /etc/v2ray
else
    mkdir /etc/v2ray
fi
if [[ ! -e /var/lib/premium-script/ipvps.conf ]]; then
    echo -e "          ${blue}Hello Stranger , thanks using my-repo${NC}" 
    echo -e "    ${red}It's seem you have installed kind vpn script before"
    echo -e "  Auto-Script will remove your current configuration folder"
    echo -e "to avoid problem while auto-script running configuration setup${NC}"
    sleep 3
    rm -rf /var/lib/premium-script
    echo " system has deleted current /var/lib/premium-script "
    sleep 1
    echo " system create new directory for new auto-script installation"
    sleep 1
    mkdir /var/lib/premium-script
else
    mkdir /var/lib/premium-script
fi
clear
echo -e ""
echo -e "\e[1;104m\e[31m=============================================================================\e[0m"
echo -e ""
echo -e "  ${red}Ensure the Domain is already routed to cloudflare with proxy off${NC}"
echo -e " "
echo -e "  ${yellow}Enter your domain , if you do not currently have a domain"
echo -e "   or not route with cloudflare yet click enter to add again later${NC}"
echo -e ""
echo -e "\e[1;104m\e[31m=============================================================================\e[0m"
echo -e ""
sleep 3
clear
echo -e ""
echo -e "\e[1;104m\e[1;32===================================================================================\e[0m"
echo -e "               ${yellow}Please Enter Domain / Hostname To Start Installation${NC}"
echo -e " If don't have domain you can use IP-ADD instead, but cert v2ray will \e[31mfailed\e[0m issue      " 
echo -e "\e[1;104m\e[1;32===================================================================================\e[0m"
echo -e "\e[1;33m"
read -rp "    Domain/Host: " -e host
echo -e "\e[0m"
domain="$host"
echo "IP=$domain" >> /var/lib/premium-script/ipvps.conf
echo "$domain" >> /etc/v2ray/domain
echo "$domain" >> /root/domain
sleep 2
clear 
echo -e "        ${green}Your Domain / Hostname has been saved${NC}"
echo -e "\e[1;41m==========================================================\e[0m"
echo -e "${yellow}"
echo -e "  The script will start running the installation in 5sec"
echo -e " "
echo -e "   it will take 5 or 6 min to finish , sit back n relax"
echo -e "${NC}"
echo -e "\e[1;41m==========================================================\e[0m"
sleep 3
clear 
cd
GitUser="syapik96"
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn.sh ./ssh-vpn.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/sstp.sh && chmod +x sstp.sh && screen -S sstp.sh ./sstp.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/wg.sh && chmod +x wg.sh && screen -S wg.sh ./wg.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ssr.sh && chmod +x ssr.sh && screen -S ssr.sh ./ssr.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/shadowsocksobfs.sh && chmod +x shadowsocksobfs.sh && screen -S shadowsocksobfs.sh ./shadowsocksobfs.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' /root/ins-vt.sh && screen -S v2ray.sh ./ins-vt.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec.sh ./ipsec.sh
# // Download Data
echo -e "${GREEN}Download Data${NC}"
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/add-ws.sh"
wget -q -O /usr/bin/add-ssws "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/add-ssws.sh"
wget -q -O /usr/bin/add-socks "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/add-socks.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/add-vless.sh"
wget -q -O /usr/bin/add-tr "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/add-tr.sh"
wget -q -O /usr/bin/add-trgo "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/add-trgo.sh"
wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/autoreboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/tendang.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/running.sh"
wget -q -O /usr/bin/cek-trafik "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/cek-trafik.sh"
wget -q -O /usr/bin/cek-speed "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/speedtes_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/cek-bandwidth.sh"
wget -q -O /usr/bin/cek-ram "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/ram.sh"
wget -q -O /usr/bin/limit-speed "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/limit-speed.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-vmess.sh"
wget -q -O /usr/bin/menu-socks "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-socks.sh"
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-trojan.sh"
wget -q -O /usr/bin/menu-trgo "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-trgo.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-ssh.sh"
wget -q -O /usr/bin/menu-bckp "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/bekap-tg.sh"
wget -q -O /usr/bin/menu-bckp "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/menu-bckp-github.sh"
wget -q -O /usr/bin/bckp "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/bckpbot.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/usernew.sh"
wget -q -O /usr/bin/wbm "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/xp.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/update.sh"
wget -q -O /usr/bin/dns "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/dns.sh"
wget -q -O /usr/bin/netf "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/netf.sh"
wget -q -O /usr/bin/bbr "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/bbr.sh"
wget -q -O /usr/bin/del-xrays "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/del-xrays.sh"
wget -q -O /usr/bin/user-xrays "https://raw.githubusercontent.com/arturrohim16-cloud/Blueblue/refs/heads/main/user-xrays.sh"
chmod +x /usr/bin/add-ws
chmod +x /usr/bin/add-ssws
chmod +x /usr/bin/add-socks
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/add-trgo
chmod +x /usr/bin/usernew
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-trafik
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/cek-ram
chmod +x /usr/bin/limit-speed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-socks
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-trgo
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-bckp
chmod +x /usr/bin/bckp
chmod +x /usr/bin/wbm
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/dns
chmod +x /usr/bin/netf
chmod +x /usr/bin/bbr
chmod +x /usr/bin/del-xrays
chmod +x /usr/bin/user-xrays
history -c
echo "2.1" >> /home/ver

clear
figlet -f slant "Installation has Finish  !" | lolcat
sleep 2
clear 
figlet -f slant "Server Will Reboot in 10sec" | lolcat
echo  " "
echo -e "=================-AutoScript VPN-Batch-====================" | lolcat  | tee -a log-install.txt
echo -e "\e[1;31m -----------------\e[0m\e[1;32m[\e[0m \e[1;43m\e[1;31mModified by Prince\e[0m \e[1;32m]\e[0m\e[1;31m------------------\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo -e "    \e[31m[\e[0m\e[1;42m       Service        \e[0m\e[31m]   [\e[0m\e[1;42m   Port   \e[0m\e[31m]\e[0m" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "   - OpenSSH                  : 22,777 X40000" | tee -a log-install.txt
echo "   - SSH-WS Python OpenSSH    : 100," | tee -a log-install.txt
echo "   - SSH-WS Python Dropbear   : 80" | tee -a log-install.txt
echo "   - SSH-WS Python SSL/TLS    : 443" | tee -a log-install.txt
echo "   - OpenVPN-WS Python        : 2099" | tee -a log-install.txt
echo "   - OpenVPN                  : TCP 1194, UDP 2200, SSL 442" | tee -a log-install.txt
echo "   - Stunnel4 SSL/TLS         : 445, 110" | tee -a log-install.txt
echo "   - Dropbear                 : 143,109, 69" | tee -a log-install.txt
echo "   - Squid Proxy              : 3128,8080,8000 (limit to IP Server)" | tee -a log-install.txt
echo "   - Badvpn                   : 7100-7900" | tee -a log-install.txt
echo "   - Nginx                    : 81(port download openvpn config)" | tee -a log-install.txt
echo "   - Wireguard                : 7070" | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN           : 1701" | tee -a log-install.txt
echo "   - PPTP VPN                 : 1732" | tee -a log-install.txt
echo "   - SSTP VPN                 : 5555" | tee -a log-install.txt
echo "   - Shadowsocks-R            : 1443-1543" | tee -a log-install.txt
echo "   - SS-OBFS TLS              : 2443-2543" | tee -a log-install.txt
echo "   - SS-OBFS HTTP             : 3443-3453" | tee -a log-install.txt
echo "   - V2RAY Vmess TLS          : 8443" | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS     : 880" | tee -a log-install.txt
echo "   - V2RAY Vless TLS          : 2083" | tee -a log-install.txt
echo "   - V2RAY Vless None TLS     : 2052" | tee -a log-install.txt
echo "   - Trojan Go                : 2087" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo -e "   >>> \e[1;42mServer Information & Other Features\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - Timezone                : Asia/Singapore (GMT +8)" | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]" | tee -a log-install.txt
echo "   - Dflate                  : [ON]" | tee -a log-install.txt
echo "   - IPtables                : [ON]" | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]" | tee -a log-install.txt
echo "   - IPv6                    : [OFF]" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - Autoreboot On 00.05 GMT +8" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo -e "\e[97m------------\e[0m\e[100m\e[97mCopyright © 2022 \e[1;104mBy Gitub.com/syapik96\e[0m\e[97m-------------\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo -e " Telegram : t.me/PrinceNewbie" | tee -a log-install.txt
echo "" | tee -a log-install.txt
sleep 8
clear 
figlet -f slant "Good Bye By Prince" | lolcat
sleep 2
reboot
