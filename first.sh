printf "\033c"
if [ ! -f centos.txt ]
then
    echo "*************************************************************************************************************"
    echo ""
    echo "*************                         CONSTRUCTOR WEB 'VIM 2.0'                         *********************"
    echo "*************                                                                           *********************"
    echo "*************                    https://VentasImpactantes.com/script                   *********************"
    echo "*************                                                                           *********************"
    echo "*************                               !Bienvenido!                                *********************"
    echo ""
    echo "============================================================================================================="
    echo ""
    echo "                                          ¡A T E N C I Ó N!"
    echo ""
    echo "    Para que este script funcione correctamente, asegúrate de aceptar los términos de Centos7, que es el"
    echo ""
    echo "    sistema que utilizamos para crear las páginas web, ingresa al siguiente enlace y haz clic en el botón:"
    echo ""
    echo "                                            'Accept Terms'"
    echo ""
    echo "    si no ves el botón es porque ya has realizado este paso, luego regresa aquí para continuar..."
    echo ""
    echo ""
    echo "    https://aws.amazon.com/marketplace/server/procurement?productId=b7ee8a69-ee97-4a49-9e68-afaee216db2e"
    echo ""
    echo ""
    echo "============================================================================================================="
    echo ""
    echo -n " * YA ACEPTASTE LOS TERMINOS PARA CENTOS7 EN LA PÁGINA ANTERIOR? (SI/NO): "
    read INPUT
    if [ $INPUT = "s" -o $INPUT = "si" -o $INPUT = "sí" -o $INPUT = "S" -o $INPUT = "SI" -o $INPUT = "SÍ" ]
    then
        touch centos.txt
        sh variables.sh
    else
        printf "\033c"
        echo "*************************************************************************************************************"
        echo ""
        echo "*************                         CONSTRUCTOR WEB 'VIM 2.0'                         *********************"
        echo "*************                                                                           *********************"
        echo "*************                    https://VentasImpactantes.com/script                   *********************"
        echo "*************                                                                           *********************"
        echo "*************                           !Vuelve a Intentarlo!                           *********************"
        echo ""
        echo "============================================================================================================="
        echo ""
        echo "    Para poder continuar, asegúrate de ir a la siguiente página y haz clic en el botón de 'Accept Terms',    "
        echo ""
        echo "    luego vuelve a esta página y ejecuta de nuevo este script escribiendo 'sh sh.sh' y luego enter           "
        echo ""
        echo ""
        echo "    https://aws.amazon.com/marketplace/server/procurement?productId=b7ee8a69-ee97-4a49-9e68-afaee216db2e"
        echo ""
        echo ""
        echo "============================================================================================================="
        exit
    fi
else
    wget -qO variables.sh variables.sh && sh variables.sh
fi

