cd /ss
wget -O ss.tar.xz https://github.com/shadowsocks/shadowsocks-rust/releases/download/v$SS-VER/shadowsocks-v$SS-VER.x86_64-unknown-linux-gnu.tar.xz
wget -O xp.tar.xz https://github.com/teddysun/xray-plugin/releases/download/v$Xray-plugin-VER/xray-plugin-linux-amd64-v$Xray-plugin-VER.tar.gz
tar -zxvf ss.tar.xz /ss/ssserver
tar -zxvf xp.tar.xz /xp/xray-plugin_linux_amd64
mv xray-plugin_linux_amd64 xray-plugin
chmod +x ssserver xray-plugin

./ss -s :$PORT -m $method -k $passwprd --plugin "./xray-plugin" --plugin-opts "server"