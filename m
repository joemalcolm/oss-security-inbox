Received: (qmail 11333 invoked by uid 550); 17 Nov 2025 15:20:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11302 invoked from network); 17 Nov 2025 15:20:02 -0000
Date: Mon, 17 Nov 2025 15:19:50 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aRs9FhVD4FaD7TcF@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aQoVOMxbrWQ7JzCV@yuggoth.org>
 <aRougshWykMOeEbb@eldamar.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CxWoGesFFYR50AWE"
Content-Disposition: inline
In-Reply-To: <aRougshWykMOeEbb@eldamar.lan>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [OSSA-2025-002] OpenStack Keystone:
 Unauthenticated access to EC2/S3 token endpoints can grant Keystone
 authorization (CVE PENDING)

--CxWoGesFFYR50AWE
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-11-16 21:05:22 +0100 (+0100), Salvatore Bonaccorso wrote:
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> OSSA-2025-002: Unauthenticated access to EC2/S3 token endpoints can grant
>>                Keystone authorization
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>[...]
>> Notes
>> ~~~~~
>[...]
>> - MITRE CVE Request 1930434 has been awaiting assignment since
>>   2025-09-24, but once completed will result in an errata revision to
>>   this advisory reflecting the correct CVE ID. If any other CNA has
>>   assigned a CVE themselves in the meantime, please reject it so that we
>>   don't end up with duplicates.
>
>Have you ever heard back since then for a CVE assignment? I guess it=20
>felt through the cracks?

The coordinator who initially filed request 1930434 in September=20
followed up on the advisory publication date to let MITRE know it=20
was now public and request they prioritize assigning a CVE, but as=20
of the end of last week had still not heard back (I'll check in with=20
him again today once it's daylight in his locale, but don't have=20
high hopes the situation has changed).

We consider CVEs optional and don't hold up advisory publication for=20
them, but will officially issue errata and post to this mailing list=20
as soon as MITRE finally gets back to us. Thanks for checking in!
--=20
Jeremy Stanley
on behalf of the OpenStack Vulnerability Management Team

--CxWoGesFFYR50AWE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmkbPQ5fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCk3AxAAgpCN6Q8ZfT7l8iH/JpbM4R3lTkxdwtBZN6ujCFOeH28KzNQNm8F4lRW9
NwUbqrwWg+CV9UZXJUxPqHOP53W0vz7QQ99/Zv5vbQsO8v9hW8HL54pKnkWZ+hZb
7ZliA5SstUuFLFYJBRvJXiz5i6OSmFGE/d27L/mBN09pbNaqMmv6Zlh+6m5PFpEa
Ak9+V79u6UtOoTJ4lHojbZGK846fCu3C/MDR2o4aghZWkQ+Ob+dJRgRPbKOFgPMe
7u3sKQY5xfZtaufeZRtYU6/nT4lBk+X9quezv+bDbT7vAS6k27bVLL7n50FDLY7C
RxZT1lyZ9uiUENRucI6okzT6Udsw/pBQb+YacgfS5PxRThfU9DQVurXe3ebx3UcW
isLUsUxsvyEgQAzxp3sA3F0rWDr+P34bMbfSEgg8PeJoDI0sTCs7N7rf7s1OlF7N
jJkolGtX4RmJqYMkPWIrRDGfWWMSfulJQj+THqwuLz3xrBHuCAMZ35vWwBcP1tBq
F0lD57ORM+3JmGfRQxhJraomd8K4jnv3Yzvh4iQxKPqr16mA8IugUNnzLVZGU37E
65XidL8Ohz8x32p33OvSrVjZZS9cGpC4MCa41Jgf0GMmeLwjtp9cVY6jEnRu7fFb
Xxdj3KPPT4K5WsmSJcNTn+hxfQ0cQWASs41007v1NLZG3m8oXAA=
=t37v
-----END PGP SIGNATURE-----

--CxWoGesFFYR50AWE--
