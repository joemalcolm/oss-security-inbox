X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/10/30/3
Message-ID: <5f3a1c2215eb23adf527755ef7b49111332b63e1.camel@powerdns.com>
Date: Wed, 30 Oct 2019 12:10:20 +0100
From: Peter van Dijk <peter.van.dijk@...erdns.com>
To: oss-security@...ts.openwall.com
Subject: Python-3.5.8.tar.xz does NOT contain the fix for bpo-38243
Content-Type: text/plain; charset=utf-8

Hello,

Python 3.5.8 is supposed to contain a fix for bpo-38243, as mentioned
at 
https://docs.python.org/3.5/whatsnew/changelog.html#python-3-5-8-final

It turns out python.org has accidentally shipped 3.5.8 without that
fix, if you pick tar.xz instead of .tgz. Please find attached the email
I have sent them.

I'm reporting this to oss-security so that no downstream distributors
accidentally ship the wrong 3.5.8. I have also reported it directly to
FreeBSD at https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=241586 as
they are the only distribution I could think of that still actually
ship vanilla Python 3.5.

Kind regards,
-- 
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

Return-Path: <peter.van.dijk@...erdns.com>
Delivered-To: peter.van-dijk@...n-xchange.com
Received: from mx1.open-xchange.com ([10.20.30.1])
	by imap.open-xchange.com with LMTP
	id uDmGGWNiuV0GQAAA3c6Kzw
	(envelope-from <peter.van.dijk@...erdns.com>)
	for <peter.van-dijk@...n-xchange.com>; Wed, 30 Oct 2019 11:13:55 +0100
Received: from localhost (localhost.localdomain [127.0.0.1]) by
 mx1.open-xchange.com (Postfix) with ESMTP id 4C33D6A4C4 for
 <peter.van-dijk@...n-xchange.com>; Wed, 30 Oct 2019 11:13:55 +0100 (CET)
Received: from [127.0.0.1] (helo=localhost)
	by localhost with ESMTP (eXpurgate 4.11.2)
	(envelope-from <peter.van.dijk@...erdns.com>)
	id 5db96249-36c4-7f000001272a-7f000001a316-2
	for <peter.van-dijk@...n-xchange.com>; Wed, 30 Oct 2019 11:13:55 +0100
