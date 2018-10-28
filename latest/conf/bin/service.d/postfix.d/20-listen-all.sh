go-replace --mode=lineinfile --regex \
    -s '^[\s]*inet_interfaces[\s]*=.*' -r "inet_interfaces = all" \
    -s '^[\s#]*mydestination[\s]*=' -r 'mydestination = $myhostname localhost 127.0.0.1 172.17.0.1 '"$MAILBOX_DOMAIN" \
    -- /etc/postfix/main.cf
