#!/bin/bash

while :
    do 
        echo "Автор - Мындрул Артём"
        echo "Программа для архивации и разархивации"
        echo "Выберите режим работы:"
        echo "1 - архивация"
        echo "2 - извлечение из архива"
        echo "3 - выход"
        read doing
        case $doing in
        1)
            echo "Укажите каталог архива:"
            read path
            echo "Укажите имя архива:"
            read name
            tar -cvzf $name $path;;
        2)
            echo "Укажите имя архива:"
            read archname
            tar -xvzf $archname;;
        3)
            exit 0;;
        *)
            echo "Введено неправильное действие."
        esac
    done