X-Virus-Scanned: Debian amavisd-new at
Received: from mx1.open-xchange.com ([127.0.0.1])
	by localhost (mx1.open-xchange.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOiKq44emixZ for <peter.van-dijk@...n-xchange.com>;
	Wed, 30 Oct 2019 11:13:53 +0100 (CET)
Received: from tmpmail.powerdns.com (tmpmail.powerdns.com [128.199.32.142])
 by mx1.open-xchange.com (Postfix) with ESMTP id 918896A4D7 for
 <peter.van-dijk@...n-xchange.com>; Wed, 30 Oct 2019 11:13:53 +0100 (CET)
Authentication-Results: open-xchange.com; dmarc=none (p=none dis=none)
 header.from=powerdns.com
Authentication-Results: open-xchange.com; spf=none
 smtp.mailfrom=peter.van.dijk@...erdns.com
Received: by tmpmail.powerdns.com (Postfix)
	id 70DE36FCD4; Wed, 30 Oct 2019 06:13:53 -0400 (EDT)
Delivered-To: peter.van.dijk@...erdns.com
Received: from localhost (localhost [127.0.0.1])
	by tmpmail.powerdns.com (Postfix) with ESMTP id 6DA256D94C
	for <peter.van.dijk@...erdns.com>; Wed, 30 Oct 2019 06:13:53 -0400 (EDT)
Received: from tmpmail.powerdns.com ([127.0.0.1])
	by localhost (tmpmail.powerdns.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TxrYRF4JAPjV for <peter.van.dijk@...erdns.com>;
	Wed, 30 Oct 2019 06:13:52 -0400 (EDT)
Received: from mx4.open-xchange.com (alcatraz.open-xchange.com
 [87.191.39.187]) by tmpmail.powerdns.com (Postfix) with ESMTPS id
 BC3916012B for <peter.van.dijk@...erdns.com>; Wed, 30 Oct 2019 06:13:52
 -0400 (EDT)
Received: from open-xchange.com (imap.open-xchange.com [10.20.30.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx4.open-xchange.com (Postfix) with ESMTPS id D050C6A27B;
	Wed, 30 Oct 2019 11:13:50 +0100 (CET)
Received: from plato (178-85-74-105.dynamic.upc.nl [178.85.74.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by open-xchange.com (Postfix) with ESMTPSA id B2E2E3C03A4;
	Wed, 30 Oct 2019 11:13:50 +0100 (CET)
Message-ID: <8e3418e156a0219b465f4d44a39992eae1461386.camel@...erdns.com>
Subject: Python-3.5.8.tar.xz does NOT contain the fix for bpo-38243
From: Peter van Dijk <peter.van.dijk@...erdns.com>
To: security@...hon.org
Date: Wed, 30 Oct 2019 11:13:46 +0100
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-89ZuX8Lu7biPtx4O5nFK"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-purgate-ID: 151428::1572430435-000036C4-3D49F046/0/0
X-purgate-type: clean
X-purgate-size: 1871
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean


--=-89ZuX8Lu7biPtx4O5nFK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

a user (jmr, name of Joshua Root) on #python (IRC) reported that md5
and size for one of the tarballs at=20
https://www.python.org/downloads/release/python-358/ was wrong, and
indeed, this is true for the .xz.

Upon closer inspection, it turns out the .xz was released without the
fix for bpo-38243, that is mentioned at=20
https://docs.python.org/3.5/whatsnew/changelog.html#python-3-5-8-final

Given that distributors may have already picked up the .xz, I suggest
releasing a corrected 3.5.9.

Kind regards,
--=20
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

--=-89ZuX8Lu7biPtx4O5nFK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQJQBAABCgA6FiEE+64DI4IcdwalyhUb3PUT+n7tGfMFAl25YlocHHBldGVyLnZh
bi5kaWprQHBvd2VyZG5zLmNvbQAKCRDc9RP6fu0Z8+dpD/9P/a89LVeIiGEH19zv
JdI5eDGdapxApkaP1vtApFVRruy3QRY6kQQU4CiBUz+mLklzTDWjKKtME1Ru0UN8
eKwe9gALqvF5nvcoakZyPJfjXvP0ROD4zXumsIwGtvg/MG/Z+0uqMfcNEGZrV9tU
I3vI2ilpsOsh+c8zsdaRRayPbCPuoOzXuiGAMHaVysczocYkEXXW6U2O7EeHbT8q
gcyhsrPFpipOpqdmX/b3rayjID2cUV3Wi8hJkre5YGWwaFQ1jPL94E+yQ0OP/D85
kQnz0SbtG7GKGMGc/lUHt1fi+N17IaWNfYg9H/vqlIOQ1s/nbfqUcCcdk5MAa9nr
LqN/LGtojBF7PD06vh+/uR1CRK3MOl1odYL/JHEHG13tf9ksZPUFJuHYy0jt5luW
P3eUIBkt4SBuY2Ey/3KN2UEFnvIpEaosbHRrq9Suy2tdHbE2faa2tkG2NJdwPgpE
loY0I3MKAqQMoNk/PS4MPoNHilqee5xRJDyxyhCph4/SHBmOdsxL4tzyCxKydPRX
GCa9eORb9aAUK3Q8RZ058crgZmH7vyd6aGiOB9jhLmbGLPi5mAseeep/59uZmGQK
9Lv1lij+8FmP/QOsZ2jIESIA6yZeTcWRUhcbXLd3MJMxU/EY7Tdv0XhDTHycEKDL
ScAmFxHobt/gxZXwyJulkNlVcQ==
=y9Mo
-----END PGP SIGNATURE-----

--=-89ZuX8Lu7biPtx4O5nFK--



Download attachment "signature.asc" of type "application/pgp-signature" (915 bytes)
