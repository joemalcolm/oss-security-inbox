Received: (qmail 26341 invoked by uid 550); 17 Feb 2026 16:43:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26306 invoked from network); 17 Feb 2026 16:43:25 -0000
Date: Tue, 17 Feb 2026 16:43:14 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aZSaoplaTUjwzRM_@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aZSCyyJ82etgzCKm@yuggoth.org>
 <aZSS895E3y8wLlmm@eldamar.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PkdgGnFnwplE9jZY"
Content-Disposition: inline
In-Reply-To: <aZSS895E3y8wLlmm@eldamar.lan>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [OSSA-2026-002] OpenStack Nova: calls qemu-img
 without format restrictions for resize (CVE-2026-24708)

--PkdgGnFnwplE9jZY
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2026-02-17 17:10:27 +0100 (+0100), Salvatore Bonaccorso wrote:
[...]
> Just a small heads-up: The title mentions CVE-2026-24708, but the mail
> body once CVE-2026-24708 and refers to CVE-2026-24709. My
> understandign is that CVE-2026-24708 should be the correct one as this
> was the CVE originally mentioned.
>
> Jeremy, can you confirm: CVE-2026-2470*8* is the one to use?

Thanks for catching that! It slipped through code review, we should=20
probably redesign our metadata to not need repetition of the CVE ID.

You are correct, CVE-2026-24708 is the identifier MITRE assigned.=20
I'll issue errata shortly revising the publication accordingly.=20
Thanks again!
--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--PkdgGnFnwplE9jZY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmmUmpxfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCl9DBAArHmB4X6XJXC79meoh0fk18xFarju4MzsuQuDvpBZ6hxfWS5/2zBTVa+O
oex5A1DtromRLhux5LQk50pruXNARp1hBg5yNtYLG+lvSBeNtdIlnCZFlTM4PbFw
rpg226M5UvbUEIEG5BbumyGbFBR72jfO+h8ehERWOC+aM0vJjFgoxt7n8oTojCOg
uOmpGILSFXRe6tTF0/VR3S2wHQbCzLbuBJ2WCL0j/3anarH2ayLwKmymJZuIC915
Z3PuJx5mRa4SW7AfbHyb2ct945ozWgDd3LJQYp4QuvgK7xaX7hZhLeP8HCXRnpr8
0OotwFQr4QU6f+8R+mCkMn9LEH6GolnimiQuMMOt/lSCTOvSocuCBt8Ch4RvzDM/
op3Q9LH/q9IAwHwHlz9KSJqp0FH21n/fRbsOhp/Me0hx6dIFxMshTucnsBWLvusI
38l2kqZarW6vXXNU6lYg0BsP3Sltm0I+v6Mft/s0WDbD9t+MuHAjAOfrL70UqNR7
grGBS+uIv1BQHK4aH4iAnVj4c13C4siahxvpx+XrBqdvzZrTVNA+PbpX9zUt8dUR
hppy8L5rS0iLXk5pSg5ct/bYTiwibZRlxSBb43VHPLUPX4zSjlYFgjviELcrXB9+
9q4tOBp+t1033vyi/KofDsy0sa1C/KjlbqlpfzXNVDtA6wGAVZg=
=vySp
-----END PGP SIGNATURE-----

--PkdgGnFnwplE9jZY--
