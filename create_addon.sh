# This is a script to create a whmcs addon

addon_type=$1
addon_name=$2

case $addon_type in
    provisioning )
        rm -rf $addon_name
        rm -rf /tmp/$addon_name
        git clone https://github.com/WHMCS/sample-provisioning-module.git /tmp/$addon_name
        cp -r /tmp/$addon_name/modules/servers/provisioningmodule $addon_name
        mv $addon_name/provisioningmodule.php $addon_name/$addon_name.php       
        sed -i -- "s/provisioningmodule_/${addon_name}_/g" $addon_name/$addon_name.php
    ;;
    gateway )
        git clone https://github.com/WHMCS/sample-gateway-module.git $addon_name
    ;;
    merchant )
        git clone https://github.com/WHMCS/sample-merchant-gateway.git $addon_name
    ;;
    addon )
        rm -rf $addon_name
        rm -rf /tmp/$addon_name
        git clone https://github.com/WHMCS/sample-addon-module.git /tmp/$addon_name
        cp -r /tmp/$addon_name/modules/addons/addonmodule $addon_name
        mv $addon_name/addonmodule.php $addon_name/$addon_name.php
        sed -i -- "s/addonmodule_/${addon_name}_/g" $addon_name/$addon_name.php

    ;;
    registrar )
        git clone https://github.com/WHMCS/sample-registrar-module.git $addon_name
    ;;
esac
