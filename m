Received: (qmail 27728 invoked by uid 550); 6 Nov 2025 18:21:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27707 invoked from network); 6 Nov 2025 18:21:21 -0000
Date: Thu, 6 Nov 2025 18:21:10 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aQznFji8Z84Sn38R@yuggoth.org>
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <CADz+4x-GmS6gSGRe=6jCkS+5Sgnx8SpVyvx8Lu5UDE6ndx9CzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5j2DntQzAYevlb4a"
Content-Disposition: inline
In-Reply-To: <CADz+4x-GmS6gSGRe=6jCkS+5Sgnx8SpVyvx8Lu5UDE6ndx9CzQ@mail.gmail.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

--5j2DntQzAYevlb4a
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-11-06 12:17:41 -0500 (-0500), Pat Gunn wrote:
[...]
> Hoping I'm not missing something obvious about this concern=20
> that'll make me look the fool, but worried that if nobody speaks=20
> up about it this will amount to a corporate capture of things that=20
> are best not so owned.
[...]

This is part of why projects I work on just apply for assignments=20
straight from MITRE, and wait for a while in some cases. We've=20
intentionally decoupled our advisory publication process from=20
obtaining a CVE so that if it takes them until well after things are=20
public then that's still fine with us. Instead we issue an errata=20
revision for the advisory to add the CVE identifier later once it's=20
finally been assigned.

In the past we've had CVEs assigned to us from interested=20
CNA-wielding companies, and end up with duplicates that then need to=20
be rejected as a result; so while it would be great to be able to=20
prevent that, it sounds like the only way available at the moment is=20
to become our own CNA which is more work than we collectively have=20
time for.
--=20
Jeremy Stanley

--5j2DntQzAYevlb4a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmkM5xBfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmsig/+Li66r8ogbGQ/LFzFPs0hkE0PaeKj6u2kiei2E4uWYt2It196dwpgXPH0
lj2mnFnMvbZD9I+VF2/eqIQfaJaysHkdj+pmWyuN4MOHw1tcg5GwjjwhmGcYvbsX
5QHNMvoDd25k1Lg82wOH0WaT49N8TbB73KgwPor1bEU4FF0gYeHg5ARGq6TNaM7z
9zIqSxC19YjuFJVif0TpIcmRtL+46TXioIONKwcmNI2bVgKCSxwViv8bxY+mFrkE
L5AZAX5ibg3lvke7YJFtuy6jrLfkcY31zlj36jupHxFXvaKTEQDNL1sqbwJ5/oCZ
82ZNy7BHQ0ZdZQLfp1q3JwJa4nvBg29g82z3DGoNXiC0UgNsoK+7YE38EXehM2HQ
TBQsWY7hLoI1SNs00gr3kBXZPGliezdVmOkXLciforjdVsIBJsIphxCHa7LRz1zJ
KAzoAxn5Xxkvwl1qHqdjgjbtbtrLLQMzgjSDlcarR6fXFkI4+QfXqoExgL+Kcnqc
G+qIsA8njjZorGBi3Rs8foYEApOU6CqPasAuli35P9AUVNZ13QM+BYbL+8zIfahX
mQLL2aKmpS1iZcpSr3B2Hj4chh3U7bbMJgGJlnYS3iPEgHRDyTJE7h3KKaivkXal
yciTz5KK/XLZmls2sOx5MEmeOB3gZ4gMo76bDmj/BXlOVgW2Z9c=
=ReLw
-----END PGP SIGNATURE-----

--5j2DntQzAYevlb4a--
