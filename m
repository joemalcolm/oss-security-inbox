Received: (qmail 32426 invoked by uid 550); 30 Apr 2026 05:28:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3858 invoked from network); 30 Apr 2026 04:57:53 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <CAK3hNHa+V=00APzyAHRaER+9JDJR-Az0wscFVX7JX5PgYd-9LA@mail.gmail.com>
Organization: Gentoo
References: <CAK3hNHa+V=00APzyAHRaER+9JDJR-Az0wscFVX7JX5PgYd-9LA@mail.gmail.com>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Thu, 30 Apr 2026 05:57:39 +0100
Message-ID: <87jytpgi4c.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] lcms2 <= 2.18 CubeSize() integer overflow: stock
 Ubuntu 24.04 Poppler / evince-thumbnailer / OpenJDK crashers (different
 triggers), no CVE

--=-=-=
Content-Type: text/plain

Abhinav Agarwal <abhinavagarwal1996@gmail.com> writes:

> A 992-byte PDF crashes a bunch of stock Ubuntu 24.04 consumers:
> evince-thumbnailer, Poppler (pdftoppm / pdftocairo / pdfimages),
> the cups-filters PDF-to-raster print filter, Okular, and GIMP's
> PDF plug-in all segfault inside liblcms2. OpenJDK 21 on Ubuntu
> crashes too, and Windows Temurin 21.0.9 crashes in its bundled
> lcms.dll (3/3 independent runs). There's also a coarse seed-
> correlated heap-read primitive on Linux glibc with ASLR off - a
> real CWE-200 channel, though not a generic arbitrary read. Upstream
> fixed it on master in February/March but hasn't cut a release, no
> advisory, no CVE. The GHSA I filed was closed without a reply.
> Looking for a CVE and for distro attention.
>
> [...]
>
> Timeline
> --------
>
>   2010-10      CubeSize() check-after-multiply pattern introduced.
>   2026-02-19   Fix 1: da6110b.
>   2026-03-12   Fix 2: e0641b1.
>   2026-04-13   GHSA-4xp6-rcgg-m9qq filed (private advisory).
>   2026-04-14   MITRE CVE request filed (CVE Request 2025002).
>                 Submitted with the evidence that existed at the time.
>   2026-04-16   Asked the maintainer on the GHSA whether he'd triage,
>                told him I'd publish otherwise.
>   2026-04-17   GHSA closed without engagement. Public disclosure

Upstream have amended their policy now [0]:
> Please contact me instead. Security advisories are immediatly deleted without checking due to high level of SPAM received.

[0] https://github.com/mm2/Little-CMS/commit/5afc7476582b29a2b3f967a1999cf14d60a93943

There have also been two fixes in master that didn't come up here:
* 'A try to get rid of spam reports about "vulnerabilities" that are not
real.' (https://github.com/mm2/Little-CMS/commit/429ea284550f1925d5b1b4b9ef901dfd62031158)

* 'Add guard on integer overflow when reading .cube files' (https://github.com/mm2/Little-CMS/commit/704896b7d690a0f31845d9622681058e812e9b53)

I have not analysed either.

> [...]

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmny4UMbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkFVc
AP9u/gMUihFyNsuqSos+AAjfzv4WbleqMLO582G/HcnZFgD/Wvn4F8ewGOdBmYb4
tP3Vbr6txCObgrWy6PN519LvYgk=
=SRJ+
-----END PGP SIGNATURE-----
--=-=-=--
