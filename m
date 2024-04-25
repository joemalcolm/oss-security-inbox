Received: (qmail 24063 invoked by uid 550); 25 Apr 2024 16:20:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20132 invoked from network); 25 Apr 2024 16:11:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sotecware.net;
	s=seq2-up1; t=1714061455;
	bh=iVMQQN2uX2gDT3xUI1R1LGO98AvFdL88y9dVExh3lQk=;
	h=From:To:Subject:Date;
	b=dClBRwQ4/bjSFw4Gwf7CGbR2pJ439m5A6+KYHnJhbvB3mxwkEVwVPbQ8NYHchX9N8
	 5m32p6u9Pq56ruGfzDzmcYX2ztFxnq9lQW9dOevERZXQiR4W0f3WQkJaLdHMZClQer
	 aii7e2KEOC5IQetIe+4x7U6BfVvUVLsWFd6yC/vNMuH17tSczsWtIpbIJ9I+5P2Lkr
	 jUhUyrkYsZxXYadObsSzBnMUf5zu3AW5LuLxp6qMcIAUrUkgpKniB2Km9xYWDTbiFr
	 lXdIvbGmS0tYO2uUK7+4AhL+PhsirbB+18p2ozLnU6lFHHSzyED/foWbdHRjNAURkm
	 ScHlIPA8ctefQ==
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <j.wielicki@sotecware.net>
To: oss-sec <oss-security@lists.openwall.com>
Date: Thu, 25 Apr 2024 18:10:54 +0200
Message-ID: <5222127.EKZ5pzy0G1@sinistra.local>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9237794.vijd6lq7cA";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Clacks-Overhead: GNU Terry Pratchett
Subject: [oss-security] libksieve (used by kmail/kontact) sent password as username

--nextPart9237794.vijd6lq7cA
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <j.wielicki@sotecware.net>
To: oss-sec <oss-security@lists.openwall.com>
Subject: libksieve (used by kmail/kontact) sent password as username
Date: Thu, 25 Apr 2024 18:10:54 +0200
Message-ID: <5222127.EKZ5pzy0G1@sinistra.local>
Mime-Version: 1.0

Hello list,

Managesieve is a protocol to configure the email filtering system Sieve via 
TCP/IP. It is typically authenticated just like IMAP is. The managesieve 
client implementation in KDE (libksieve) had a bug which used the password as 
username.

That exposed the password in plaintext server logs, as usernames are commonly 
logged on failed login attempts.

This bug has existed for several years and made it into multiple Debian 
releases. It has only recently been fixed upstream [1] and even more recently 
been fixed in Debian [2] (stable package updates still pending). As this bug 
has been documented in the internet at various places [3] [4] but I haven't 
seen any mention of it here yet, I thought sharing it here made sense.

As far as I know, no CVE has been allocated for this.

kind regards,
Jonas

   [1]: https://invent.kde.org/pim/libksieve/-/commit/
6b460ba93ac4ac503ba039d0b788ac7595120db1
   [2]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1069163
   [3]: https://bugs.kde.org/show_bug.cgi?id=437858
   [4]: https://www.reddit.com/r/kde/comments/151xq9r/comment/jsavmds/
--nextPart9237794.vijd6lq7cA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEG/EPV+Xzd5wEoQQIwGIDJZdiWIoFAmYqgI4ACgkQwGIDJZdi
WIr9NQ/+LUUgFk9TKTKv3du2PxDkFqCJSIDGYJWdMMl7X6GpwJ+XwtEsT1tBPvzs
pSI1Kj+Z7J4QZ1UITu2wcuKjkODSATMSsHl+GbaFQ/PgXWHFQYLkNWncW5/9/un8
5I1XlWSoExjIBQf1Ocs/CM0dt5v/HBN3gl+LO96uX1THsRkwfsM1gbalvbKRBdaX
uw99qWZEIdbldlqZSBjZzPkGmglSMMJf4JKMyVXRStPEohpo+EFRWjp0NHTHfndt
e4IHaQac9N7TAULjfNs8JNwq5fOBM7CkdY1n+aKJ88kyX4zbN2ssRP8EBCcoOoMS
RI+eth50rVkj/NhXrgeLCdSdZjSEd7uqrKxvTvts51x0hfII/nAJ7DiBm+O+Kx80
YIEnNsqvYj1OCif+EcA+Q2FTW6iRZ46w9frGlmrJksPDcHkXMz+bsN+2cwBGiN/P
KJ/Syl80oWUxbl2YB3qYt6SvW6tiQxe/HiyjAtLineJSG3HJ6mEj2EItnlud2TnS
puJUod2hcUrsx7j4Lt+XiOLN6tnbjaSAwXtqfn2vp6pBLK2Sz6Gnk1ew22qKutAa
CCBosMWiOFt6YTy7ENXcydQXz83Z8sddh9XDf7b+SqnmAFkOrFlk7CPk1INTAuYG
8ZR6aL7AjAXFwOeHISGiAExndKaq2Ttw7Yy4TScG7xlHjLNMnEE=
=2FoC
-----END PGP SIGNATURE-----

--nextPart9237794.vijd6lq7cA--



