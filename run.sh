#!/bin/sh
ulang='y'
while [ $ulang = 'y' ];
do
        echo 'WELCOME TO PANEL NUEE NETWORK'
        echo '[1] Jalankan localhost '
        echo '[2] Jalankan Bot Telegram '
        echo '[3] Creat Voucher '
        echo '[4] Lihat Daftar User '
        echo '[5] Lihat User Aktif '
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
    elif [ $get = '3' ] || [ $get = '03' ];
    then
        cd storage
        cd shared
        cd cli
        cd hotspot
        clear
        php add_profile.php
    elif [ $get = '4' ] || [ $get = '04' ];
    then
        cd storage
        cd shared
        cd cli
        cd hotspot
        clear
        php user.php
    elif [ $get = '5' ] || [ $get = '05' ];
    then
        cd storage
        cd shared
        cd cli
        cd hotspot
        clear
        php user_active.php
    else
        echo 'ERROR: Wrong input..!'
        slep 1
        echo $ulang
    fi
done
