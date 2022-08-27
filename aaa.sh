#!/bin/bash
#
###################################################################
#uso: ./FiveserverLinuxInstall.sh						                      #
#								                                                  #
#descrição: script auxiliar Instalaçao dependencias Fiveserver .	#
#								                                                  #
#autor: Pedro henrique					                                  #
#creditor: juce e edwards						                              #
###################################################################
#
#
echo " ############################################### "
echo " ***** Fiveserver Pes 6 Linux dependencias ***** "
echo " ############################################### "
echo
echo
echo "Buscando no Sistema python3"
echo -n "."
sleep 1
echo -n "."
sleep 1
echo -n "."
sleep 3

ls /usr/bin/ | grep python3 > /dev/null
veriPy=$(echo $?)

if [[ $veriPy == 0 ]]; then
  echo "python3 encontrado com sucesso! "
else
  echo " nao encontrado , requer python3 Para prosseguir !"
  exit
fi
echo
echo
echo "Instalando dependencias para lib python , favor inserir password caso solicitar!"
echo
echo
sudo apt-get -y update
sudo apt-get install libmysqlclient-dev python3 python3-venv python3-dev gcc make
echo
echo
echo -n "Verificando dependencias pip."
sleep 1
echo -n "."
sleep 1
echo -n "."
sleep 1
echo -n "."
echo
echo
echo "Instalando Banco MySql-server...."
echo
sudo apt-get install mysql-server
sudo apt-get install php-mysql
echo
echo
echo "Instalando bibliotecas com pip "
echo
echo
pip install mysqlclient
pip install PyYAML
pip install twisted==20.3.0
pip install pyOpenSSL
pip install pycrypto
pip install zope.interface
pip install service-identity
echo
echo
echo
echo
echo "Instalado com sucesso ! "
