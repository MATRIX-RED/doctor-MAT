#!/bin/bash

# استخراج اسم الأداة من الجملة
input=$(echo "$1" | tr '[:upper:]' '[:lower:]')
tool_name=$(echo "$input" | grep -oP '(?<=اداة )\K[^\"]+')

if [ -z "$tool_name" ]; then
  echo -e "\e[1;31m[GPTmAT] ⚠️ لم يتم تحديد اسم الأداة بشكل صحيح.\e[0m"
  echo -e "\e[1;33mمثال: GPTmAT \"قم ب تتبيث اداة nmap\"\e[0m"
  exit 1
fi

# محاولة التثبيت
echo -e "\e[1;36m[GPTmAT] 🔍 جاري البحث عن الأداة: \e[1;33m$tool_name\e[0m"
echo -e "\e[1;36m[GPTmAT] ⚙️ محاولة التثبيت عبر apt...\e[0m"

sleep 1
pkg install "$tool_name" -y

# تحقق من نجاح التثبيت
if [ $? -eq 0 ]; then
  echo -e "\e[1;32m[GPTmAT] ✅ تم تثبيت الأداة ($tool_name) بنجاح.\e[0m"
else
  echo -e "\e[1;31m[GPTmAT] ❌ فشل التثبيت. قد تكون الأداة غير متوفرة في المستودع.\e[0m"
fi

