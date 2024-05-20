Received: (qmail 20244 invoked by uid 550); 20 May 2024 11:59:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30619 invoked from network); 20 May 2024 09:42:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail; t=1716198162; x=1716457362;
	bh=EZp+H4SW0wZoj4LEy+UeZli7yebRyjOJ6sQLxSGbbKY=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=dcd7RzhpYUzdeM27jr4tyClQE6PEsmncD/4IslvRnT9ohXmSmpiBg01SI5E498AvP
	 78HJzWH7bE3F4es+D60rT5uQEVy+W4yn9YPpHzafXLB2DfW77nteqIHy4fUFUa/kdw
	 QsjuYDHcVqSicYWGSParDyfsXazbK70X7vkjs0oKFwO4uDMpDpoqD4BioFsPgm+X96
	 UZdvROQRSWZULxEyoKNbPjTaG7+CQBguIeZwVHZOgA2aE6xwqU4Zww8Y5ZHroOtEIm
	 X4RNOGx4XfBkYAEsd16L/R2TgJ+6eGRGHjmBY30W7X9aOWV4gLJwiFAEJL9kGVAr62
	 ArXzCICeXEOkA==
Date: Mon, 20 May 2024 09:42:38 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Message-ID: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: 25d4a1045fba5cd8b043867ab99ce5d3d783cb62
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------8bd1592706eb5cb66b520a7c68c7619d637e5234a036780ea1abab67b80af04c"; charset=utf-8
Subject: [oss-security] Article: State of Sandboxing in Linux

--------8bd1592706eb5cb66b520a7c68c7619d637e5234a036780ea1abab67b80af04c
Content-Type: multipart/mixed;boundary=---------------------5c291565e01ddeb848052e4e8db936ae

-----------------------5c291565e01ddeb848052e4e8db936ae
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hello list,

I want to share an article I wrote on Linux Sandboxing:
https://git.sr.ht/~alip/syd/tree/main/item/doc/toctou-or-gtfo.md

There's nothing new in there except something I discovered on Landlock whic=
h may be a bug or a feature.
TL;DR Landlock allows you to chdir into a directory that's not allowlisted.=
 That's it though, you can
not list/read anything in there so I'd not say this is anything more than a=
 potential info leak (as in
you discovered the dir existed). That said, I am not quite sure.

Very small PoC for those who do no want to read the article:
(-plib turns all seccomp sandboxing off so we apply a very simple landlock =
sandbox
only allowing /usr, busybox is static linked)

=E2=87=92 syd -plib -msandbox/lock:on -m allow/lock/read+/lib -m allow/lock=
/read+/usr busybox sh
~/src/syd/syd-3 $ cd /tmp
/tmp $ busybox ls
ls: can't open '.': Permission denied
/tmp $

I could enter /tmp although that's not allowlisted by Landlock.

Best regards,
Ali Polatel

PS: Initially I've sent this e-mail using the wrong e-mail address (was not=
 subscribed
to the list), so this is a resend. I apologize if you end up receiving it t=
wice.=

-----------------------5c291565e01ddeb848052e4e8db936ae
Content-Type: application/pgp-keys; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmdR
SmRSWUpLd1lCQkFIYVJ3OEJBUWRBbjlaVnJMbi9tclpseThqTE9qVklwTmRW
SXhTSVZ4WmUKL2ZDeDZpcTNPM1hOSVdGc2FYQkFhR1Y0YzNsekxtOXlaeUE4
WVd4cGNFQm9aWGh6ZVhNdWIzSm5Qc0tNCkJCQVdDZ0ErQllKbUJBbDFCQXNK
QndnSmtCY2phUTFHWTNTNkF4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QgpGaUVF
d2kycDNrbUo2K2VhOUErdEZ5TnBEVVpqZExvQUFFaDlBUUNVRlB2YytPL1Fz
YzdpVDF0STcvMTAKakJWaklPa2xyL01DU2lzZ2w0SzRqQUQvZkRaejVuVStq
bzBmcjh3QXNLdFU0M1UrVWd5alVuNHhuczVQCnVzcFViZy9PT0FSbUJBbDFF
Z29yQmdFRUFaZFZBUVVCQVFkQXFrait2ejdsbjQyNmhmQS9wSWZzelJKbQpW
WHpLc1VJOWJQd3dqZEdQUlNRREFRZ0h3bmdFR0JZS0FDb0ZnbVlFQ1hVSmtC
Y2phUTFHWTNTNkFwc00KRmlFRXdpMnAza21KNitlYTlBK3RGeU5wRFVaamRM
b0FBTHNMQVAwWUVEUkw1OVdiUndSTFdpN0RlRjY2ClRCSzZtdmZGeG5maG9r
M3JKSU1lWXdFQTZGNi85c1J6SzJqbExCRk9kbHluZGdZbEpxUFVpZk1CZGU5
ego2QkZFY1FnPQo9NFhXSgotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9D
Sy0tLS0tCg==

-----------------------5c291565e01ddeb848052e4e8db936ae--

--------8bd1592706eb5cb66b520a7c68c7619d637e5234a036780ea1abab67b80af04c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmZLGvYJkBcjaQ1GY3S6FiEEwi2p3kmJ6+ea9A+tFyNpDUZj
dLoAAFhkAP0QNXHfy/4ya33EtMkJ7ddUCdQcr0+7w0mnfchtBRAw7wD+MAeM
xphEJtjpohf1VdT3kyaTKcvDK6QVh7niThdDpwM=
=AuC+
-----END PGP SIGNATURE-----


--------8bd1592706eb5cb66b520a7c68c7619d637e5234a036780ea1abab67b80af04c--

