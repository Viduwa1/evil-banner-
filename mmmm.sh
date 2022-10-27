r='\e[1;31m'
g='\e[1;32m'
y='\e[1;33m'
b='\e[1;34m'
p='\e[1;35m'
lb='\e[1;36m'


echo
echo -e $b "██████╗       ██████╗  █████╗ ███╗  ██╗███╗  ██╗███████╗██████╗"
echo -e $b "██╔══██╗      ██╔══██╗██╔══██╗████╗ ██║████╗ ██║██╔════╝██╔══██╗"
echo -e $r "██████╔╝ ████╗██████╦╝███████║██╔██╗██║██╔██╗██║█████╗  ██████╔╝"
echo -e $b "██╔═══╝  ╚═══╝██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝  ██╔══██╗"
echo -e $b "██║           ██████╦╝██║  ██║██║ ╚███║██║ ╚███║███████╗██║  ██║"
echo -e $b "╚═╝           ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚══╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝"

echo -e $r "                                     Tool by - viduwa"

echo -e $y "What is Your Banner name ? : \c"
read Bname 
echo
echo -e $y "What is Your name ? : \c"
read name

echo "cowsay -f eyes "$name" | lolcat " > name.txt
echo "figlet "$Bname" | lolcat " > Bname.txt
echo "clear" > clear.txt
echo "ps1='\$ '" > temp.txt

#remove old files
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc

cat "clear.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "name.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc

cat "clear.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "name.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

rm -rf name.txt Banner.txt clear.txt Temp.txt
echo
figlet Finish | lolcat
echo -e $r "Please Restart Your Termux"