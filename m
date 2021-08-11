X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2064" "Thursday" "12" "August" "2021" "00:18:46" "+0100" "Sam James" "sam@cmpct.info" nil "61" "Re: [oss-security] CVE-2021-20314: Remote stack buffer overflow in libspf2" nil nil nil "8" nil nil (number mark "U       sam@cmpct.in Aug 12   61/2064  " thread-indent "\"Re: [oss-security] CVE-2021-20314: Remote stack buffer overflow in libspf2\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20314: Remote stack buffer overflow in libspf2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23974 invoked by uid 550); 12 Aug 2021 08:05:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16141 invoked from network); 11 Aug 2021 23:19:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cmpct.info;
	s=default; t=1628723929;
	bh=TE0/dpvjLJaS53vX5etPKkOJ1GCa597H8ul4+jz3DEI=;
	h=From:Subject:Date:References:To:In-Reply-To;
	b=Uf+QFFL7EcAoGdo6HSfX6/9mTt9bGgg8P+TiKiEX28BwbuqusyYRy6V7GwgYtYqA4
	 XK8/9J/8XPTYCA39AT4DfbWXZiGxYA/Sko21QoA8maRr3uyGV+Ml+/ya14p1dB3zr3
	 3rDbimYVM6zAlL2aK2dn2h88Nl7FoyaPkzk/7hjA=
From: Sam James <sam@cmpct.info>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D3305278-F92F-44D8-8664-20527210EE50";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Date: Thu, 12 Aug 2021 00:18:46 +0100
References: <dde792a9-3531-9057-70a4-c4a9b60b90fd@sit.fraunhofer.de>
To: oss-security@lists.openwall.com
In-Reply-To: <dde792a9-3531-9057-70a4-c4a9b60b90fd@sit.fraunhofer.de>
Message-Id: <D0B48415-57AD-43DE-9C28-20C8205FF772@cmpct.info>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Subject: Re: [oss-security] CVE-2021-20314: Remote stack buffer overflow in
 libspf2

--Apple-Mail=_D3305278-F92F-44D8-8664-20527210EE50
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 11 Aug 2021, at 15:41, Philipp Jeitner (SIT) <philipp.jeitner@sit.frau=
nhofer.de> wrote:
>=20
> #### Description
>=20
> Stack buffer overflow in libspf2 versions below 1.2.11 when processing ce=
rtain SPF macros can lead to Denial of service and potentially code executi=
on via malicious crafted SPF explanation messages. CVE-2021-20314 has been =
assigned to this issue.
> [...]
> #### Patch
>=20
> The issue has been fixed in github commit c37b7c1:
>=20
> https://github.com/shevek/libspf2/commit/c37b7c13c30e225183899364b9f2efdf=
a85552ef
>=20
> An updated version of libspf2 (1.2.11) which also fixes other security re=
lated issues is available from github (https://github.com/shevek/libspf2). =
The libspf2 website (https://www.libspf2.org/download.html) and latest rele=
ase there is NOT UPDATED YET.
>=20

I don't see this as either a tag or a release on the GitHub repository. Pos=
sibly the maintainer forgot to run git push --tags?

Thanks for your work on this issue.

best,
sam

--Apple-Mail=_D3305278-F92F-44D8-8664-20527210EE50
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQGTBAEBCgB9FiEEYOpPv/uDUzOcqtTy9JIoEO6gSDsFAmEUWtZfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDYw
RUE0RkJGRkI4MzUzMzM5Q0FBRDRGMkY0OTIyODEwRUVBMDQ4M0IACgkQ9JIoEO6g
SDun9wf/WfkV8wVkGpRWpEGIGD3CFmX61ayydeqSgIWdt9TLjzQkTygUCmQvjeGE
qfJcxovOGkYNx1OGlBxCjDVAEozfAOZ2/YPIXA4+BUfLz2a9Dq5IETlwPJPpbUbv
GQJgU1KOVr9DH+pq330E7EnuesOsGeVIJGQG+Nk30qSzDRrftO8Ump7QYoqz9x0w
tXaA9MKtYGdHJI8D00Icgfk7edLLsR7z+WZsaAK51exGfBwI9PEMM7fSLtgieo09
N+6f4Y5m9YZ9UQ3/bIv8QazVuGs6Oi2nBrp5P7PaloMq961rXzBbWaRGItGjnQDT
Jjaj1mzHkHlMzs9y+XynrJjZfiIfqw==
=KYFi
-----END PGP SIGNATURE-----

--Apple-Mail=_D3305278-F92F-44D8-8664-20527210EE50--
