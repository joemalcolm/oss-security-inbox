X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2105" "Friday" "11" "March" "2016" "11:09:54" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160311110954.7e04e562@pc1>" "58" "[oss-security] ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters" nil nil nil "3" "2016031110:09:54" "[oss-security] ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters" (number mark "U       hanno@hboeck Mar 11   58/2105  " thread-indent "\"[oss-security] ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13436 invoked by uid 550); 11 Mar 2016 10:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13397 invoked from network); 11 Mar 2016 10:10:01 -0000
Message-ID: <20160311110954.7e04e562@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-13557-1457690989-0001-2"
Date: Fri, 11 Mar 2016 11:09:54 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman
 parameters for TLS even if user sets manual parameters
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-13557-1457690989-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

The ProFTPD daemon supports TLS encrypted connections via the mod_tls
module. This module has a configuration option
TLSDHParamFile
to specify user-defined Diffie Hellman parameters.

Versions older than 1.3.5b / 1.3.6rc2 had a bug that would cause the
software to ignore the parameters and use Diffie Hellman key exchanges
with 1024 bit:
http://bugs.proftpd.org/show_bug.cgi?id=3D4230

The release notes[1] are confusing, as they mention only problems with
keys smaller than 2048 bit, but I was also able to reproduce this issue
with 4096 bit keys. But anyway, it is fixed in the latest versions for
all key sizes I have tested.

As 1024 bit DH is considered dangerously small these days and breakable
by a powerful attacker I think this should be considered a security
vulnerability.

[1] http://proftpd.org/docs/RELEASE_NOTES-1.3.5b

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-13557-1457690989-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJW4plyAAoJEKWIAHK7tR5CexwQAMCl/xmTfbKqYKVHTV2fifpi
OGrcRSyBLxbgCKibQTkt93m+wlsVX3Uzk4ry3vL60S839AyxU7NGOuw/QZmgE02x
wAFOaDvoI9RrvO7aTp6tNj3Y1Q6gnKwXF5Qy3swmqG8I+lKg5a+NXxyAdeNH+tt0
Gjq01SdhJo8WEM5Yequ3TEFMPCnnoom+eJSr39NhfqeA/wv0yxa+FN09eAG+/rVo
W+CTzySjwzihCNEYsPGl0eXJcsSNNrRWeDld2SKRCvJarVTTGViZZkGN+3Vt7fmm
FZk6slvpOAEeOsfihmhNzgNB14M86A0/KDASvcWUNg6PQJlTrfM7xA6lG/aYzZ9s
QALqSyIUMeqI9p4/81rFNEZsyv561Wfgls/kjv3tRe0AZySlfrrmH/jQs4qCMwDK
UuZA9LFTbYtoLSh7r7/K2e+PEebttndzAIAlNBQxQTwmVCaFB5VHV4iiZ+O9Yorq
NZ5g9I3aaWm7FLCNmu0ru+NfC8ErC5+JWClyvl5sr91G/595WQnPioPcMxN+GNP/
E0HVEFpmmMGQCyzjI6KSRCTN4mol5W8vKNMOaNk2PvPTGcVQxaB6Ko3s/3esrsOo
4O+kamk1N9pPqFKjwgcmraJteGl3NaFVyup+dJW+WDkBR25EB1WIHj/YFC4ZNMW5
iRn3DtspzDiTqMMXVASd
=mVKf
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-13557-1457690989-0001-2--
