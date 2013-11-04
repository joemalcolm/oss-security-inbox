X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/04/23
Message-ID: <20131104123738.57d82ee5.reed@reedloden.com>
Date: Mon, 4 Nov 2013 12:37:38 -0800
From: Reed Loden <reed@...dloden.com>
To: oss-security@...ts.openwall.com
Subject: Re: openssl default ciphers
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The Mozilla opsec guys wrote up some good guidelines recently on what
they consider a good TLS cipher suite choice should be, but even if you
didn't want to go all-out by making the default ultra-secure (with
full PFS, etc.), they explain their choices fairly well, so should be
useful in trying to figure out a middle ground that makes most people
happy.

https://wiki.mozilla.org/Security/Server_Side_TLS

~reed
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (GNU/Linux)

iKYEARECAGYFAlJ4BZJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3Bl
bnBncC5maWZ0aGhvcnNlbWFuLm5ldDZCNTZGOUFDMDdCNjg1RDdEQzQ1NjBEQTZC
QTIyMjI2RjNDMzNENUEACgkQa6IiJvPDPVrsJwCeIw5lo0/5JiV1z0fsz+rGigai
0UYAoMRIc5jKSxKRpd2iM54hwyotLPid
=uOgO
-----END PGP SIGNATURE-----
