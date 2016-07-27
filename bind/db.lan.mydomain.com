$TTL 3600

lan.mydomain.com. IN SOA ns1.lan.mydomain.com. <email>.gmail.com. (
3 ; Serial Number
10800; Refresh after 3 hours
3600; Retry after 1 hour
604800; Expire after 1 week
3600; Negative caching TTL of 1 hour
)


;Name Servers
lan.mydomain.com. IN NS ns1.lan.mydomain.com.

;Mail Exchange Servers

;Host Addresses (A)
localhost.lan.mydomain.com. IN A 127.0.0.1
ns1.lan.mydomain.com. IN A 172.16.1.225
@ IN A 172.16.1.247

;Aliases (CNAME)
*.lan.mydomain.com. IN CNAME lan.mydomain.com.
