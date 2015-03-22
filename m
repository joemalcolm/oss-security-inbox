X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2141" "Sunday" "22" "March" "2015" "14:26:23" "-0400" "Donald Stufft" "donald@stufft.io" "<E4715122-7EC8-430E-AF3B-09CA87F50684@stufft.io>" "66" "Re: [oss-security] Assign a CVE for Python's restkit Please" nil nil nil "3" "2015032218:26:23" "[oss-security] Assign a CVE for Python's restkit Please" (number mark "        donald@stuff Mar 22   66/2141  " thread-indent "\"Re: [oss-security] Assign a CVE for Python's restkit Please\"\n") "<A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>" ("<A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12228 invoked by uid 550); 22 Mar 2015 18:26:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12210 invoked from network); 22 Mar 2015 18:26:35 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=stufft.io; h=
	x-sasl-enc:subject:mime-version:content-type:from:in-reply-to
	:date:cc:message-id:references:to; s=mesmtp; bh=wNX4J+JaLrlF7eIA
	KBfEBP6PzmE=; b=1cTT3AQzcDPM79WuZgx7ttftAC0CA7r6MVwqORjyH7kfAJVa
	B+A6ZLcHdh4BibgbZIDUqYUu0Opibl0ozj3aw59XwgGK0AIclpINy+CC7BeNfi+S
	YOm6FqOsOwHdYQrbtoegohnEd4l/vCn7pWGTZsj8YlFRpglVd82wCxsgDZ4=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=x-sasl-enc:subject:mime-version
	:content-type:from:in-reply-to:date:cc:message-id:references:to;
	 s=smtpout; bh=wNX4J+JaLrlF7eIAKBfEBP6PzmE=; b=ccj8OSk3yD/EebkTk
	KkVOytzuht2vsYCyuwk1In2pIVEH7Q6gvsDe66srB7uOt6wsxmvfKMkleIZhdtCF
	XLxzCwvtqBjdbhWQq4pMvly+/FYZUkUHgXjEgkSHiBHHAJ04vAYJVA1ZFIKUubYz
	ZVL36tFsHlRSiR4cBomvRKG5Mk=
X-Sasl-enc: IlOtTJl7dY9amox7vjhXuyj8FMY/oejmXv9gCRrSnY9E 1427048784
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
Content-Type: multipart/signed; boundary="Apple-Mail=_4034A9D4-D548-40AA-998C-80676AEFD815"; protocol="application/pgp-signature"; micalg=pgp-sha256
X-Pgp-Agent: GPGMail 2.5b6
In-Reply-To: <A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>
Message-Id: <E4715122-7EC8-430E-AF3B-09CA87F50684@stufft.io>
References: <A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>
X-Mailer: Apple Mail (2.2070.6)
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Sun, 22 Mar 2015 14:26:23 -0400
From: Donald Stufft <donald@stufft.io>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign a CVE for Python's restkit Please
To: oss-security@lists.openwall.com

--Apple-Mail=_4034A9D4-D548-40AA-998C-80676AEFD815
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Mar 12, 2015, at 11:03 AM, Donald Stufft <donald@stufft.io> wrote:
>=20
> Pythons Restskit[1][2][3][4] does not properly validate TLS
> (see https://github.com/benoitc/restkit/issues/140). It appears to simply=
 use
> ssl.wrap_socket from the standard library, which does not do any validati=
on
> by default. This can be verified by doing:
>=20
>>>> from restkit import request
>>>> r =3D request("https://tv.eurosport.com/")
>>>> r.body_string()
>    '<HTML><HEAD>...'
>=20
> Can a CVE be assigned for this?
>=20
>=20
> [1] https://github.com/benoitc/restkit
> [2] https://pypi.python.org/pypi/restkit
> [3] http://restkit.readthedocs.org/en/latest/
> [4] https://benoitc.github.io/restkit/index.html
>=20
> ---
> Donald Stufft
> PGP: 7C6B 7C5D 5E2B 6356 A926 F04F 6E3C BCE9 3372 DCFA
>=20

Ping?

---
Donald Stufft
PGP: 7C6B 7C5D 5E2B 6356 A926 F04F 6E3C BCE9 3372 DCFA


--Apple-Mail=_4034A9D4-D548-40AA-998C-80676AEFD815
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJVDwlPAAoJEG48vOkzctz60QEP/2FZWUwwrB6egxvCcpnWihSC
qLeisbB4L0TGSiGffAmx1ydvdbLffEqlUX6CBOQ/y/bqWdSY7Uvg+2ukGItXHEBt
eiKnTpjfqNpPhxPNpo5aNNqnZ8Rwm+/Skylb5qmLunmkwrpYTrn9ebbg5t5gSs7w
5xgaImNCx1uiBi+EJqpAl42bv13m5eZd30/z+1TzF8+Vjr7qLYn3OhXLp61+oaKL
HtSYYjee1UTYuTtrux7mu7wr9NqG0ULky0oVeYxormdKkZmFfI+Nf6IBPK7me50v
KkyAWD2bjwvBuofa7UEjvGD2ye29L8WcFomgq5fjkbHJ6XAP1+XKakjUpoZo8WwK
EP2UlMXJ2WMtFL/F0AWDLNlNJpfNL/QMc9gRxdyMKVYd5P5gtfJ6+ScsHYwulMyO
pheL2oWlcF122hbzwtRp0pmKQ7pF40eHjbBIL14+rtwPIZCtAq/TVYRbRy1YWr/U
XkbRnvnimKkODXLVvIFgthoMmUiDuj59wETU1NUrGxHpUC55G40fkSXjFasddaOk
ilsTP4/ukVRXvp7tUm3qoQZa+Q7MmxPgkDe32Ry+1k3vsnVSvbyWPeQ+1vyL1OIS
cjrUfrl2U0n7thbhfAzmCCOdgQU63mvGP9BU/ID8m1PxyfcMIkSqJdfq9eBuDIDm
rWuCvVdR+3lQdSi0Y53m
=hTvm
-----END PGP SIGNATURE-----

--Apple-Mail=_4034A9D4-D548-40AA-998C-80676AEFD815--
