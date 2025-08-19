Received: (qmail 7357 invoked by uid 550); 19 Aug 2025 15:50:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30386 invoked from network); 19 Aug 2025 12:05:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail3; t=1755605147; x=1755864347;
	bh=LoR5AKZyv6IbzT80939a+vWnk+BualcFLHMKwXFdUyA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=URoMh4ARxeVfBRpgNCGxFIMlX7vX5aukauw03983PAdQ0uRrDhS6Lv4siX9kFIeBZ
	 4u0W382qJf+QehJbCw1UmBU7AqySUQTMLfKCl38Iup02Apx65DOfxeprdX2twU9jpe
	 i2aVqAAUJDkCyktWVhO3a05BpLzZjfKR+OwgQiYKib7OBxQiSlqPblUh90u3IY0mER
	 Ca9MG0hycbBPHTEauQAcHJ23rLvyq5n78SFWgSSdR+A2/7KxT0JVJIdPs5Rf/Qfgfa
	 LhOxfjI3yxhh5ZQXj5eChLfNRHK908O/AEOqlqr90YpIhmYO9hEDLwQQ4lYyhLKA3L
	 saRiFJ1mAgTCQ==
Date: Tue, 19 Aug 2025 12:05:40 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Cc: "David A. Wheeler" <dwheeler@dwheeler.com>, Vincent Lefevre <vincent@vinc17.net>
Message-ID: <f6K0A_kST8iSTV9cEJTcRN9oJcT2JeOo4rQUZEzWIfeTp1hdOgs5XR0ZRhpdXHwrVzcbbup6mfvyOZ2rwQiciWRAoC7Hx0Iy1HCiP1CekLw=@hexsys.org>
In-Reply-To: <a6370d77-36a6-4b26-85a8-4fc8d2354cf3@gmail.com>
References: <20250813203857.GA11693@unix-ag.uni-kl.de> <87a53zyugg.fsf@gmail.com> <20250817010958.GA607521@qaa.vinc17.org> <20250817140937.GA16226@unix-ag.uni-kl.de> <B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com> <a6370d77-36a6-4b26-85a8-4fc8d2354cf3@gmail.com>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: 4cb0d89508058dd9026e29f7006023567f71c0da
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------201ea4389f60e11c706405970fb52576ec383d5be4db2e38afec2b1a4805a48c"; charset=utf-8
Subject: Re: [oss-security] blocking weird file names (was: xterm terminal crash due to malicious character sequences in file name)

--------201ea4389f60e11c706405970fb52576ec383d5be4db2e38afec2b1a4805a48c
Content-Type: multipart/mixed;boundary=---------------------1c968f8309187b178ac255c298b8906d

-----------------------1c968f8309187b178ac255c298b8906d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Tuesday, 19 August 2025 at 04:46, Jacob Bachmeyer <jcb62281@gmail.com> w=
rote:

> On 8/17/25 20:44, David A. Wheeler wrote:
>=20

> > [...]
> >=20

> > I proposed forbidding such characters to POSIX. They *did* add a few me=
chanisms to POSIX
> > to make it somewhat easier to handle filenames with control characters
> > (e.g., find -print0 and xargs -0). However, although they do not *requi=
re*
> > that operating systems allow these filenames, they are not forbidden ei=
ther.
>=20

> My understanding is that POSIX allows almost any syscall to return EPERM.
>=20

> > I have a draft Linux Security Module (LSM) that lets you determine
> > what kind of filenames are allowed to be created. By default it would r=
equire
> > non-control-chars, no leading '-', no trailing ' ', and UTF-8 encoding,
> > but it would let you configure further. I intend to go back to that
> > to finish it off & propose it. My original proposal merely prevented cr=
eation;
> > it would be possible to hide them entirely, but that comes with its own=
 issues.
>=20

> If you do that, please make absolutely certain that any processes running=
 from files that would be hidden (and therefore blocked from exec(2)) are k=
