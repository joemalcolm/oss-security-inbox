X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2372" "Sunday" "26" "April" "2015" "20:31:14" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150426203114.7f951c77@pc1.fritz.box>" "66" "[oss-security] CVE request: Dovecot remote DoS on TLS connections" nil nil nil "4" "2015042618:31:14" "[oss-security] CVE request: Dovecot remote DoS on TLS connections" (number mark "        hanno@hboeck Apr 26   66/2372  " thread-indent "\"[oss-security] CVE request: Dovecot remote DoS on TLS connections\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7594 invoked by uid 550); 26 Apr 2015 18:31:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7572 invoked from network); 26 Apr 2015 18:31:00 -0000
Message-ID: <20150426203114.7f951c77@pc1.fritz.box>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-31688-1430073049-0001-2"
Date: Sun, 26 Apr 2015 20:31:14 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Dovecot remote DoS on TLS connections
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-31688-1430073049-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

The current Dovecot (2.2.16) imap/pop3 server has an issue that
handshake failures will lead to a crash of the login process.

An example where this is triggered is if the server is configured to
not allow SSLv3 connections and a client tries to connect with SSLv3
only.

The reason is that the error handling routine will try to finish the
handshake and that will crash. Details here:
http://dovecot.org/pipermail/dovecot/2015-April/100618.html

I had created a patch, one of the dovecot devs created a more thorough
patch that will probably catch more error states properly:
http://dovecot.org/tmp/diff
(url likely not stable)
Nothing is applied yet I think.

I think this deserves a CVE.


There is a related issue in openssl: It will crash instead of throwing
an error if one tries to use a connection context that already failed.
One could argue that this is not an openssl issue, because apps need to
properly check errors. Matt Caswell has created a patch to let openssl
handle these situations more gracefully:
https://rt.openssl.org/Ticket/Display.html?id=3D3818&user=3Dguest&pass=3Dgu=
est

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-31688-1430073049-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVPS7yAAoJEKWIAHK7tR5C8hQP+gMChyYiSLd8uueJP+E0OQFc
4QwMvan0weZFMBPBRmb8wJxT5kWbd1T3vI0WaIb5oMbbJwi77LtfJy91mCnLzDU/
CqBiMLzdtty7f5g1XYDnFGWMtLEFgPH+SduQhOZbW0SKmoiqYdMKrzJcp1AR9Syt
K+oSPF0LnCQx3Em93xY8/Vx7ZYVzDXIY7CfZ8exWBqeaBsolrJCAtcNSNkwPFS1n
Hz9xicrVweDH6gYx0KCm6b1WLumrpnmICS3xtBR3u1WhVSzbPx1d1NsZ5v9Jjdtt
4rqEu2APLUX87q6Z7vVrawH+KTWc+WttfRT+uaZ6NrFdOn2KRNzyGisO18/SnCCM
NnUtLbdCUi7P2y+XSoilLtjX6mjhskwUIZ2SUkSld5sa3AI6VssHsFwbumcAi9U4
f8F+1QQeqIdS+H1iZUYaG0kTtdOMDAUEuLWQd8/4MxODf1EWtKGKP2JhvmaiPd9x
R16EJ2DSBjGALGvfqfhHnXoruZZA3Ha49S11yMw+fhLRZQvjLxTPcxBqx7tAgPJF
Pi4uU8GOw4NVySz7gVQ6xydxKnQZaptDzdCvbj+TKCjLBE9Kw0xI5slfCWTqB5ZG
4Xb2+iOnu6gbuPit6s+TC/GFZtq8mvHZzW4cJFBgZSbu8bcsK5y9fTY4eVBdu92Z
hfaiOHAJZv8U2KeNjii2
=i+kx
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-31688-1430073049-0001-2--
