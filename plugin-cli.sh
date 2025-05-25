#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
pwdd=`pwd`
# Mảng chứa danh sách các plugin
# "") install_and_activate_plugin "";;
plugins=('Litespeed cache'
"SpeedyCache Pro"
"Elementor Pro"
"Wordfence"
"Really simple SSL"
"Anti-Malware Security"
"Redis cache"
"Better search replace"
"Query monitor"
"Fastest cache"
"Solid Security Pro"
"WPMU Dev Dashboard"
"SEO by Rank Math Pro"
"Elements Kit"
"Sitepress Multilingual CMS"
"Seedprod"
"WP Staging Pro"
"Astra Theme"
"Astra Child Theme"
"Astra Addon Plugin"
"Astra Premium Sites"
"Thoát")

#################################################################################

# Hàm cài đặt và kích hoạt plugin
install_and_activate_plugin() {
    plugin_url=$1
    wp plugin install "$plugin_url" --activate --allow-root
}
# Hàm cài đặt và kích hoạt Theme
install_and_activate_theme() {
    plugin_url=$1
    wp theme install "$plugin_url" --activate --allow-root
}

#################################################################################

while true; do
    # Hiển thị menu chọn lựa
    PS3="Chọn plugin để cài đặt (hoặc 0 để thoát): "
    select plugin_name in "${plugins[@]}"; do
        case $plugin_name in
            "Litespeed cache") install_and_activate_plugin litespeed-cache ;;
            "SpeedyCache Pro") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/speedycache-pro.zip" ;;
            "Elementor Pro") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/elementor-pro-3.28.2.zip" ;;
            "Wordfence") install_and_activate_plugin wordfence ;;
            "Really simple SSL") install_and_activate_plugin really-simple-ssl ;;
            "Anti-Malware Security") install_and_activate_plugin gotmls ;;
            "Redis cache") install_and_activate_plugin redis-cache ;;
            "Better search replace") install_and_activate_plugin better-search-replace ;;
            "Query monitor") install_and_activate_plugin query-monitor ;;
            "Fastest cache") install_and_activate_plugin wp-fastest-cache ;;
            "Solid Security Pro") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/ithemes-security-pro-8.5.6.zip" ;;
            "WPMU Dev Dashboard") install_and_activate_plugin "https://tainguyenwp.azdigi.com/wordpress-plugin-wpmudev/881630_wpmu-dev-dashboard-4.11.26.zip" ;;
            "SEO by Rank Math Pro") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/seo-by-rank-math-pro.zip" ;;
            "Elements Kit") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/elementskit-3.6.9.zip" ;;
            "Sitepress Multilingual CMS") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/sitepress-multilingual-cms.4.7.4.zip";;
            "Seedprod") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/seedprod-coming-soon-pro-5-6.18.16.zip";;
            "WP Staging Pro") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Plugins-Other/wp-staging-pro.zip";;
            "Astra Theme") install_and_activate_theme "https://tainguyenwp.azdigi.com/WordPress-Astra/Theme/astra.4.11.0.zip";; 
            "Astra Child Theme") install_and_activate_theme "https://tainguyenwp.azdigi.com/WordPress-Astra/Theme/astra-child.zip";;
            "Astra Addon Plugin") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Astra/Plugin/astra-addon-plugin-4.8.11.zip";;
            "Astra Premium Sites") install_and_activate_plugin "https://tainguyenwp.azdigi.com/WordPress-Astra/Plugin/astra-premium-sites-4.4.19.zip";;
            "Thoát") echo "Thoát chương trình.";
            rm -f ${pwdd}/plugin-cli.sh;
            exit ;;
            #"Thoat") echo "Thoát chương trình."; exit ;;
            *) echo "Lựa chọn không hợp lệ. Hãy chọn lại." ;;
        esac
        break
    done
done
