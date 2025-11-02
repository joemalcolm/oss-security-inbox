Received: (qmail 11838 invoked by uid 550); 2 Nov 2025 17:45:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11814 invoked from network); 2 Nov 2025 17:45:00 -0000
Date: Sun, 2 Nov 2025 17:44:48 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aQeYkP4vLYBFv2QQ@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com>
 <875xbtlf4z.fsf@hope.eyrie.org>
 <87qzuh33x1.fsf@gmail.com>
 <20251102012631.GA8285@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pb5KE7VZRXnKTvJB"
Content-Disposition: inline
In-Reply-To: <20251102012631.GA8285@openwall.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

--Pb5KE7VZRXnKTvJB
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-11-02 02:26:31 +0100 (+0100), Solar Designer wrote:
[...]
>It is interesting that although Red Hat seems to dispute this CVE and=20
>doesn't intend to fix it, they nevertheless give it a non-zero CVSS=20
>score
[...]

While I find CVSS fairly useless for projects I work on (for the=20
same reasons Greg K-H eloquently explained in a recent post about=20
determining the "severity" of Linux Kernel vulnerabilities), we have=20
the concept of "vulnerabilities nobody's working on fixing" too.=20
Off-label or discouraged uses of software, or even seemingly=20
appropriate but not common uses, may lead to vulnerabilities which=20
the maintainers have not prioritized finding solutions to in their=20
limited available time. Maybe it's on the roadmap to solve=20
eventually, or merely the upshot of ancient design decisions that=20
can't be revisited due to conflicting backward compatibility=20
promises.

Point is, it's possible to acknowledge something's technically a=20
vulnerability, while having no plan to solve it in the immediate=20
future. Does that merit a CVE? I wouldn't personally request one for=20
it, but if a third party chose to assign one I wouldn't dispute it=20
either. If people refuse to use software containing "unfixed CVEs"=20
that's their choice.
--=20
Jeremy Stanley

--Pb5KE7VZRXnKTvJB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmkHmIhfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkCyA//V3KwPNr+q68tiyDfLuLw8Mc2EIb1OP0tYZ6EwRtqybWvGzC5GYIXhOyc
r3UU+3D1g9NW6SI0onZM94Yk0cYme4yrMvsZ3c8dMfA2M9q9AcWjS/iHNIB9KyGA
nkHJY+JgSQAjobzeNGqk1pV+t0a4wGwmOC3fFEkc8RUyAxms+8//vydqIF+QTsWU
Lf3xhabAAjqeloy+AMREhWVSJMQs+TyVP4NdQRAi4gCEfZO/o7pSToUdwtB0rymL
3wHe/8Ft5hFte5WYHlK8E8vb5FkvFU6tZrX897xUtNERczTFLReg75tzO6B09Q3+
LnBLbPjpMiqZAKn1Nv5Iunung8ZZH47RvNm5PdjvqGrYikCL+9FIHUD2Y9Bk1b4y
DX96pJa2MplB8HjKo7+jLrnhGXhc1KOxi+BGoR6PtOWi9VMs63OnoQPgM9K8bt0D
XKlH7njcs/5XOgl4UotslSRQuUGsOWQSAGIemh93QkRq2AY/ayOIbQdG+cVMy86z
CxgyUwq6hZRIFe9j7UhYbZu5x1dgD96ycvJbcQGK0/1gf5Oy/E3uUS9Ix+zfyNA0
uQe9eLVCVqoQdxUnfAsm08ddxVNfx5ZmTR9Y9wYAIGR/fqo76S35yKL4fIWaBY/t
TYxK/Gr0d2Q4pAnkYDaLf7L5IH62KZ3B6N5jh8TX+ip2aUe4q2w=
=7u7g
-----END PGP SIGNATURE-----

--Pb5KE7VZRXnKTvJB--
