Received: (qmail 23952 invoked by uid 550); 13 Jun 2024 20:36:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7329 invoked from network); 13 Jun 2024 20:10:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718309445;
	bh=/tWlV6cYR40UfX4JbfBNBcl/NTY+ihl/nh9i2CmkZ/E=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=nAIRwWnZEXcJRZT9zDnYSjPYo4Yw8WuxS9C7oNRSn8Ftvg8IBIqQvOBKzg4psZK4E
	 mOWv+P82a41kiLraJ1sYP62CfMg25gAdLoLWkzJB7Z/UD3Una3mEGmVcPYBacgDGtc
	 8chKY3BaxOe1Nth/xHi5UCnxRhEZFas5SngnGxLDlkKg3RDIBDX+t8z4D47t+7zHso
	 1/F21DR5118r/K1I2dXifjo9RMOFxCHYYmt73WerXh5lKi84wkcfF7jM2mnsHvTKOG
	 K6owZf9g08cgFzL4dr1gxj1Jd0qlwdFLcUy43okgheatxTpZ6bVk+12tirXKW7Gpa5
	 c697itdZlsSkg==
Date: Thu, 13 Jun 2024 15:10:42 -0500
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZmtSQrfoGgEoqFZK@aeon>
References: <CACVjhxUD21YUHf4ZMCqO_qzXT93p5ukSW6sKANvzDzxuXqaZCg@mail.gmail.com>
 <70d2c42126ea78f0f5cd527c0fd16ccad772f523.camel@3v1n0.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yF2SNZjriTUhZNjZ"
Content-Disposition: inline
In-Reply-To: <70d2c42126ea78f0f5cd527c0fd16ccad772f523.camel@3v1n0.net>
Subject: Re: [oss-security] Security vulnerability in fprintd

--yF2SNZjriTUhZNjZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At Marco's request, I am asking MITRE to either revoke CVE-2024-37408 or for
MITRE to transfer CVE ownership to Canonical's CNA for revocation.

