#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese la contraseña para el usuario Deploy y la Base de Datos (No use caracteres especiales):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el enlace de GITHUB de WhatsCRM que desea instalar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Indique un nombre para la Instancia/Empresa que será instalada (No use espacios ni caracteres especiales, utilice letras minúsculas; ):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Reporte la cantidad de conexiones/Whats que la ${instancia_add} podrás registrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Informe la cantidad de usuarios/agentes que la ${instancia_add} podrás registrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Dígite el dominio del FRONTEND/PANEL para la ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Introduce el dominio del BACKEND/API para la ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduce el puerto del FRONTEND para la ${instancia_add}; Ejemplo: 3000 a 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto del BACKEND para esta instancia; Ejemplo: 4000 a 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_redis_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto de REDIS/AGENDAMIENTO MSG para la ${instancia_add}; Ejemplo: 5000 a 5999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " redis_port
}

get_empresa_delete() {
  
  print_banner
  printf "${WHITE} 💻 Introduce el nombre de la instancia/empresa que será eliminada (introduce el mismo nombre que cuando lo instalaste):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_delete
}

get_empresa_atualizar() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el nombre de la instancia/empresa que deseas actualizar (ingresa el mismo nombre que cuando la instalaste):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_atualizar
}

get_empresa_bloquear() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el nombre de la instancia/empresa que deseas bloquear (ingresa el mismo nombre que cuando la instalaste):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_bloquear
}

get_empresa_desbloquear() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el nombre de la instancia/empresa que deseas desbloquear (ingresa el mismo nombre que cuando la instalaste):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_desbloquear
}

get_empresa_dominio() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el nombre de la instancia/empresa para la cual deseas cambiar los dominios (ten en cuenta que para cambiar los dominios necesitas ingresar ambos, aunque solo vayas a cambiar uno):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_dominio
}

get_alter_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el NUEVO dominio del FRONTEND/PANEL para la ${empresa_dominio}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_frontend_url
}

get_alter_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el NUEVO dominio del BACKEND/API para la ${empresa_dominio}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_backend_url
}

get_alter_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto del FRONTEND de la instancia/empresa ${empresa_dominio}; El puerto debe ser el mismo que se proporcionó durante la instalación ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_frontend_port
}


get_alter_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto del BACKEND de la instancia/empresa ${empresa_dominio}; El puerto debe ser el mismo que se proporcionó durante la instalación ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_backend_port
}


get_urls() {
  get_mysql_root_password
  get_link_git
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_redis_port
}

software_update() {
  get_empresa_atualizar
  frontend_update
  backend_update
}

software_delete() {
  get_empresa_delete
  deletar_tudo
}

software_bloquear() {
  get_empresa_bloquear
  configurar_bloqueio
}

software_desbloquear() {
  get_empresa_desbloquear
  configurar_desbloqueio
}

software_dominio() {
  get_empresa_dominio
  get_alter_frontend_url
  get_alter_backend_url
  get_alter_frontend_port
  get_alter_backend_port
  configurar_dominio
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bienvenido al administrador de instalación de TRX SISTEMAS, seleccione a continuación la próxima acción!${GRAY_LIGHT}"
  printf "Contacto: +55 14 98169-3982"
  printf "\n\n"
  printf "   [0] Instalar WhatsCRM\n"
  printf "   [1] Actualizar WhatsCRM\n"
  printf "   [2] Eliminar WhatsCRM\n"
  printf "   [3] Bloquear WhatsCRM\n"
  printf "   [4] Desbloquear WhatsCRM\n"
  printf "   [5] Alter. dominio WhatsCRM\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    0) get_urls ;;

    1) 
      software_update 
      exit
      ;;

    2) 
      software_delete 
      exit
      ;;
    3) 
      software_bloquear 
      exit
      ;;
    4) 
      software_desbloquear 
      exit
      ;;
    5) 
      software_dominio 
      exit
      ;;        

    *) exit ;;
  esac
}


