# Custom IP whitelist to allow a direct backend connection (e.g. for an API)
# iptables -A INPUT -s IP -j ACCEPT

# Cloudflare IP whitelist
for i in `curl https://www.cloudflare.com/ips-v4`; do iptables -I INPUT -p tcp -m multiport --dports http,https -s $i -j ACCEPT; done
for i in `curl https://www.cloudflare.com/ips-v6`; do ip6tables -I INPUT -p tcp -m multiport --dports http,https -s $i -j ACCEPT; done

# All IP blacklist
iptables -A INPUT -p tcp -m multiport --dports http,https -j DROP
ip6tables -A INPUT -p tcp -m multiport --dports http,https -j DROP

# WARNING: Cloudflare Worker can still access your website