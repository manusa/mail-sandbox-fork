go-replace --mode=lineinfile --regex \
    -s '^[\s]*inet_interfaces[\s]*=.*' -r "inet_interfaces = all" \
    -- /etc/postfix/main.cf