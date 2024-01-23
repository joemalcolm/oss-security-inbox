Received: (qmail 25750 invoked by uid 550); 23 Jan 2024 10:37:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25720 invoked from network); 23 Jan 2024 10:37:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1706006362; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Owzq/8627SQE4DrAeleuIgZgMG2k3Qq9yHvWYweaEcI=;
	b=LCWFTRi6+3d7DJyBGDLD5oBtUDilp/EFgbVobGHgpjHWRDxQvAw5koxX7tDYCen5/A+xLw
	upPFqf/ujz+abU/R+6Yls9cZLxPL6XwrjVv/0bX/JuIjHVQ2K6oI6Z7sHIxV0DI0vrHowK
	+EbXScrluQugSTCOvBV3lM3V4VgfsIw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1706006362;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Owzq/8627SQE4DrAeleuIgZgMG2k3Qq9yHvWYweaEcI=;
	b=mRjYE1pT1zuquwiLEsamqmK32GftT+zp2LgsX/xfl5bCF0oUXoveTrMke5JnK2gE2psU87
	nViLBn4dfPiZ27DA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1706006362; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Owzq/8627SQE4DrAeleuIgZgMG2k3Qq9yHvWYweaEcI=;
	b=LCWFTRi6+3d7DJyBGDLD5oBtUDilp/EFgbVobGHgpjHWRDxQvAw5koxX7tDYCen5/A+xLw
	upPFqf/ujz+abU/R+6Yls9cZLxPL6XwrjVv/0bX/JuIjHVQ2K6oI6Z7sHIxV0DI0vrHowK
	+EbXScrluQugSTCOvBV3lM3V4VgfsIw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1706006362;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Owzq/8627SQE4DrAeleuIgZgMG2k3Qq9yHvWYweaEcI=;
	b=mRjYE1pT1zuquwiLEsamqmK32GftT+zp2LgsX/xfl5bCF0oUXoveTrMke5JnK2gE2psU87
	nViLBn4dfPiZ27DA==
Date: Tue, 23 Jan 2024 11:39:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Za-XWUEPml2pcATt@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q2f1jvgSasYACE+I"
Content-Disposition: inline
Authentication-Results: smtp-out1.suse.de;
	none
Subject: [oss-security] darkhttpd: timing attack and local leak of HTTP basic auth
 credentials

--q2f1jvgSasYACE+I
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jan 2024 11:39:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: darkhttpd: timing attack and local leak of HTTP basic auth
 credentials

Hello list,

this report deals with HTTP basic auth issues in the darkhttpd project
[1]. Darkhttpd is a minimal HTTP web server implemented in the C
programming language, for serving static files. The version under review
was 1.14 [2].

A version 1.15 bugfix release [3] containing a bugfix and an additional
warning message is available. I requested CVEs from Mitre for the two
issues found during this review. They have not been assigned yet,
though. I will give an update once I know them.

We offer this report also as a rendered HTML version on our blog [4].

Basic Auth Timing Attack
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The issue is found in darkhttpd.c line 2272 [5]. Here the HTTP basic
authentication string supplied by a client is compared against the
secret configured via the `--auth` command line parameter. For this
comparison a regular `strcmp()` function call is used.

Since `strcmp()` performs an efficient linear comparison, it will
terminate earlier if the first bytes of the supplied authentication
string don't match compared to if they do match. This difference in
runtime can be used for timing attacks to try and find out the correct
authentication credentials to access the web server.

To fix this, a constant-time string comparison function needs to be used
that always takes the same amount of computation time for the comparison
independently of how many bytes of the provided data match the actual
authentication secret. An example for such a function is the
`CRYPTO_memcmp()` [6] function provided by the openSSL library.

Darkhttp does not support SSL encrypted traffic by itself. When
darkhttpd is used for unencrypted http:// over the Internet then it
could be argued that the authentication data will be sent unencrypted
over an untrusted channel anyway. If darkhttpd is used behind a reverse
proxy that uses SSL and thus uses a secure channel, then a major
security property will be violated by this issue though.

Bugfix
------

