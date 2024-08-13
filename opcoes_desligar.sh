#!/bin/bash

action=$(zenity --width=200 --height=150 --list --title="Escolha uma ação" --column="Ação" "Desligar" "Reiniciar" "Suspender" --hide-header)

case $action in
    "Desligar")
        systemctl poweroff
        ;;
    "Reiniciar")
        systemctl reboot
        ;;
    "Suspender")
        systemctl suspend
        ;;
    *)
        ;;
esac

