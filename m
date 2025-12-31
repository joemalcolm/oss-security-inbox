Received: (qmail 15583 invoked by uid 550); 31 Dec 2025 00:56:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10016 invoked from network); 31 Dec 2025 00:27:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail; t=1767140863; x=1767400063;
	bh=sucziHWBTrqhEWe/HL2VEUc1ChOdXo+1rdYhW1jiuQw=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=jSKKyKhFIp2B6afkEKhJvzo9zysLXmZHkObtK0bcMyfSeZbRNpMLbCsVpvbw0w/Rs
	 vf/NP70J/rTV97oWwKRcjrxHsSH2Ns3lQgKj+JmasywafbguXJhC+C2+mYNghTYgkj
	 KuXVvqKoR6yg9dJGAxW3E3DNzu3grqHgLAy237P6NSNUosB51XhnwSBSSKMb3VIegs
	 hhQCNuIwPH4h74W0Kj41moyeW5IGztyLHNiRlLpbyF2VX9InI2Hh9bXBAZV6wScWsn
	 TiEfT7UhPti3veBDXp0p+J15FFiC5VbrfNIfZllc5qPMdKXVjVANVSwXMF4sGS3BB5
	 mXnrCcfdTy67A==
Date: Wed, 31 Dec 2025 00:27:41 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Message-ID: <kijdjK8TrndDINJsZmPKxfdpiDaRwCvpNP0cqzmmySQwBeDhQWDHTsOMFkNH9vZ8KvEZG8hy027J4PnqWL18_BcaxkDgGdDvgmF3K0pJ-no=@hexsys.org>
In-Reply-To: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: f5d0a0aa5c56cdcf43657c5fbe10a2f01a79484d
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------db39979f65c96114803967f74779ccc9b6d17b6525ff20ab774f2ebab05a443e"; charset=utf-8
Subject: [oss-security] Re: Best practices for signature verifcation

--------db39979f65c96114803967f74779ccc9b6d17b6525ff20ab774f2ebab05a443e
Content-Type: multipart/mixed;boundary=---------------------5a0442b3108d8911fecf19f0682588a6

-----------------------5a0442b3108d8911fecf19f0682588a6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Monday, 29 December 2025 at 02:36, Demi Marie Obenour <demiobenour@gmail=
.com> wrote:

> In light of the recent GnuPG vulnerabilities, I remembered that OpenPGP
> is almost never the right choice. CMS/PKCS#7 isn't any better, and
> X.509 is also bad except that its extremely wide deployment in TLS
> keeps it alive.
>
> See https://www.latacora/com/blog/2019/07/16/the-pgp-problem/
>
> and https://soatok.blog/2024/11/15/what-to-use-instead-of-pgp/.

OpenBSD has signify[1] and the article "Securing OpenBSD From Us To You"
by the main author is worth reading. Having been a loyal GnuPG user for
long years, these vulnerabilities made me reconsider my approach to
signing yet again. This time, though, I decided to act on it. I wrote
a clean Rust implementation of signify and called it signify-rs[3].
It uses the same license (ISC) as the reference implementation. Code
is free of unsafes and arithmetic side effects. No proc macros are used
in the code or any dependencies making it static-linking friendly. It's
fairly portable and passes tests on FreeBSD, NetBSD, Linux and Windows.

My initial goal is to switch signing Syd binary releases from gpg to
signify. Next intention is to consider signing package manifests on
Exherbo Linux distribution with it. If my memory serves me right,
Gentoo Linux and Portage has support for GPG signed manifests and
it has been a longstanding issue in Exherbo Linux how we want to
do manifests. Current consensus is to use thin package manifests
on a best-effort basis because we lack the developer time to go
all in. Thin manifests store a single checksum and package size
of the relevant package distfiles. My goal/dream is to integrate
signify into this workflow and start signing thin manifests using
signify.

Sharing is caring, so here is the git[5] and CI[6]. CI saves
static-linked signify binaries as build artifacts which gives
an option to quickly test. Enjoy.

Finally, my contribution is the "keyring" feature. When built
with this feature on Linux, keyrings(7) support is compiled in.
This adds a "-k <key-id>" argument to the subcommands -G(enerate)
and -S(ign) when the user may submit a 32-bit key ID rather than
inputting the passphrase manually with a prompt.

[1]: https://man.openbsd.org/signify
[2]: https://www.openbsd.org/papers/bsdcan-signify.html
[3]: https://crates.io/crates/signify-rs
[4]: https://www.kepstin.ca/blog/manifest-generation-in-exherbo/
[5]: https://git.sr.ht/~alip/signify
[6]: https://builds.sr.ht/~alip/signify

> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)

Best regards,
Ali Polatel=

-----------------------5a0442b3108d8911fecf19f0682588a6
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

-----------------------5a0442b3108d8911fecf19f0682588a6--

--------db39979f65c96114803967f74779ccc9b6d17b6525ff20ab774f2ebab05a443e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlUbeUJEBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeSnU0i1WKhm7a8POFuw1iMrKMBFoXvDZYo4YOW
r+o9MRYhBMItqd5JievnmvQPrRcjaQ1GY3S6AABFKwD+MF/kq5w9EGsTX5pR
WbTII24w1gHwSklevgGbRJhsMacA/jxbwf/vUXVHZ7vQFikTpGiZcKCb6YzS
2+BoCN81apEM
=ELXr
-----END PGP SIGNATURE-----


--------db39979f65c96114803967f74779ccc9b6d17b6525ff20ab774f2ebab05a443e--

