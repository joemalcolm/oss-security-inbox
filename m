Received: (qmail 10049 invoked by uid 550); 1 Jan 2026 22:03:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12038 invoked from network); 1 Jan 2026 18:25:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail; t=1767291912; x=1767551112;
	bh=VhQvvrfXD4xDplSmAgyuavIkTuRJTuk0kThyaK6GY5I=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=NdeUB8/bO8gC/JK0H9XDqMd/kdpbCDPsSbDPoG6tACbnnFAnjxANQWHU1oU5S1L0Q
	 w+J4bhBRCsgIn9zH2NzaSfq9QkVK0zg6g1L0PHnkxEviv06MEtieD6Mn/H6ojAYHgW
	 vANFZ/69Y7OC1sTJas/2NBKK1vzFD70qJsRrqd/chw212/YhcRBVuG7y3d9Qi8yv6k
	 hVF0ovy3G0xwVXNH59BQlZ6wP/0S1xgXLOCEbC6kzTf5h1tsoVRQqzByr3f8z9/EXK
	 DGz8YlC3n5Q+sUYu20AIqwjyOW+zufvGMTw9l/cbqlg5VQCzLIVLFrSRIg405enVqz
	 HYcMgpPFoPKSA==
Date: Thu, 01 Jan 2026 18:25:07 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Message-ID: <N8N2bSYC-uYAYqebHWIj3JBV3zq4qnIHC8el8y1t3rE2BJdgCyxsH2korDSHDb6a_OPZKDW3OI7XGUmz7bcJY2U1ZiUblBVfzvjm7ndWvIQ=@hexsys.org>
In-Reply-To: <3a420f27-16ea-4f1b-9ac9-237683a94579@gentoo.org>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com> <kijdjK8TrndDINJsZmPKxfdpiDaRwCvpNP0cqzmmySQwBeDhQWDHTsOMFkNH9vZ8KvEZG8hy027J4PnqWL18_BcaxkDgGdDvgmF3K0pJ-no=@hexsys.org> <3a420f27-16ea-4f1b-9ac9-237683a94579@gentoo.org>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: 0a832cb1867957380426662c3d88ec9143d08f59
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------2143835b5f8977454da66c2bd22ffbe6babdb2becebb2011d72535a72ddee9f0"; charset=utf-8
Subject: Re: [oss-security] Re: Best practices for signature verifcation

--------2143835b5f8977454da66c2bd22ffbe6babdb2becebb2011d72535a72ddee9f0
Content-Type: multipart/mixed;boundary=---------------------006a1dbdeded7b2bc901cfb3e488ac97

-----------------------006a1dbdeded7b2bc901cfb3e488ac97
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Wednesday, 31 December 2025 at 04:35, Eli Schwartz <eschwartz@gentoo.org=
> wrote:

> Hi,
>=20

>=20

> If the Exherbo Linux distribution lacks enough manpower</snip> >=20


You were NOT a Gentoo developer back when Gentoo initialy started
using manifests, as some of us were, so you can NOT possibly know.
Yet, you had to take the time on a precious new year's day to pay
me your respects by formulating two completely non-technical answers.
Haters gonna hate?..

I have respect to this list and I wouldn't reply if this was the
only thing I had to say but the feedback otherwise has been great.
I've learned from David Runge on Mastodon[1] that Arch Linux people
are working on this project called voa[2] that can unify package
artifact signing across distributions. I've also learned this project
is kindly funded by STF. Voa supports GPG atm but they are open to
adding support for minisign, signify and friends. I intend to work together
with them to add signify support as a start. I deeply hope we can use this
solution for Exherbo Linux too.

Meanwhile, I did a bit of work and released 0.1.1. Now I am fairly sure
it does the same thing as OpenBSD signify does. Is that the right thing?
That's of course open for debate. I have also added AFL++ fuzzing
which I intend to leave running for a week or three[3]. Next goal is
to port to WASM, below is the changelog[4] for 0.1.1[5]:

    - Write unit tests, property based tests, and AFL++ fuzz tests to ensur=
e code correctness.
    - Compile keyrings(7) support by default on Linux and Android, and remo=
ve the keyring feature.
    - Port OpenBSD regression tests and fix issues related to CLI option pa=
rsing spotted by them.
    - Use a 1KB buffer rather than 4KB for password input which is consiste=
nt with OpenBSD.

Enjoy.

> --
> Eli Schwartz

Please Eli, take this moment to make a new start. It does not have to be li=
ke this.
I hate what happened in the history as much as you do. Let's refuse to feed=
 this
hate further. Do not drink your own poison and hope me to die. Happy new ye=
ar.

[1]: https://chaos.social/@dvzrv/115819220124450391
[2]: https://voa.archlinux.page/
[3]: inb4 we crack ed25519 :P
[4]: https://git.sr.ht/~alip/signify/tree/main/item/ChangeLog.md
[5]: https://crates.io/crates/signify-rs/0.1.1

Best regards,
Ali Polatel=

-----------------------006a1dbdeded7b2bc901cfb3e488ac97
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

-----------------------006a1dbdeded7b2bc901cfb3e488ac97--

--------2143835b5f8977454da66c2bd22ffbe6babdb2becebb2011d72535a72ddee9f0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlWu+sJEBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmep6o8cdDMlhtBNH6Ww/7pyh6vVKeziea8TSyfI
9ntU2xYhBMItqd5JievnmvQPrRcjaQ1GY3S6AAAUxQEAlN7HKvqzsA3EBJ3H
DA+dvgg4GZy7nQTu/rGyNIQdQO8BAKKIzmKUTs6pdOZaRvBdQ/GS2H+82tQp
X+kmQ5YfymwH
=rNKK
-----END PGP SIGNATURE-----


--------2143835b5f8977454da66c2bd22ffbe6babdb2becebb2011d72535a72ddee9f0--

