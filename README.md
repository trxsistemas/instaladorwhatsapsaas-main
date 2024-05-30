DESCARGANDO EL INSTALADOR E INICIANDO LA PRIMERA INSTALACIÓN (USAR SOLO PARA LA PRIMERA INSTALACIÓN):

```bash
sudo apt install -y git && git clone https://github.com/trxsistemas/instaladorwhatsapsaas-main && sudo chmod -R 777 instaladorwhatsapsaas-main && cd instaladorwhatsapsaas-main && sudo ./install_primaria
```

ACCEDIENDO AL DIRECTORIO DEL INSTALADOR E INICIANDO INSTALACIONES ADICIONALES (USAR ESTE COMANDO PARA LA SEGUNDA O MÁS INSTALACIONES):
```bash
cd ./instaladorwhatsapsaas-main && sudo ./install_instancia
```

