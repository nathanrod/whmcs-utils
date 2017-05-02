# This is a script to create a whmcs addon

addon_type=$1
addon_name=$2

case $addon_type in
    provisioning )
        git clone https://github.com/WHMCS/sample-provisioning-module.git $addon_name
    ;;
    gateway )
        git clone https://github.com/WHMCS/sample-gateway-module.git $addon_name
    ;;
    merchant )
        git clone https://github.com/WHMCS/sample-merchant-gateway.git $addon_name
    ;;
    addon )
        git clone https://github.com/WHMCS/sample-registrar-module.git $addon_name
    ;;
    registrar )
        git clone https://github.com/WHMCS/sample-registrar-module.git $addon_name
    ;;
esac
