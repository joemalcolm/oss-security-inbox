X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2751" "Monday" "29" "June" "2015" "11:24:04" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150629112404.5a51f079@pc1>" "67" "[oss-security] Courier mail server: Write heap overflow in mailbot tool and out of bounds heap read in imap folder parser" nil nil nil "6" "2015062909:24:04" "[oss-security] Courier mail server: Write heap overflow in mailbot tool and out of bounds heap read in imap folder parser" (number mark "U       hanno@hboeck Jun 29   67/2751  " thread-indent "\"[oss-security] Courier mail server: Write heap overflow in mailbot tool and out of bounds heap read in imap folder parser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32380 invoked by uid 550); 29 Jun 2015 09:23:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32348 invoked from network); 29 Jun 2015 09:23:15 -0000
Message-ID: <20150629112404.5a51f079@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-29918-1435569783-0001-2"
Date: Mon, 29 Jun 2015 11:24:04 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Courier mail server: Write heap overflow in mailbot tool and out of
 bounds heap read in imap folder parser
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org,
  cve-assign@mitre.org

--=_zucker.schokokeks.org-29918-1435569783-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/17-Courier-mail-server-Write-heap-overflow=
-in-mailbot-tool-and-out-of-bounds-heap-read-in-imap-folder-parser.html

Two memory access issues were found in the Courier mail server. These
issues were discovered by compiling the software with Address Sanitizer
(-fsanitize=3Daddress) and running the test suite.

In the file mailboxlist.c, part of the IMAP folder parser, there is a
memcmp call checking whether the fist six bytes of a string match
"SHARED". However the string can be less than six bytes, which will
cause an out of bounds read access. This issue is unlikely to cause
much trouble.

In the mailbot tool (mailbot.c) there is a memory allocation for a
zero-terminated list of pointers. The allocation only reserves one byte
for the zero termination, however it must be the size of the pointer (8
bytes on 64 bit systems). Therefore it causes a write heap overflow of
seven zero bytes. The code parses command line data, therefore it is
unlikely that any attacker controlled input is affected.

Both issues have been reported to Courier's developer Sam Varshavchik
on 27th June 2015 and were fixed with the release of courier 0.75 on
29th June 2015.

Commit / Patch (bundles some unrelated changes, the relevant parts are
in mailbot.c and mailboxlist.c)
https://github.com/svarshavchik/courier-libs/commit/174541a2e670c0ee70fd2fb=
3116209f96ecc173e

Courier 0.75 release announcement
http://sourceforge.net/p/courier/mailman/message/34249147/

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-29918-1435569783-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVkQ60AAoJEKWIAHK7tR5CsUsQAK0ZKB8b1Il5ugkwLryR9M4f
Lro8yZsaWQnJInD0yW8242l8lYkVK4HuYjNW+whIjfDS14rkvZkMZnbz36DEIS/a
TdDXa4fKrFKoHtfSMu5HB01Wd7FjOSCQoT6EQespuVZI65WG7tK0o5fOqoSUHPqm
dOHCAsLWNY9dVgv9H/TySVYGclF6UB0HPMlQkBOlpK83iLv3w5zmIBtFLhB4DJS6
zCacFtJp0IRi3ANASqeuguAgqXCHYqUf74D3gZkELxliMpho7TqmKGj2By+ApxHM
2A+vgNwGNoKU0PtX50ZzJ9f4TnhVzA2nS2kDUYB5s7+2Zu9ogd3Rp7GMfrVt1yn/
KpO6AQRXX1JPg0NDqA0Ya/3CtIFuvbzIgeKaTl2gTzgp9jrPxSf8TZD0VYGtR1EH
QxS9Iq1hsJLbp4CukQwgYHyFoj1R7yiUkdmzufzyDcpo5oQrdAY8acj/hd6RYQR0
rFSMnT/EB7fPhbeW03GU6fpMaSKVkeEcrhQIb+0XinaC2Pq+X6NX9iVWIn5TI3ME
Dn5PmREjmC3BCkA3b3RZZGIS9Pj0AZElkzJJ2dEc5uGvEFZ2dCqiIus00gMe3nFw
DtvhjxPFApK2mPxe2FNyQspjoiaH7sNkgD6Z97Pb5ROmdp+akXo5YHnNcCfB4EOo
890AAy3NFzomf3OEcByu
=RDLa
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-29918-1435569783-0001-2--
