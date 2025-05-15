#!/bin/bash

# تحديث وتثبيت الأدوات المطلوبة
pkg update && pkg upgrade -y
pkg install git python nano curl wget -y

# تنزيل وتثبيت المكتبات الأساسية
pkg install figlet toilet cowsay cmatrix -y

# إضافة المظهر والبرمجيات
echo -e "\e[1;33m[Matrix] تم التثبيت بنجاح!\e[0m"

