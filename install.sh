clear

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/gellany_tools"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python3
else
    INSTALL_DIR="/usr/share/doc/gellany_tools"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[◉] A directory fsociety was found! Do you want to replace it? [Y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/gellanyhassan0/gellany_tools.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/gellany_tools.py" '${1+"$@"}' > gellany_tools.py;
chmod +x gellany_tools;
sudo cp gellany_tools /usr/bin/;
rm gellany_tools;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Tool istalled with success![✔]";
    echo "";
    echo "[✔]====================================================================[✔]";
    echo "[✔] ✔✔✔  All is done!! You can execute tool by typing gellany_tools !   ✔✔✔ [✔]";
    echo "[✔]====================================================================[✔]";
    echo "";
else
    echo "[✘] Installation failed![✘] ";
    exit
fi
