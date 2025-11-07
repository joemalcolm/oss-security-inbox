Received: (qmail 31979 invoked by uid 550); 7 Nov 2025 17:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15570 invoked from network); 7 Nov 2025 11:10:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail; t=1762513828; x=1762773028;
	bh=ErrHnZTyRAlWAnqNYqhkzVLxd7NyivNJBczjLb4pMPQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=m1BvGeeGl5xlF9DhmNhEfgiIEfAIrFqlQSGsVe+fsM94Kl0dJLdaO7QZP1XeDYTtJ
	 xdT4fdVGiSouTHXD2ZP8yNfg5qA0sAOL2J8mLI3rrguvtolGrpwHi5Q6DSd6SiQOAr
	 WKjf5wdT3UGRVexr7f6yWdczCFZHu8ZX1uaQf9qPdLcEzq036Bzfamb1u088C2h/SN
	 68pMuFlFr0Ca+yC1zYUL5ViO6xLPS+Fy9TNGQ8B/iwcJZe9/BEHjqn2dzpVcRGT1G3
	 1Jj5pc1dhExJdDIqUquPu4OD8o7h2lr3unoW9j6g6rUOH7+xw8EoFx/8Rqg1ox2VP9
	 iBCVNBWKzTZsw==
Date: Fri, 07 Nov 2025 11:10:24 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Cc: fulldisclosure@seclists.org
Message-ID: <MtQJ2AOCjN29xX23SKTBKR2DafC45yJ05Ezm4w6FxJvb_G0neuwLCaZ2t53Sp47a3RWNhNGfgzTXjKeuiDlL-fdRC1IdxOux0FBKZBBcqqA=@hexsys.org>
In-Reply-To: <2025-11-05-remember-remember-the-fifth-of-november-3EtRdS@cyphar.com>
References: <2025-11-05-remember-remember-the-fifth-of-november-3EtRdS@cyphar.com>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: e719426ad9f847ba86e1a19c40a3f1f4999cb62f
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------98ea390939acddca8043ea3421d3896d29c36f979624aae60a3e37acc62ad6b6"; charset=utf-8
Subject: [oss-security] Re: runc container breakouts via procfs writes: CVE-2025-31133, CVE-2025-52565, and CVE-2025-52881

--------98ea390939acddca8043ea3421d3896d29c36f979624aae60a3e37acc62ad6b6
Content-Type: multipart/mixed;boundary=---------------------181387cf997f19b2fa0c07f62091f56b

-----------------------181387cf997f19b2fa0c07f62091f56b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Wednesday, 5 November 2025 at 10:58, Aleksa Sarai <cyphar@cyphar.com> wr=
ote:

>=20

>=20

> | NOTE: This advisory was sent to security-announce@opencontainers.org
>=20

> | on 2025-10-16. If you ship any Open Container Initiative software, we
> | highly recommend that you subscribe to our security-announce list in
> | order to receive more timely disclosures of future security issues.
> | The procedure for subscribing to security-announce is outlined here:
> | https://github.com/opencontainers/.github/blob/main/SECURITY.md#disclos=
ure-distribution-list
>=20

>=20

> Hello,
>=20

> This is a notification to vendors that use or ship runc about THREE (3)
> high-severity vulnerabilities (CVE-2025-31133, CVE-2025-52565, and
> CVE-2025-52881). All three vulnerabilities ultimately allow (through
> different methods) for full container breakouts by bypassing runc's
> restrictions for writing to arbitrary /proc files.
>=20

> Today we have released the following runc releases which include more
> than 20 patches to resolve this issue:
>=20

> * runc v1.4.0-rc.3 https://github.com/opencontainers/runc/releases/tag/v1=
.4.0-rc.3
>=20

> * runc v1.3.3 https://github.com/opencontainers/runc/releases/tag/v1.3.3
>=20

> * runc v1.2.8 https://github.com/opencontainers/runc/releases/tag/v1.2.8
>=20

>=20

> We strongly recommend you update as soon as possible. For your own
> reference I have attached a tarball of the patches (which apply cleanly
> on top of runc v1.2.7, v1.3.2 and v1.4.0-rc.2).
>=20

> Unfortunately the patches are are quite large as they required a lot of
> development work in github.com/cyphar/filepath-securejoin along with
> quite deep changes to runc. I would recommend just going with the
> released versions.
>=20

> Note that these patches have not been split into per-CVE patches, as the
> resolutions for each issue overlap and so some patches help resolve more
> than one CVE on the list. We strongly recommend simply applying all of
> the provided patches (we have included a squashed single-patch version
> for your convenience -- see v1.[234].patch).
>=20

> | NOTE:
> | Some vendors were given a pre-release version of this release.
> | These public releases include two extra patches to fix regressions
> | dIscovered very late during the embargo period and were thus not
> | included in the pre-release versions. Please update to this version.
> | The above tarball includes these extra patches as well.
>=20

> /*** Vulnerabilities **/
>=20

> Below is a break-down of the key points of each issue. Once this
> vulnerability is made public on the embargo date, the linked advisory
> pages will contain some more information about the issues.
>=20

> Please note that while these issues are generally related, the available
> mitigations (if any) vary from issue to issue. However, all of these
> attacks rely on starting containers with custom mount configurations --
> if you do not run untrusted container images from unknown or unverified
> sources then these attacks would not be possible to exploit. Note that
> Dockerfiles support custom mount configurations (with RUN --mount=3D...)
> and so these issues are also exploitable from Dockerfiles.
>=20

> Also please note that the below CVSS scores are based on the threat
> model from runc's point of view. If you were to analyse the same
> vulnerability from the perspective of network-enabled systems like
> Docker or Kubernetes you would likely end up with a much higher
> severity.
>=20

> / CVE-2025-31133 */
>=20

> "container escape via 'masked path' abuse due to mount race conditions"
>=20

> CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)
>=20

> https://github.com/opencontainers/runc/security/advisories/GHSA-9493-h29p=
-rfm2
>=20

>=20

> CVE-2025-31133 exploits an issue with how masked paths are implemented
> in runc. When masking files, runc will bind-mount the container's
> /dev/null inode on top of the file. However, if an attacker can replace
> /dev/null with a symlink to some other procfs file, runc will instead
> bind-mount the symlink target read-write. This issue affects all known
> runc versions.

Syd, and therefore syd-oci, preopens a fd to /dev/null at startup and
exits with error in case it's not the expected character device. Open
is done with openat2 without resolving symlinks. Does this mean syd-oci
is not affected? Is there some POC I can test with? TYVMIA.
=20

>=20

> --
> Aleksa Sarai
> Senior Software Engineer (Containers)
> SUSE Linux GmbH
> https://www.cyphar.com/

Best regards,
Ali Polatel=

-----------------------181387cf997f19b2fa0c07f62091f56b
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

-----------------------181387cf997f19b2fa0c07f62091f56b--

--------98ea390939acddca8043ea3421d3896d29c36f979624aae60a3e37acc62ad6b6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmkN04cJEBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmesDv0Ciz44hoLJ1o8YeKmQ6+yJujP6+k2FKtlM
c39AvBYhBMItqd5JievnmvQPrRcjaQ1GY3S6AACQ+QEAmKLNW+0bUVDPCUyP
xTlRYgtIQSyVPwR6n06aq3vhBrcA/i0Eje+AigsQRD+FawRoPZOUECFQZcJF
nyx/Gl2ewq8B
=kmaq
-----END PGP SIGNATURE-----


--------98ea390939acddca8043ea3421d3896d29c36f979624aae60a3e37acc62ad6b6--

