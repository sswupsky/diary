地址：https://github.com/shadowsocks
Shadowsocks for Windows： https://github.com/shadowsocks/shadowsocks-windows.git
CentOS：
yum install python-setuptools && easy_install pip
yum install m2crypto
pip install shadowsocks

vi /etc/shadowsocks.json
{
"server":"45.77.101.212",   #服务器地址
"server_port":443,          #端口号
"local_address":"127.0.0.1",
"local_port":1080,
"port_password":"xxxxxx", #密码
"timeout":300,
"method":"aes-256-cfb",  #加密方式
"fast_open":false
}
esc ：wq
