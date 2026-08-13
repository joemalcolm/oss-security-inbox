X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/1
Message-ID: <CAAbv5Ga++cZUxX5B+GFbJOUTUis4dP8zJZqnr7t6ocpjuR7c9A@mail.gmail.com>
Date: Wed, 12 Aug 2026 17:37:56 -0700
From: Andrew Tridgell <tridge60@...il.com>
To: oss-security@...ts.openwall.com
Subject: rsync 3.5.0 released with fixes for 33 CVEs
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

We have just released rsync 3.5.0. This release addresses 33 CVEs. For
details of the CVEs see:
https://download.samba.org/pub/rsync/NEWS#3.5.0
The release itself can be downloaded from:
https://rsync.samba.org/
Backport patch sets for 3.2.7 and 3.4.1 were sent to
distros@...openwall.org last week so I expect the distro LTS releases to be
updated soon.
You can get the patches for 3.2.7 and 3.4.1 here:
https://github.com/RsyncProject/rsync/tree/v3.4.1-sec-patches3
https://github.com/RsyncProject/rsync/tree/v3.2.7-sec-patches3

Many thanks to everyone who contributed to this release!
Best regards,
Andrew Tridgell
-----BEGIN PGP SIGNATURE-----
Version: FlowCrypt Email Encryption 8.5.14
Comment: Seamlessly send and receive encrypted email

wsG5BAEBCgBtBYJqfRHjCRAbskmXqFNfb0UUAAAAAAAcACBzYWx0QG5vdGF0
aW9ucy5vcGVucGdwanMub3JnuYSdjc5Oue3p9LlCCksZL6DZfvuHH9aiOMeL
5+VgTQMWIQSf7xEtzhmg3H6ILLgbskmXqFNfbwAAbJUP/0oEtEdZTfDb3zbw
Oz0O2lv4jRyA4qxFz947Y56cP0eBMu4eySOlUeqrhtJXdrtwEh0H1raTs9no
EBRkrTvtmhn+uZhKOgMNFREe3IuXpy8+tNhklN452FDeZoTaUPHVXOq2ibrR
H302JsI7hiCTuVx+A4ShY6ecAkI8PQL6CxRHUGQ9vSldoXB/sgxba46tzVGI
21FZ5ZViQI1ji/w0TlsO0njo58fqauCsG2tsIijxkLgKA6dW3wBilQbM0j9V
UF09cGDqHc2NmrW9TZgLRj7d7CH4T8eQhyBagXpyeP+VedaYDPD+qvSA/Gv7
noVcnY6jZgq58E0v1/UmXN2afeWQLLRxEDVMtgOpNleArpTryXzvTiZy+s4a
rPdnTqJL4kY/krxfj/WQkfV8b3GrxGm+JLZNBvKyH431vxI+UlP+igb3CXwp
eyv46/RjUwDgexYeLBNhCJy1uqdY9UaUmaV6+1cL7isMalnTz4pI7Pb4Cv4b
QqVz17hZ5xw0CI7Fi6qHpSVIViTLlkrkV0ymjKr7bd6dgljj3qUKhM/v9fBw
a80PQ5rkwHlzXNkC1SfPrR/ThRW496uXP0CrfwJigNojj2PpAVglwSvHrQkT
ZCrL0MMqRpH524bnipAMa8uKh+5jgyUa1KlLnuKFL+OBlJzAVY5h7tdNitwt
6gB39jr8
=3uSL
-----END PGP SIGNATURE-----
