#!/bin/sh
ulang='y'
while [ $ulang = 'y' ];
do
        echo 'WELCOME TO PANEL NUEE NETWORK'
        echo '[1] Jalankan localhost '
        echo '[2] Jalankan Bot Telegram '
        echo '[0] Exit '
        echo -n 'Get: '
        read get;
    if [ $get = '1' ] || [ $get = '01' ];
    then
        cd storage
        cd shared
        cd cli
        clear
        php -S localhost:8080
    elif [ $get = '2' ] || [ $get = '02' ];
    then
        cd storage
        cd shared
        cd cli
        cd Saldo
        clear
        php Core_Saldo_Nonsaldo.php
    elif [ $get = '0' ] || [ $get = '00' ];
    then
       echo 'bye bye.....'
       exit
    else
        echo 'ERROR: Wrong input..!'
        slep 1
        echo $ulang
    fi
done
