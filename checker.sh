#!/bin/bash

# 1. Definir el nombre del reporte
ARCHIVO_REPORTE="reporte_sistema.txt"

echo "--- INICIANDO CHEQUEO DE SISTEMA ---" > $ARCHIVO_REPORTE
echo "Fecha: $(date)" >> $ARCHIVO_REPORTE

# 2. Revisar conexión a Internet (Ping)
echo "Revisando conexión con Google..."
if ping -c 1 google.com &> /dev/null
then
    echo "Internet: CONECTADO" >> $ARCHIVO_REPORTE
else
    echo "Internet: ERROR DE CONEXIÓN" >> $ARCHIVO_REPORTE
fi

# 3. Revisar memoria RAM libre
echo "Revisando memoria RAM..."
echo "Estado de la Memoria:" >> $ARCHIVO_REPORTE
free -m >> $ARCHIVO_REPORTE

echo "--- CHEQUEO FINALIZADO ---" >> $ARCHIVO_REPORTE
echo "Reporte guardado en $ARCHIVO_REPORTE"
