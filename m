X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2309" "Thursday" "14" "May" "2015" "20:33:38" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150514203338.331e6469@pc1>" "65" "[oss-security] Read heap overflow / invalid memory access in Wireshark" nil nil nil "5" "2015051418:33:38" "[oss-security] Read heap overflow / invalid memory access in Wireshark" (number mark "        hanno@hboeck May 14   65/2309  " thread-indent "\"[oss-security] Read heap overflow / invalid memory access in Wireshark\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15803 invoked by uid 550); 14 May 2015 18:33:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15763 invoked from network); 14 May 2015 18:33:13 -0000
Message-ID: <20150514203338.331e6469@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-2089-1431628381-0001-2"
Date: Thu, 14 May 2015 20:33:38 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Read heap overflow / invalid memory access in Wireshark
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org

--=_zucker.schokokeks.org-2089-1431628381-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/11-Read-heap-overflow-invalid-memory-acces=
s-in-Wireshark-TFPA-0072015.html

The Wireshark parser code for Android Logcat network packages contained
a read heap overflow in the function detect_version().

This issue was reported to the Wireshark developers on May 5th. It was
fixed in the 1.12.5 release of Wireshark, published on May 12th. The
beta release 1.99.5 and the Git head code are not affected.

Appart from this issue Wireshark 1.12.5 fixes seven other security
issues.

https://wireshark.org/docs/relnotes/wireshark-1.12.5.html
Wireshark 1.12.5 Release Notes

https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D11188
Wireshark bug #11188

https://code.wireshark.org/review/#q,commit:afeff4f,n,z
Commit / fix

https://crashes.fuzzing-project.org/TFPA-2015-007-wireshark-heapoverflow-de=
tect_version.pcap
Sample pcap file triggering the overflow (test with tshark -r [input],
can be seen with valgrind or address sanitizer)

http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3815
CVE-2015-3815

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-2089-1431628381-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVVOqCAAoJEKWIAHK7tR5C3fIP+gOxkMiTgXBsf6UpgGmGgBRd
zDlI+e+2xRDZ9IhuCujgharSc+ygSwzQZp0dhuzqsobo0kdRjdbf8ZJbe6LPIuur
4z4CXDInVnmMm59WzzXc44NTjawEoFYGUhDrOH63mnmTGKjavuhU3ciTfO1FswMl
ODO5Pf97YxOXxEI+1MeHWw0oEgOKO+X7ijQzkgruz5w8vZd6SBwVe2BMyOk67APA
x68TnopsgO/UFpChtt5Vh9f5H2cuq4obPD70A6ZRi16nSiIkDTiL1+1nH84Fe0am
vM8HBz/PvPXP2fD6C7iWL915HWUt7EePZhNeaGrgq1cQUxZOvxWailpZFnvJe21B
b178hrJkUC/dr+j20+opje2Q3C/xjxqcQe6o9pnQe1KAqYQRR65jXT9Rem2vMC/s
lWTRIVWeaGC1UuKeVFE9ZO47Av8CMBiMZeZkgFDySw1ugPHcREp9VHAt/7UprdQS
NYe62frgBM0XEsHtioTBpUM76tpN2wBkxI5IcuA1vW3egSTens7TbIVDKQ+HPur7
Qqmp+xlpRR8iofcxmWFZbM93PGfyV7yNQSk+3qzwycE68waZ19GQJ6+LJpqsYGbR
R0bJ8SmKlio7FXzisAvjaiP9QTXpRw+9xLvjHiLDlpEqgJsy/PKt26s3t5ft1uSk
STNB8z0Yb0XY3L9a5Uu8
=cHpV
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-2089-1431628381-0001-2--
