#!/bin/bash

# 1-ci arqument olaraq istifadəçi adının daxil edilib-edilmədiyini yoxlayırıq
if [ -z "$1" ]; then
    echo "İstifadə: $0 <username>"
    exit 1
fi

USER=$1

# ps komandası ilə prosesləri siyahalayırıq:
# -u: Spesifik istifadəçi üçün
# aux: Detallı siyahı üçün
# grep -v: VSZ (5-ci sütun) və RSS (6-cı sütun) dəyəri 0 olanları çıxarır
ps aux | grep "^$USER" | grep -v ' 0     0 '
