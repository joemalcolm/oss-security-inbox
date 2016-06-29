X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2640" "Wednesday" "29" "June" "2016" "09:08:49" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160629090849.1bdac2cc@pc1>" "75" "Re: [oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening" "^Date:" nil nil "6" "2016062907:08:49" "[oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening" (number mark "        hanno@hboeck Jun 29   75/2640  " thread-indent "\"Re: [oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening\"\n") "<87oa6n9nap.fsf@mid.deneb.enyo.de>" ("<87oa6n9nap.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30448 invoked by uid 550); 29 Jun 2016 07:09:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30418 invoked from network); 29 Jun 2016 07:09:06 -0000
Message-ID: <20160629090849.1bdac2cc@pc1>
In-Reply-To: <87oa6n9nap.fsf@mid.deneb.enyo.de>
References: <87oa6n9nap.fsf@mid.deneb.enyo.de>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-10111-1467184136-0001-2"
Date: Wed, 29 Jun 2016 09:08:49 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-10111-1467184136-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 27 Jun 2016 08:08:14 +0200
Florian Weimer <fw@deneb.enyo.de> wrote:

> (There are some other changes whose description suggests they would
> warrant CVE assignment as well, but I have not looked at those.)

This (from CHANGES.md) seems notable and probably deserves a CVE:

-------------
##Side Channel Vulnerability on RSA Cipher Suites
A Bleichenbacher variant attack, where certain information is leaked
from the results of a RSA private key operation has been reported by a
security researcher. The code has been updated to error without
providing any information on the premaster contents.

> Note that other side channel attacks may still be possible as
> MatrixSSL non-FIPS crypto is not always constant-time.
-------------


This also:
-------------
##Access Violation on Malicious TLS Record
TLS cipher suites with CBC mode in TLS 1.1 and 1.2 could have an access
violation (read beyond memory) with a maliciously crafted message.
-------------

This is probably the same bug as described here:
https://web-in-security.blogspot.no/2016/05/curious-padding-oracle-in-opens=
sl-cve.html

Quote
-------------
OpenSSL is not alone. I found a similar problem in the MatrixSSL
library, see
https://github.com/matrixssl/matrixssl/blob/master/CHANGES.md. In that
case, unfortunately, a bad patch of Lucky 13 lead even to a buffer
overread vulnerability.
-------------

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-10111-1467184136-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXc3QBAAoJEKWIAHK7tR5CC0kP/1RstkAgvaZ6fNBTnw/fyM0l
ozAFpgENkmgwfmGt6QT/YtVZ5UBYydFEE8PmA146fo/5wh9LfP0ZxUryUnqsj2Uv
i57hfqckeFWhjB3p1yPNGc9i0vbAn/aaoA7TLM8iaeoK7ILLJdtuXiTDoV5yP217
iUFLjzql8+jaCpdq6YQj45OX5rCNbglxdXxwmyQDphGH6Y8lZUoakTcHDjIDXek3
8vzocS0quT1LDZGHnGigiPJ+LWRroqqPTHWV0zooKTZ0Rwin4fUN/jFqVoLpTiHk
4geQKP+1gtfr42NtQHFOaOWFlqOrAEc3Op8yeRC0eV/UCZ8UD/L2SHn5dZD5eQt8
Z8SIIuLL28+wIQVUmBneibDTTdJohruDovIuhHlveDEWyLLqhIvt2XDW7Mig80DF
lftQWAHa6N7kSGHX2eJnyEPHAcddrSKr4P6nZd51vd4Frd26UIUJmjQ/BtTdz2vi
yNnwgv6JTqQuhNOJsOKb55LgFGDnU6hZsClI3dov5WWGnWwdJEDDcNMb/aBvpDkI
VtCo5BAgyOZFNFLELHBrxo+1wnmpJMI0YEDgmj7+eN16bJCPHl3odFD5vXeeB3RH
dBQ9zyhwysk49N7grw/0+VNzF9ePMrFIIstYmSZIjkGcEFyCJl7ZMmaZmGEWq9pp
fibn4HL+dy2nksgoT/CC
=uW9J
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-10111-1467184136-0001-2--
