$TTL    604800
@       IN      SOA     mydomain.com. admin.mydomain.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;

; name servers - NS records
        IN     NS         ns1.mydomain.com.

mydomain.com.       IN         A       xxx.xxx.xxx.xxx
ns1                 IN         A       xxx.xxx.xxx.xxx

;Aliases (CNAME)
*          IN            CNAME          mydomain.com.




