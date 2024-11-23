echo "================================================"
echo " AUTOMATIC 'MANUAL' ENUMERATION"
echo "================================================"

echo ""
echo "Sistema Operativo y Distro"
uname -a
cat /etc/os-release
sleep 5

echo ""
echo "Distribucion de Linux"
lsb_release -a 2>/dev/null || echo "lsb_release"
sleep 5

echo ""
echo "Version del Kernel"
uname -r
sleep 5

echo ""
echo "El tipo de SHELL"
(echo $SHELL)
sleep 5
echo ""
echo "Grupo al que pertenece el usuario"
id
sleep 5

echo ""
echo "Tiempo de Actividad Del Sistema"
uptime
sleep 5

echo ""
echo "Informacion de la red"
ip a
sleep 5
echo ""
echo "Conexiones de red activas"
ss -tuln
sleep 5

echo ""
echo "Interfases en uso"
ifconfig
sleep 5

echo ""
echo "Archivos de Configuracion de Red"
cat /etc/hosts
cat /etc/resolv.conf
sleep 5

echo ""
echo "Binarios con Permisos SUID"
find / -perm -4000 2>/dev/null

echo ""
echo "Comandos que se pueden ejecutar con sudo"
sudo -l

echo ""
echo "Que otros usuarios estan conectados"
w

echo ""
echo "Archivos que pueden ser editados"
find / -path /proc -prune -o -type f -perm -o+w 2>/dev/null

echo "================================================"
echo "               ENUMERATION FINISHED             "
echo "================================================"
