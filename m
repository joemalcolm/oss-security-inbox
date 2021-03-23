X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2041" "Tuesday" "23" "March" "2021" "10:03:06" "-0700" "Steve Beattie" "steve.beattie@canonical.com" nil "59" "[oss-security] [CVE-2021-3444] Linux kernel bpf verifier incorrect mod32 truncation" nil nil nil "3" nil nil (number mark "U       steve.beatti Mar 23   59/2041  " thread-indent "\"[oss-security] [CVE-2021-3444] Linux kernel bpf verifier incorrect mod32 truncation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-3444] Linux kernel bpf verifier incorrect mod32 truncation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20164 invoked by uid 550); 23 Mar 2021 17:04:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19925 invoked from network); 23 Mar 2021 17:04:04 -0000
Date: Tue, 23 Mar 2021 10:03:06 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Cc: ONE K <n4ke4mry@gmail.com>
Message-ID: <20210323170306.GA2473828@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: [oss-security] [CVE-2021-3444] Linux kernel bpf verifier incorrect mod32 truncation

--17pEHd4RhPHOinZp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

CVE-2021-3444 - Linux kernel bpf verifier incorrect mod32 truncation

Recently, it was discovered that bpf verifier in the Linux kernel
did not properly handle mod32 destination register truncation when
the source register was known to be 0. De4dCr0w of 360 Alpha Lab
discovered that this vulnerability could be turned into out-of-bounds
reads in the kernel, and out-of-bounds writes can not be ruled out.

It was fixed in upstream commit:

  9b00f1b78809 ("bpf: Fix truncation handling for mod32 dst reg wrt zero")

and also landed in the 5.11.2, 5.10.19, and 5.4.101 stable kernels.

The commit itself references

  468f6eafa6c4 ("bpf: fix 32-bit ALU op verification") (v4.15-rc5)

as introducing the issue, but further analysis seemed to indicate that

  f6b1b3bf0d5f ("bpf: fix subprog verifier bypass by div/mod by 0 exception=
") (v4.16-rc1)

was also necessary to take advantage of the vulnerability.

Thanks.

--=20
Steve Beattie
<sbeattie@ubuntu.com>

--17pEHd4RhPHOinZp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAmBaH0cACgkQLwmejQBe
gfT7jQ/7B7N+0rgMacL+tsuZGnsrJQM8V9RnVTnOZcTAbbdrYYPkVcd1EVXVieDv
omQqUNpOfPdJIlClIsdDUbZGiM2xyCq+goJYwL3OaqS35nuOYEazkDXl3iCKxAB2
cTsIklbeTDVsIluypreq/v/tHc83Mgzb6wen9mK4BIMJXKmDRB1dQWXpCWa4ibK+
ymFn43F/vxc0iCXteF45SvcfHJhnkK7KJEBBKiAsiJHSS/O82bAIPCC9GC2AgPgw
WBcfvv0w05V0MMJsPgPDuyh9V8M7Fsgs7qSXsbPWxavYLaMrkVYxk8bII31lDRZl
/xOgmhlWoO8uHn32sgiTyd4qMg4/PSvvuvsXcWNrkQHSj+v0+/E8MLg0BxAetRot
pxwBWObMscv06JGH/eZ7nEFseIVrmxe1W2pja9yqYVXbHUN+wYRB1UXd5iSP2kGx
LdWI4NNUsElQ0uotTys+aOoubgJ8ooi3LghLa1jhWEzIWpici1LdEIWd/Zme535p
zstifMr75P/uMVmYnj5YwR2OeaXzT7X5Gl0TG14R9ko/+R+LZYLCR4oCkWuZP+NQ
okXC6SlFVarBXfn7ZGWY1UOovISFbJl7XaMQWwGANxTh8sL9HXw3EKlxOOonjQ7D
GYrJRssJDJQl25NN6eGzNaPefLDpdizAaWupGG9vmj+Fdwu6pv8=
=DRjf
-----END PGP SIGNATURE-----

--17pEHd4RhPHOinZp--