After discussing the available options with him, the upstream author
decided to implement a custom constant-time string comparison
algorithm [7] to address the issue. This algorithm is a rather simple
xor operation over the complete range of bytes.

Local Leak of Authentication Parameter in Process List
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

The only way to configure the HTTP basic auth string in darkhttpd is to
pass it via the `--auth` command line parameter. On Linux all local
users can view the parameters of other programs running on the system.
This means if there are other users or programs running in different
security domains, then these can obtain the authentication credentials
for the web server.

To fix this an alternative mechanism needs to be provided to pass the
authentication credentials in a safe way. Typically this can be solved
by using an environment variable or a protected configuration file. If
the existing `--auth` command line switch is kept around, then the fact
that this leaks the authentication credentials on Linux systems should
be documented.

Bugfix
------

The upstream author decided to only document the security implications
[8] by adding a warning to the command line usage output.

Review Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Apart from these HTTP basic authentication related issues, I have not
found any problematic spots in the code base of darkhttpd. I focused on
the potential for log file spoofing, escaping the web root via crafted
URLs and memory corruption, e.g. through specifying bad byte ranges in
HTTP headers.  The code is robust in these areas.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2024-01-12: I reported the findings to the upstream author
            <emikulic@gmail.com>, offering coordinated disclosure.
2024-01-13: The author confirmed the security issues but declined a
            formal embargo period.
2024-01-15: I requested two CVEs from Mitre to track the two findings
            found during the review.
2024-01-18: After some discussions about the bugfixes, the author
            published the new version 1.15 containing the changes.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/emikulic/darkhttpd
[2]: https://github.com/emikulic/darkhttpd/releases/tag/v1.14
[3]: https://github.com/emikulic/darkhttpd/releases/tag/v1.15
[4]: https://security.opensuse.org/2024/01/22/darkhttpd-basic-auth-issues.h=
tml
[5]: https://github.com/emikulic/darkhttpd/blob/v1.14/darkhttpd.c#L2272
[6]: https://www.openssl.org/docs/man1.1.1/man3/CRYPTO_memcmp.html
[7]: https://github.com/emikulic/darkhttpd/commit/f477619d49f3c4de9ad59bd19=
4265a48ddc03f04
[8]: https://github.com/emikulic/darkhttpd/commit/2b339828b2a42a5fda105ea84=
934957a7d23e35d

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--q2f1jvgSasYACE+I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmWvl1kACgkQFMQFyXGS
NVO/8xAAhIyFMaa3DAkzzWTEmkwpgYXR3C/Xl+/2RplZYMta3TOjlcGpNjz8cujc
SpR8D+UZJJHSNWBOwBvFBIKZ+lyrVOicB/7Rsy8wmj/EVHKjQJKEJAyudxG8Eg28
NA5de+LPFfd1AGS/r1RW5NoB4FQWqfpyBF0zl8nW8KEbe8eAL80/bG2qoi44K8YQ
uCHWvvSGoMITboilMK9jpWqGBvrBONSU8mJgnUaY0SESAEMo429v5t2SvEohqcpB
NhHtMrL9iEzY+EJg9Z4aHxDWJcKAHEGOInIMO+G11GwPLaWYMdR7f3LssvRzjIl/
TapXi62qIRbheaIyMFSVSKZAGwBuD40U0G1ETrIS2Kv9M2JdguWLMyzz9MirBQbH
ZKHt03yalsTP6SJOd2Ylw7CMHm6lFApoOm7XybssAZYe3mmSrWP6kpLmPew+18B7
tGHsKfUgGXIRI7wE7u4sPi8ctf+ny2SXkbOS5TZleEtxvrDkj07bCyzRN1jt89S+
znM9m1jF3outJXK8arNOJ66876xXCGY3F5SL4oZCt+YRXdaEkKJBGwpiLEnobyId
qQiX1DPTuN0uw1iDse5wOillbGkuIP1IIU0JsazsXs351JvmShZsQTstLYGNywOT
+bGen2s0PwQHS2Puaf9C5O3OcNSGKhw7VJr4xqwfJzWUxM/VHyY=
=3eF6
-----END PGP SIGNATURE-----

--q2f1jvgSasYACE+I--
