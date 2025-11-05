Received: (qmail 22292 invoked by uid 550); 5 Nov 2025 15:40:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22256 invoked from network); 5 Nov 2025 15:40:00 -0000
Date: Wed, 5 Nov 2025 15:39:48 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aQtvxL3uUpHOd7q8@yuggoth.org>
References: <aQoVOMxbrWQ7JzCV@yuggoth.org>
 <cb27a1fa-c1f5-41c2-8e12-b7a183ea2aba@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KLrkGjAAOXnJ8v6A"
Content-Disposition: inline
In-Reply-To: <cb27a1fa-c1f5-41c2-8e12-b7a183ea2aba@gmail.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [OSSA-2025-002] OpenStack Keystone:
 Unauthenticated access to EC2/S3 token endpoints can grant Keystone
 authorization (CVE PENDING)

--KLrkGjAAOXnJ8v6A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-11-04 18:15:23 -0500 (-0500), Demi Marie Obenour wrote:
>On 11/4/25 10:01, Jeremy Stanley wrote:
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> OSSA-2025-002: Unauthenticated access to EC2/S3 token endpoints can grant
>>                 Keystone authorization
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> :Date: November 04, 2025
>> :CVE: PENDING
>>
>> Affects
>> ~~~~~~~
>> - Keystone: <26.0.1, =3D=3D27.0.0, =3D=3D28.0.0
>>
>> Description
>> ~~~~~~~~~~~
>> kay reported a vulnerability in Keystone=E2=80=99s ec2tokens and s3tokens
>> APIs. By sending those endpoints a valid AWS Signature (e.g., from a
>> presigned S3 URL), an unauthenticated attacker may obtain Keystone
>> authorization (ec2tokens can yield a fully scoped token; s3tokens
>> can reveal scope accepted by some services), resulting in
>> unauthorized access and privilege escalation. Deployments where
>> /v3/ec2tokens or /v3/s3tokens are reachable by unauthenticated
>> clients (e.g., exposed on a public API) are affected.
>
>Which account will the tokens belong to?  Is it the one that signed
>the URL?

Correct, if a user shares a signed URL, then that can be used to=20
perform other (likely unintended) actions with the account that=20
signed it as long as the relevant ec2tokens or s3tokens API methods=20
are exposed to the attacker, i.e. not blocked with a WAF or similar.

I've made a note to clarify this in an upcoming errata revision.=20
Thanks!
--=20
Jeremy Stanley

--KLrkGjAAOXnJ8v6A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmkLb75fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WClVNRAAyQSKmpCv8OkdKFzXaLCK9hEiiMReEqgYcin/J8W7AMZqHMgA4OcIYsfq
EINoPGCaBqXu5yBNyyV936OigoH93BTaxQAHdqzyfzigTJV3z+G3oDaWGp2mA1S1
HHiUtxjkZwodzcI//aQlI0Q1YbClSIRNYnPpsYwfIryOHGyJETNlXw+K9lyPi90G
zBtH1MwBcnv8rcH4IxQ7yXpr2J3QxFDND4V77wS9jXLwS6RAJRXmeboOiub9T5wx
+BICxXBP/PRiH1JsaRR5+q+ciMqqU5SWAolmRc7vobsCHe8BzreZDiJA1lxOtjpW
ekPN7Nr0IrsdMhioZK7xCNoZf8iRBDDp8o5AoK9EyvY1X4Me1OIQfRyiO39YL9bm
qJ2L2lMT/tKe9kB/bq5VQC3S2QTsUMlBHrK2OiAAx8Cdb3pLj9HOjSTV0vZJekb9
9kA45WcrHEbBrrisdK6wri+CjCNtYmrYJ2R66M5usTqLkAxVsiTOljhfvKnUcA+0
0/KzwpvekJqV/od5froGKvlWnkttfXKElh+piT/l/0Mhg58xQVnsvJpnHBci+Szs
vnz/5sl//RtD1yVBdaDkFB9zmcu0Urt+15nbDvidpESG1xXERWmvMcu5POwqUjW1
iwIxAa0xfn4VPaG5y7b2fbeAcLiTRqAeBN5OvmhmJVqU7Ptl6OE=
=iN68
-----END PGP SIGNATURE-----

--KLrkGjAAOXnJ8v6A--
