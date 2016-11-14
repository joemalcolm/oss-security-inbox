X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/14/9
Message-ID: <346ddf0f760c46afbf449b57d983a533@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 13:38:49 -0500
From: <cve-assign@...re.org>
To: <ml@...kweb.net>
CC: <cve-assign@...re.org>, <oss-security@...ts.openwall.com>
Subject: Re: CVE request: Jenkins remote code execution vulnerability
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> An unauthenticated remote code execution vulnerability was discovered in the
> Jenkins continuous integration and continuous delivery automation server.
> A serialized Java object transferred to the Jenkins CLI can make Jenkins
> connect to an attacker-controlled LDAP server, which in turn can send a
> serialized payload leading to code execution

> SECURITY-360
> https://www.deepsec.net/speaker.html#PSLOT250
> https://groups.google.com/d/msg/jenkinsci-advisories/-fc-w9tNEJE/GRvEzWoJBgAJ

Use CVE-2016-9299.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKgMyAAoJEHb/MwWLVhi2+8oP/iLya15YFTRIbVFuxyzuANEG
vlfWPWWVW2mfhcdgOn93b8yEQRmQ84If3dKg4zseNVjAow7/i1nkuJi1OldEDOP8
/CKgbqDQtsULut+DG5T1zrJHFEUr5TADqhGZbE655WYUBrr9oy8yUew6FCYH15Ln
FD0ARaAPtJBoQBZnq0x78hvupF9ijHc4Sc3npCI9zeZyPDCwQ3pUJE3PYwCllRkQ
x5UuKjOBSwJQQcsDIxWuy+r1WjMxjkIoTKxCyqyxzsw/TsV9EVLsSRefNpJZK3G4
0vb8L1fggJSyPWRKfULQCK3HHmZwMpJH+75wWE8qoSxlF6O/3N0VNouSHyNrWphI
0vffAcCM+yLEzoMmCYkc/HAcLWqxHh1DWs2vadzmgXLCD5SsqhsS28cStNK6Hws3
AH4GOQqg+PCAplTuUNNqgccY9DGvt9u+p38yVF6TzrdKcp8njYPBrpAAhi84LV6A
0XI/9LhTpWBIbelxFGnX6SlIQwMqV6dHJGOdkP1842g5mZYI3nYktgBIpCW6NVsk
8aAUgKtYh6rx3eHQztPpKSt6Rg/C3UeGC3JWpZ5ezFgiGbaZ+bGf2/OMmWb/rHmC
PnPvLFfz+CroC86xweByLtEE5ZC9NBUmmvIuEM7cfRMEbqmnJYYdJqZghAs3nLD5
84K/xajQ/Jf83/QE1An1
=FuwO
-----END PGP SIGNATURE-----
