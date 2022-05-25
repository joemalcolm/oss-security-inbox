Received: (qmail 7787 invoked by uid 550); 25 May 2022 11:14:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29773 invoked from network); 25 May 2022 10:46:38 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.census 60C16287F3FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=census-labs.com;
	s=D8BFA4EC-CF6E-11EB-AFC5-2C27CB7A6FA6; t=1653475585;
	bh=i9DKNiNOLPK1xQyilPqpYqs4He4OCH4FF+e31i9oYlM=;
	h=To:From:Message-ID:Date:MIME-Version;
	b=4RxdBRLdRMhALQxR0ntbTSn7MKsx3KWMQIV6D9Dr/tqF/sLxDbibYohlw/mZEmC9G
	 uZWczybWk7L+X4Doa1Np/6Y6lkry6s3zWF+MS0QSgXM4JadLWXO8vDREaKfs7KJMi8
	 5xH6yD1rcrX5h3h0zR1Qf+gjRHhwJ1GJFeAAWdwA+GRWHkOstHpbuLxZbzLoYaKRYS
	 JJi7gRBFYkssUY+UEODjQJIewLazhZ9p5Qx8js/sBNeHIIttbuBIHal3ZIL/tLq5Gt
	 S0qvvM75jb8cY752DJJX+Y5RsXBa/WBZtKQtK+vcQBu120dK2b/36Hq/s62tVu9cKy
	 kb7H7urJhs1Dg==
To: oss-security@lists.openwall.com
From: Dimitrios Glynos <dimitris@census-labs.com>
Autocrypt: addr=dimitris@census-labs.com; keydata=
 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
 frqaQBX1rV/q4g==
Organization: CENSUS S.A.
Message-ID: <060f9c47-1f5d-d2f2-1bb6-6cc8ec0afc6a@census-labs.com>
Date: Wed, 25 May 2022 13:46:21 +0300
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="oWHbjVBllFsKabhp7C53XBB8Az9tNn3t2"
Subject: [oss-security] multiple vulnerabilities in radare2

--oWHbjVBllFsKabhp7C53XBB8Az9tNn3t2
Content-Type: multipart/mixed; boundary="touvHmxMvLxSleamhaLHvsfqH8cgeSMZm"

--touvHmxMvLxSleamhaLHvsfqH8cgeSMZm
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello all,

Angelos T. Kalaitzidis of CENSUS had identified three vulnerabilities in ra=
dare2:
- A null pointer dereference bug (CVE-2022-0419, fixed in version 5.6.0)
- A heap buffer overflow bug (CVE-2021-44975, fixed in version 5.6.0)
- A null pointer dereference bug (CVE-2021-44974, fixed in version 5.5.4)

They're all triggerable by having radare2 process a crafted binary.

There's more information about these issues here:
https://census-labs.com/news/2022/05/24/multiple-vulnerabilities-in-radare2/

We're mostly sending this for CVE-to-patch coordination purposes for distro=
s,=20
as the issues have been addressed some time ago (back in February)
by the upstream project.

Kind regards,

Dimitris


--touvHmxMvLxSleamhaLHvsfqH8cgeSMZm--

--oWHbjVBllFsKabhp7C53XBB8Az9tNn3t2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdoZJZFGTtQ76EuHLFYI42pP8OkgFAmKOCP4ACgkQFYI42pP8
OkjWDw//a57QyYy7+6dDE1D69dvr+LKqBNVNRXTnD2UllYlS4QzqvjpHHRzufrZO
RI+BlBo3z06VPiV3CpSrP3EJSb4pfK6ASi0eVHtlRAHuwj1o+TzX73ZM43JUCFvR
XDQ8TVw8/WyjgGj+icIb53A5BQYNPYsF563qkryUOLQP6AL5NArHXcqccpqdK0Ru
BCiZ3WeBElTrJyWNOio6i0XK3qoq1QO8LC6ER835I8bpPDfgScanG255xd9HpUqk
ujxIvunDSGLpYpuO0lMe+p1e6GDuaUpEKxtX4Quyww5+45+jXZytZXsClGVJA9WQ
KsPj30hn2BVfPj2MINGZmRjbaZImXtvScLKy7n3QPLoUVbaXvM8lGsrK9CxQ3YUS
hGJ0+IfyCpsDyicRbvpxqZYj0mMOpH2H+lEjWnHEkcE8RQvZmROXU8UwpUiD+S3n
uH9ql7KBXefwaf/Agk9+utRlj8eZQPQjk4Hn7xKeyGgxRLll9G/5ZFw5XyWxWnnT
PGlo4EEAEsFt8snV9sjYV6UcHYUFtlxjEFNVsZmQ/m1BuHDva/QFqtd7slpnIGdN
E3bAxDzdmjOcXumu4C6NAAqiJIJAKBEZm2bHW+xURF5a7vF+JcgSzOLVqhRPVF+V
YyzB5URAskeTWMQ945J4+KDpRmoo/sZEREz7ulOfKCZ7xGWTCZk=
=vwN6
-----END PGP SIGNATURE-----

--oWHbjVBllFsKabhp7C53XBB8Az9tNn3t2--