On Thu, Jun 13, 2024 at 06:40:51PM +0200, Marco Trevisan wrote:
> Hi Yaron,
>=20
> Thanks for taking time to look into this issue.=20
>=20
> We appreciate the analysis you did, although, as we already shared
> privately, we don't think that this is a fprintd issue but rather an
> architectural issue of how PAM modules interact with sudo that, by
> design, does not permit an additional attention mechanism beyond
> displaying a prompt in the terminal.
>=20
> It's important to note that no graphical PAM front-end (that we are
> aware of) is affected by this problem. For example, the PolicyKit
> dialog that gnome-shell integrates and also the GDM login and lock
> screens will properly ensure user attention. Said differently, there
> should be no user attention issue as long as fingerprint authentication
> is restricted to properly implemented graphical front-ends. This is a
> policy decision for administrators and distributors to ensure using the
> PAM configuration.
>=20
> We would like to point out that similar behaviors may occur with any
> PAM module that uses an out-of-band authentication mechanism (whether
> using another device or not) that doesn't require the user to pay
> attention to the main device (SSO, web authentication, hardware-token
> based, =E2=80=A6).
>=20
> The discussed behavior completely depends on the PAM configuration
> (which, in most cases, needs to be enabled by the user). If this is
> considered an issue, then it cannot be resolved within fprintd (and
> pam_fprintd.so in particular). Should this be considered an issue, then
> it needs to be addressed by modifying the PAM configuration to restrict
> pam_fprintd.so to front-ends that implement a proper attention
> mechanism. This is out of scope for fprintd and must be done by
> administrators and possibly distributions as part of a policy decision.
> A policy decision that the reporter made when enabling fingerprint
> authentication using pam-auth-update.
>=20
> As explained, this is not an fprintd issue, and it cannot be considered
> a security flaw in fprintd, and therefore we believe that it should not
> have been assigned a CVE number.
>=20
> Thank you again for caring about fingerprint security.
>=20
> The fprintd maintainers,
>      Benjamin and Marco
>=20
>=20
> Il giorno gio, 30/05/2024 alle 09.18 +0000, Yaron Shahrabani ha
> scritto:
> > Hi everyone, I'm writing to this mailing list since I've already
> > shared the details with Benjamin Berg and Marco Trevisan privately,
> > and we have yet to conclude about this vulnerability.
> > This information was also disclosed to the fprintd mailing list:
> > https://lists.freedesktop.org/archives/fprint/2024-May/001231.html
> >=20
> > My sudo is configured to approve access with pam_fprintd; this is the
> > config file:
> >=20
> > #%PAM-1.0
> >=20
> > auth=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
sufficient=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pam_fprintd.so
> > auth=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
include=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system-auth
> > account=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 include=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system-auth
> > session=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 include=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system-auth
> >=20
> > So, unless I'm not already authenticated, running the following
> > command:
> > sudo whoami
> > Replies with the following prompt:
> > Place your finger on the fingerprint reader
> >=20
> > Placing my finger on the fingerprint reader leads to the following
> > output:
> > root
> >=20
> > The security concern is that this process can also happen behind the
> > scenes, so if I'm running a script that has a sudo prompt to delete
> > something I care about, I can accidentally place my fingerprint on
> > the
> > fingerprint reader for any other reasons, and my beloved files will
> > be
> > removed.
> >=20
> > How do we recreate the issue?
> > You can open your favorite console app on Linux.
> > If it supports tabs open two tabs, if not just open another window.
> > On the first tab, type: sudo whoami
> > Switch to the second tab and type: echo Place your finger on the
> > fingerprint reader;cat
> > Place your fingerprint on the fingerprint reader
> > Return to the first tab (You should see that the command was approved
> > and the output is root)
> >=20
> > Assume the user was running some background process and didn't see
> > the
> > fingerprint prompt from the other terminal. The second terminal may
> > deceive the user into placing the finger on the fingerprint reader
> > and
> > elevating permissions without the user being fully aware.
> >=20
> > On Ubuntu, if I want to recreate the same configuration, all I have
> > to
> > do is enroll my fingerprints in System Settings,
> > then install the pam-auth-update and select the Fingerprint
> > authentication from the selection screen (apt specific) as described
> > in the following SO thread:
> > https://askubuntu.com/questions/1015416/use-fingerprint-authentication-=
not-only-for-login
> > .
> >=20
> > This problem was solved in macOS by simply displaying a window; if
> > the
> > window is out of focus, the fingerprint won't work.
> > Since we can't rely on any graphical window on Linux since it can be
> > terminal only, we need to ensure that the user fingerprint is used
> > only for the sole purpose of the request and with full attention to
> > the specific action the fingerprint was requested for. Otherwise, the
> > fingerprint can be hijacked (just like clickjacking).
> >=20
> > Benjamin was kind enough to respond, and I allowed myself to
> > summarize
> > his reply:
> > It can happen with fprintd as with any other external authentication
> > method (aside from password, we have Bluetooth proximity, NFC Tag,
> > Smart Card, etc.), so it is not unique to fprintd.
> > Benjamin also offered mitigating ways, such as changing the
> > configuration or using pkexec instead of sudo.
> >=20
> > I addressed this issue with the sudo maintainer, Todd C. Miller, and
> > again, I allowed myself to summarize his response:
> > Although I understand the concern, I need a security attention
> > mechanism to fix it.
> >=20
> > CVSS 4.0 ranked this CVE as 7.3.
> >=20
> > Thank you,
> > PS, I'm not a security researcher, and I'm not affiliated with any
> > organization.
> >=20
> > Yaron Shahrabani - DevOps, Hebrew translator
>=20



--yF2SNZjriTUhZNjZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmZrUkAACgkQszvZgG6F
IMYjyRAAjGKd6W32TkQW+7B4sjqn8OM6b7Iwmy6/KJR1youry7g40mtFYK8Ji9B9
pMPCjMzLwHFxKMSKcJxKsaX4NtuGCCW3Vr1EjsrLMKv4yrqCc4OClGLrfkeV7Gpn
3zfDGR9VgxgrxB/vKttz+Xry5hF6smz5q0zf5LuesbxJlaKEnH4sBQAkrD34MfC1
nil/u2iToesbArFm8LEpixFNnMQU07ci0JLyJH8OChvDAlm6TQv29Q0cKB3yM5np
AKSmCkLuym0sCkY8IhFr30y7hhsQr/gJFdEHmJnnMmWqUa7pIJ6gaf2maNpVWcgf
iHB+403X/pZftmyvPiWTnha5fTO4n/V71UFJ1ikypplIJ8BPQb8GHF1VaKpeNVFK
vaeZWnw/GbbE9pTm82Ti+bh0A/UU99BvKFzvFZ5VE6lgF2tsHJelLk0uK7eEbEXS
77EUN+yr7GvO+XR4ImlWVpJb/rNQiWGOO1aqXQbsWqWbKqNMh7pC9+jvqguVlEA1
Zx17nUVGxPKWQcXjSQoWegTAF+EuFGanN9YxGrydo2H/+WcINu4+/3nSE1MwVi4i
CbdNujX2DhEGau8Jsyj2+Nz9piBeNLuYtL/dv48dV1vKuxNs/v7UjUVwyvo0fG+A
erTZ8bhH9N+nJ2H0SHsvIos+VvKzXZPaCJUYJ+n+fg/FMcq4+KA=
=1AYC
-----END PGP SIGNATURE-----

--yF2SNZjriTUhZNjZ--
