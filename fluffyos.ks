# Genel ayarlar
lang en_US.UTF-8
keyboard us
timezone Europe/Istanbul --isUtc
rootpw --plaintext 123
user --name=fluffy --password=123
auth --useshadow --passalgo=sha512
selinux --enforcing
firewall --enabled

# Paketler
%packages
@workstation-product-environment
gnome-tweaks
%end

# Kurulum sonrası özelleştirme
%post --log=/root/ks-post.log
mkdir -p /usr/share/backgrounds/fluffyOS
cp -r /run/install/repo/assets/* /usr/share/backgrounds/fluffyOS/
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/fluffyOS/FluffyOSBackground.png"
%end
