#! /bin/sh
rm archivos.sh check.sh first.sh terraform.sh variables.sh pem.sh terraform.tfstate -f
printf "\033c"
echo "*************************************************************************************************"
echo ""
echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
echo "***********                                                                           ***********"
echo "***********                    https://ventasimpactantes.com/script                   ***********"
echo "***********                                                                           ***********"
echo "***********                            ! A T E N C I Ó N !                            ***********"
echo ""
cd
rm -f ls.txt
ls >> ls.txt
DOMTK="$(cat ls.txt | grep '.tk')"
DOMCOM="$(cat ls.txt | grep '.com')"
rm -f ls.txt
if [ -d "$DOMTK" ]
then
    echo "================================================================================================="
    echo ""
    echo "           Al parecer ya se ha creado una servidor para '$DOMTK' "
    echo ""
    echo "           Este script solo funciona para una servidor por cuenta a la vez.  "
    echo ""
    echo "           Si deseas eliminar este servidor y así poder crear uno nuevo, ejecuta" 
    echo ""
    echo "                                      sh destroy.sh (enter)                          "
    echo ""
    echo "           ESTE PROCESO ES ¡ I R R E V E R S I B L E ! "
    echo "           EJECUTELO SOLO SI ESTAS SEGURO DE ELIMINAR EL SERVIDOR Y LA PÁGINA '$DOMTK'    "
    echo ""
    echo "           para soporte y asesoría escríbenos a script@ventasimpactantes.com                               "
    echo ""
    echo "================================================================================================="
    echo ""
    exit
else
    continue
fi
cd
rm -f ls.txt
ls >> ls.txt
DOMTK="$(cat ls.txt | grep '.tk')"
DOMCOM="$(cat ls.txt | grep '.com')"
rm -f ls.txt
if [ -d "$DOMCOM" ]
then
    echo "================================================================================================="
    echo ""
    echo "           Al parecer ya se ha creado una servidor para '$DOMCOM' "
    echo ""
    echo "           Este script solo funciona para una servidor por cuenta a la vez.  "
    echo ""
    echo "           Si deseas eliminar este servidor y así poder crear uno nuevo, ejecuta" 
    echo ""
    echo "                                      sh destroy.sh (enter)                          "
    echo ""
    echo "           ESTE PROCESO ES ¡ I R R E V E R S I B L E ! "
    echo "           EJECUTELO SOLO SI ESTAS SEGURO DE ELIMINAR EL SERVIDOR Y LA PÁGINA '$DOMCOM'    "
    echo ""
    echo "           para soporte y asesoría escríbenos a script@ventasimpactantes.com                               "
    echo ""
    echo "================================================================================================="
    echo ""
    exit
else
    continue
fi
wget -qO check.sh https://raw.githubusercontent.com/iversating/vim/master/check
sh check.sh
