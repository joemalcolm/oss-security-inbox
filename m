X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2081" "Thursday" "7" "May" "2015" "10:39:06" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150507103906.117b4304@pc1>" "57" "Re: [oss-security] CVE request: Dovecot remote DoS on TLS connections" nil nil nil "5" "2015050708:39:06" "[oss-security] CVE request: Dovecot remote DoS on TLS connections" (number mark "        hanno@hboeck May  7   57/2081  " thread-indent "\"Re: [oss-security] CVE request: Dovecot remote DoS on TLS connections\"\n") "<554B1F35.9080600@mittwald.de>" ("<20150426203114.7f951c77@pc1.fritz.box>" "<554B1F35.9080600@mittwald.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7630 invoked by uid 550); 7 May 2015 08:38:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7612 invoked from network); 7 May 2015 08:38:46 -0000
Message-ID: <20150507103906.117b4304@pc1>
In-Reply-To: <554B1F35.9080600@mittwald.de>
References: <20150426203114.7f951c77@pc1.fritz.box>
	<554B1F35.9080600@mittwald.de>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-24334-1430987914-0001-2"
Date: Thu, 7 May 2015 10:39:06 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Dovecot remote DoS on TLS
 connections
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-24334-1430987914-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 7 May 2015 10:15:49 +0200
Sven Kieske <s.kieske@mittwald.de> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
> On 26/04/15 20:31, Hanno B=C3=B6ck wrote:
> > The current Dovecot (2.2.16) imap/pop3 server has an issue that=20
> > handshake failures will lead to a crash of the login process.
>=20
> Do you happen to know in which version this vulnerability got
> introduced?

2.2.14.
But things are comlicated: There was some breakage in 2.2.13 regarding
TLS so some distros (I know this from Gentoo) backported some TLS
related patches to 2.2.13, therefore you could also see it there.

Also, you'll probably only see this with SSLv3 disabled. (at least
that's the only situation where this particular crash in openssl can be
triggered, but there may be other codepaths affected by that problem)

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-24334-1430987914-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVSySqAAoJEKWIAHK7tR5C6PIQAJtq/JllxajwFMI6dy4ZPJ7Q
y8kxwz6J9Sl8jBJ3A5fMww56hLLEK16OrSGMbSXRF5/sG8C5tbodrnLEBLSKQkkA
iEECnGVhxGCb+EoGUIZPFs1bVXusVIQ93+W5dvVBq3yY4F7aAKp4e7MreUfKwMuU
RCBZZsZ1nim6PAR62SrvdRq1YXHFG5CtWvpseZn87bMcAn1bgDzjctNusxEqPajH
1hswAo7xwzu3cTKZPDBEdolKxeA2BmkSeqt5LS2ivKH8mCQB0eBGIXH8j4dNXEdy
RDamTRW96pZ1iAUgYaWuV7o7/T0LNRrQQMlUP8forLApIK2OHq1JT4g+088VqsnV
zqDnrp1T8GpNTlawpGuIKZ777UHAMMKWIsiOSXIsbu+kWP8v6kv3viYsSvR8njvT
pyF3xTbv0aJNJ3w1HUdN1wuyqFjqgjGgDNQMid1UnTOfdHVdvptArcZf45vqeVih
C+VtWXuu0auOZ9W6dDcFAdxBKgblU+O+HGltNJmAAmsBa7R4Ra8/ZuOWPjxpFfc4
4/ypOq8Q4DR2FOXArjWqv44XQmoQuNAErhog6Y69ABaTtVA3fFboGmIEMwf8kL5a
9Sl5p4Z9DBAqrhouHCTHtYJ40aWUQdcaVEdyZDgBbpNRDXyBXSA2SW+bWCiZc62M
fq83na9ImkMv7ClVhQzY
=R5DP
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-24334-1430987914-0001-2--