illed when the policy becomes effective. I once (years ago) cleaned out a b=
ackdoor that was named 'syslogd ' (with the trailing space). (Clever, excep=
t that the real syslogd does not open a raw socket and *does* open the log =
files...)
>=20

> Also, if you want to block trailing whitespace, please do not forget the =
various *other* Unicode space characters and their UTF-8 forms.
>=20

> Could you allow those files to appear in directory listings (including st=
at(2)) but open(2)/exec(2)/etc. would return EPERM? I suggest that unlink(2=
) should be unrestricted, and perhaps also open(..., O_WRONLY) (to allow su=
ch files to be shredded if the admin desires).
>=20

> Would a per-process category be feasible? This would allow an admin to "u=
nlock" any such files found for a limited subset of processes (presumably t=
he admin's shell) to facilitate forensic collection and/or secure deletion.

You may also consider the syd sandbox for an unprivileged, per-process solu=
tion
which has filename limitations since version 3.17.4, see:
https://man.exherbo.org/syd.7.html#Enhanced_Path_Integrity_Measures

I noticed syd's implementation, which is largely based on Safename LSM of M=
r. Wheeler (huge thanks!),
does not include any checks for Unicode space characters. I'll look into im=
proving that.
Thank you very much for the idea!

> Does this need to be an entirely new module or could it be an extension t=
o SELinux?
>=20

>=20

>=20

> -- Jacob
>=20

>=20


Best,
alip=

-----------------------1c968f8309187b178ac255c298b8906d
Content-Type: application/pgp-keys; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmdRSmRSWUpLd1lCQkFI
YVJ3OEJBUWRBbjlaVnJMbi9tclpseThqTE9qVklwTmRWSXhTSVZ4WmUKL2ZDeDZpcTNPM1hOSVdG
c2FYQkFhR1Y0YzNsekxtOXlaeUE4WVd4cGNFQm9aWGh6ZVhNdWIzSm5Qc0tNCkJCQVdDZ0ErQllK
bUJBbDFCQXNKQndnSmtCY2phUTFHWTNTNkF4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QgpGaUVFd2ky
cDNrbUo2K2VhOUErdEZ5TnBEVVpqZExvQUFFaDlBUUNVRlB2YytPL1FzYzdpVDF0STcvMTAKakJW
aklPa2xyL01DU2lzZ2w0SzRqQUQvZkRaejVuVStqbzBmcjh3QXNLdFU0M1UrVWd5alVuNHhuczVQ
CnVzcFViZy9PT0FSbUJBbDFFZ29yQmdFRUFaZFZBUVVCQVFkQXFrait2ejdsbjQyNmhmQS9wSWZz
elJKbQpWWHpLc1VJOWJQd3dqZEdQUlNRREFRZ0h3bmdFR0JZS0FDb0ZnbVlFQ1hVSmtCY2phUTFH
WTNTNkFwc00KRmlFRXdpMnAza21KNitlYTlBK3RGeU5wRFVaamRMb0FBTHNMQVAwWUVEUkw1OVdi
UndSTFdpN0RlRjY2ClRCSzZtdmZGeG5maG9rM3JKSU1lWXdFQTZGNi85c1J6SzJqbExCRk9kbHlu
ZGdZbEpxUFVpZk1CZGU5ego2QkZFY1FnPQo9NFhXSgotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBC
TE9DSy0tLS0tCg==

-----------------------1c968f8309187b178ac255c298b8906d--

--------201ea4389f60e11c706405970fb52576ec383d5be4db2e38afec2b1a4805a48c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmikaHwJkBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfLjkuvbsJbU55xHr43c3MawBfZmknUgPGDdFwr
XdC7EhYhBMItqd5JievnmvQPrRcjaQ1GY3S6AACvuQEA3mka1cGds4nzG3/t
Bs4/2jppIrOdbJHqFlo3uMMgfBEA/2168HM7po47Ro+HGhZTpyGKwJDmRfTz
mHolNQsrfK8K
=QPy9
-----END PGP SIGNATURE-----


--------201ea4389f60e11c706405970fb52576ec383d5be4db2e38afec2b1a4805a48c--

