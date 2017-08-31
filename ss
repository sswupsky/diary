地址：https://github.com/shadowsocks
Shadowsocks for Windows： https://github.com/shadowsocks/shadowsocks-windows.git
CentOS：
yum install python-setuptools && easy_install pip
yum install m2crypto
pip install shadowsocks

vi /etc/shadowsocks.json
{
"server":"ip",   #服务器地址
"server_port":xxxxx,          #端口号
"local_address":"127.0.0.1",
"local_port":1080,
"port_password":"xxxxxx", #密码
"timeout":300,
"method":"aes-256-cfb",  #加密方式
"fast_open":false
}
esc ：wq

下面是多端口配置：
{
 "server":"my_server_ip",
 "local_address": "127.0.0.1",
 "local_port":1080,
  "port_password": {
     "443": "mypassword",
     "444": "mypassword"
 },
 "timeout":300,
 "method":"rc4-md5",
 "fast_open": false
}

在前台运行：
ssserver -c /etc/shadowsocks.json

在后台运行：
ssserver -c /etc/shadowsocks.json -d start
ssserver -c /etc/shadowsocks.json -d stop

配置防火墙
# 安装防火墙
yum install firewalld
# 启动防火墙
systemctl start firewalld

开启防火墙相应的端口
# 端口号是你自己设置的端口
firewall-cmd --permanent --zone=public --add-port=443/tcp
firewall-cmd --reload

安装BBR进行网络加速
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh

chmod +x bbr.sh

./bbr.sh

uname -r  #输入命令，查看是否有内核4.9.0内核，有就说明更换内核了。
