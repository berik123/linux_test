2. Разверните виртуальную машину для управления сертификатами. Инструкция в репозитории в файле create_gcloud_server 
    Установите и настройте Easy-RSA.
    Сгенерируйте корневой сертификат, сертификаты и ключи для VPN-сервера и клиентов.
    Организуйте структуру хранения ключей и сертификатов.
    Управление сертификатами клиентов
   
1. Создание и настройка VPN-сервера (vpn-server-01). Инструкция в репозитории в файле  openvpn.txt 
    Разверните виртуальную машину с помощью Google Cloud CLI.
    Установите OpenVPN, настройте файрвол и сетевые параметры.
    Подготовьте OpenVPN серверные файлы конфигурации и ключи (включая ta.key).
    Настройте правила iptables для маршрутизации и безопасности.
    Перенесите ключи и сертификаты с Easy-RSA сервера.
    Создание и настройка Easy-RSA сервера (easy-rsa)

3. Сгенерируйте и подпишите ключи для клиентов. Инструкция в репозитории в файле clients.txt
    Создайте удобный клиентский конфигурационный файл (*.ovpn) с использованием скрипта make_config.sh.
    Перенесите клиентский конфигурационный файл на локальное устройство для подключения.
4. Созадние и настройка Prometheus в файле prometheus.txt

5. Для более быстрого развертывания можно использовать deb пакеты, инструкция в файле deb.txt
