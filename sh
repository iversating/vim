#! /bin/sh
rm destroy.sh credenciales.sh apply.sh archivos.sh centos.txt first.sh terraform.sh variables.sh terraform.tfstate -f
printf "\033c"
echo "*************************************************************************************************************"
echo ""
echo "*************                         CONSTRUCTOR WEB 'VIM 2.0'                         *********************"
echo "*************                                                                           *********************"
echo "*************                    https://VentasImpactantes.com/script                   *********************"
echo "*************                                                                           *********************"
echo "*************                               !Bienvenido!                                *********************"
echo ""
echo ""
cd
rm -f ls.txt
ls >> ls.txt
DOMTK="$(cat ls.txt | grep '.tk')"
DOMCOM="$(cat ls.txt | grep '.com')"
rm -f ls.txt
if [ -d "$DOMTK" ]
then
	echo "============================================================================================================="
    echo ""
    echo "             Al parecer ya se ha creado una página en $DOMTK, si deseas borrar                  "
    echo ""
    echo "             y eliminar todo el contenido de esta página web, ejecuta 'sh destroy.sh'                          "
    echo ""
    echo "             ESTE PROCESO ES IRREVERSIBLE, EJECUTELO SOLO SI ESTAS SEGURO DE ELIMINAR TU PÁGINA              "
    echo ""
    echo "             para soporte y asesoría escríbenos a script@ventasimpactantes.com                               "
    echo ""
	echo "============================================================================================================="
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
    echo "============================================================================================================="
    echo ""
    echo "             Al parecer ya se ha creado una página en $DOMCOM, si deseas borrar                  "
    echo ""
    echo "             y eliminar todo el contenido de esta página web, ejecuta 'sh destroy.sh'                          "
    echo ""
    echo "             ESTE PROCESO ES IRREVERSIBLE, EJECUTELO SOLO SI ESTAS SEGURO DE ELIMINAR TU PÁGINA              "
    echo ""
    echo "             para soporte y asesoría escríbenos a script@ventasimpactantes.com                               "
    echo ""
	echo "============================================================================================================="
    echo ""
    exit
else
    continue
fi
wget -qO check.sh https://raw.githubusercontent.com/iversating/vim/master/check
sh check.sh
