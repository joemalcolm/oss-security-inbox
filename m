X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/17/3
Message-ID: <516E713C.5000900@suse.de>
Date: Wed, 17 Apr 2013 11:54:04 +0200
From: Thomas Biege <thomas@...e.de>
To: oss-security@...ts.openwall.com
Subject: debian: gpg --verify suggests entire file was verified, even if file contains auxiliary data
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,
this might possibly need a CVE-ID.
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=704645
https://bugs.g10code.com/gnupg/issue1486


Itself it might be no issue but in conjunction with other applications
this could become a vulnerability.

Bye,
Thomas

- -- 
Thomas Biege <thomas@...e.de>, Team Leader MaintenanceSecurity, CSSLP
SUSE LINUX GmbH, GF: Jeff Hawn, Jennifer Guild, Felix Imendörffer, HRB
21284 (AG Nürnberg)
- --
  Wer aufhoert besser werden zu wollen, hoert auf gut zu sein.
                            -- Marie von Ebner-Eschenbach
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBAgAGBQJRbnE8AAoJEJqHoVJVjr8DBcMH/ic5gyrlMeuFpLQGnSHQ0VEm
pDSSHXG7SHA25y27yXQMof/tofsJtFgoHypjTXoDm7008B/TtUPulgjib7uEujV6
pnrzjkfc///NkEKBMdC/zFd9QrigqTbqYd/Xvy9QhNXieexT50eeMmcJi79rZXbA
5P/wlTTgIHz0KFPTYHgmy+9+qwB+T4eagL2iUH2RdDc15M81EQ4QSlY6+fKHGEfv
UvmN95yqXO68Yb69s/Tet3Hg6zKfBIJH0xyaTrKtIjjCdVjEVCitZqkW8WQGpVYf
4yzu7+4BTbtMWLIiBRHdydHWEu8k9diqXwpbbdxEaj0LVMgkkA1V5G7CYn28Qec=
=WqQL
-----END PGP SIGNATURE-----
