#/bin/bash
cd ~
wget http://cert.luxoft.com/Luxoft-Root-CA.crt http://cert.luxoft.com/Luxoft-Issuing-CA-G2.crt http://cert.luxoft.com/Luxoft-Issuing-CA.crt
sudo mkdir /usr/share/ca-certificates/luxoft
sudo cp Luxoft-Root-CA.crt Luxoft-Issuing-CA-G2.crt Luxoft-Issuing-CA.crt /usr/share/ca-certificates/luxoft/
sudo dpkg-reconfigure ca-certificate