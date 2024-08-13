#!/bin/bash

action=$(zenity --width=200 --height=150 --list --title="Escolha uma ação" --column="Ação" "Desligar" "Reiniciar" "Suspender" --hide-header)

case $action in
    "Desligar")
        cinnamon-session-quit --power-off
        ;;
    "Reiniciar")
        cinnamon-session-quit --reboot
        ;;
    "Suspender")
        systemctl suspend
        ;;
    *)
        ;;
esac
