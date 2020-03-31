#! /bin/sh
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

if [ -f .ingress/tf.tfvars ]
then
    ACK="$(cat .ingress/tf.tfvars | grep 'access' | sed -e 's/aws_access_key = //g; s/\"//g')"
    SCK="$(cat .ingress/tf.tfvars | grep 'secret' | sed -e 's/aws_secret_key = //g; s/\"//g')"
	echo "============================================================================================================="
    echo ""
    echo "             Se han encontrado las siguientes credenciales AWS para este perfil                  "
    echo ""
    echo "             ID de Clave de Acceso:   $ACK "
    echo ""
    echo "             Clave de Acceso Secreta: $SCK              "
    echo ""
    echo -n " * DESEAS CREAR UN NUEVO SERVIDOR PARA TU PÁGINA CON ESTAS CREDENCIALES? "
    echo ""
    echo -n " - escribe SI para crear el servidor, o escribe NO para cambiar las credenciales (SI/NO) = "
    read INPUT
    if [ $INPUT = "n" -o $INPUT = "no" -o $INPUT = "N" -o $INPUT = "NO" ]
    then
        rm -f .ingress/tf.tfvars
        wget -qO first.sh https://raw.githubusercontent.com/iversating/vim/master/first && sh first.sh
    else
        wget -qO variables.sh https://raw.githubusercontent.com/iversating/vim/master/variables && sh variables.sh
    fi
else
    wget -qO first.sh https://raw.githubusercontent.com/iversating/vim/master/first && sh first.sh
fi
