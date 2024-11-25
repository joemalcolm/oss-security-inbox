Received: (qmail 13527 invoked by uid 550); 25 Nov 2024 16:25:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5890 invoked from network); 25 Nov 2024 08:23:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail2; t=1732522986; x=1732782186;
	bh=A11jfYxROlcpzXjXHmR1Of6V1VNc56f0cz1gkjk4WUk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=i96+GPgQwXgcG/r/hatlmkuZYYI17LdVONmbw+bQD87bdFW29QU0FJrjP023vw0q/
	 YZjAVOuclvPDLMZ6UGShlySHFOWwbcdvqZ6wHV2x5BGsGqGmH8yBOlRnJ0iinVhQbX
	 /sPzpIGvb2tb6rWBaZTOAMm3R9H/Oj4c3sqpnik0D+LxS44Npye5tO7S4+G7qXWes3
	 QIiTppaNp+PQ0vtmI60S6Gu4fpnWIkc4Q87koJNSxanI99QR08qp7o1rQBqyFT4I3M
	 lytMUXFYGI0u1rOe8W4ljfCh0gpVS9NXFMh5bmUBVss9lTaBcCLQ3IgwLD0w0Kt1uW
	 RMvR+PVRu4NlQ==
Date: Mon, 25 Nov 2024 08:23:01 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Cc: Ali Polatel <alip@hexsys.org>, =?utf-8?Q?G=C3=BCnther_Noack?= <gnoack@google.com>
Message-ID: <0d5AmDLUUJDemKHFLU_oDG93_T4DVT1AM973d9baVjK8GRwCEKBhzIMNxmaxPxzM9VUpvOh9uUvUn7nOGgB8N1sQD17AJt9dcgBwYmOw5Mg=@hexsys.org>
In-Reply-To: <20241124.ahQuohdaiN2A@digikod.net>
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org> <20241124.ahQuohdaiN2A@digikod.net>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: e42db10cc993076774e4db5145d15f5a89889fca
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------bfa6a1deab1483ce7079157d488a1d7275c83619c9c37ad042fb556ddda082cb"; charset=utf-8
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--------bfa6a1deab1483ce7079157d488a1d7275c83619c9c37ad042fb556ddda082cb
Content-Type: multipart/mixed;boundary=---------------------58ca4c825bdf3298b1845b6db0c2014f

-----------------------58ca4c825bdf3298b1845b6db0c2014f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Sunday, November 24th, 2024 at 11:52, Micka=C3=ABl Sala=C3=BCn <mic@digi=
kod.net> wrote:

> Nice article! I somehow miss this email...

Thank you!

> This is neither a bug nor a feature, but a current limitation
> highlighted in the documentation:
> https://docs.kernel.org/userspace-api/landlock.html#filesystem-flags
> This limitation is due to the current path-based LSM hooks (e.g. also
> used by AppArmor and Tomoyo), but we plan to address that:
> https://github.com/landlock-lsm/linux/issues/9

Thank you for taking the time to explain this. It makes more sense now.
Hiding paths is a feature i work on sydbox as well. Our main goal with
this, however, is not really security, rather we want to ensure each and ev=
ery
package build can only "see" the files it depends on (directly or indirectl=
y).
This is going to effectively prevent automagic dependencies[1] at sandbox l=
evel
and bring us one step closer to hermetic builds akin to Bazel.

There are some open questions we have wrt. our implementation which may not=
 be
an issue for Landlock due to its hierarchical nature, however I'll still st=
ate
them here as food for thought:

1. What happens if I pass-thru a hidden directory on my way to an allowed d=
irectory?
2. How does the dotdot (ie `..`) entry look when i getdents in an allowlist=
ed directory
which is right beneath a denylisted one?

AFAICT, under Landlock you cannot allow a directory beneath an already deni=
ed
directory tree, so these are possibly non-issues on your side.

> Sandboxer tools using Landlock may mislead users to think this kind of
> access may be denied but if we take a look at the Landlock filesystem
> access rights, none of them control path walk. It should be noted that
> Landlock still provides the required access rights to protect users'
> data. Only access to metadata cannot be controlled yet.
>=20

> Thanks to incremental development, Landlock is gaining more and more
> features with new kernel versions:
> https://docs.kernel.org/userspace-api/landlock.html#previous-limitations
> You can find more information about Landlock's development in the
> related article:
> https://landlock.io/talks/2024-06-06_landlock-article.pdf

Thanks for sharing. Currently we use Landlock ABI-3 for sydbox. This
is because so far all the new features provided by new ABIs (ioctl,
abstract sockets etc) are already confined by our seccomp-sandbox. That
said, I do want to integrate new landlock abis into sydbox for
defense-in-depth. History shows having multiple layers sufficiently raises
the bar for the attacker. Most recent example is the landlock houdini escape
which does not work under sydbox for 2 reasons: The "easy" reason is keyctl=
(2)
is denied by default with a startup option to allow it. However, even if its
allowed, because the offending keyctl(2) call happens in the sandbox proces=
s,
and the escaping open(2) actually happens in a sydbox emulator thread which
is confined with the same landlock sandbox, privilege escalation is still n=
ot
possible. I firmly believe this design will stop many similar attacks in th=
e future.

[1]: https://wiki.gentoo.org/wiki/Project:Quality_Assurance/Automagic_depen=
dencies

Best regards,
Ali Polatel=

-----------------------58ca4c825bdf3298b1845b6db0c2014f
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

-----------------------58ca4c825bdf3298b1845b6db0c2014f--

--------bfa6a1deab1483ce7079157d488a1d7275c83619c9c37ad042fb556ddda082cb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmdEM8wJkBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfWLduGuDBuhMjcZejCQI+e7E87HTApWB8j/D8N
lpc6vRYhBMItqd5JievnmvQPrRcjaQ1GY3S6AADXUAD/UeQxC3h5Yc4bqW4z
9eiVLFviMDsiP1hsihdn4RNgLLcA/0rQiAlJrazSCtQo3d6bMvCt4n3h2x4c
g31ZNlubcNwF
=EGiE
-----END PGP SIGNATURE-----


--------bfa6a1deab1483ce7079157d488a1d7275c83619c9c37ad042fb556ddda082cb--

