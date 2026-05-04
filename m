Received: (qmail 28547 invoked by uid 550); 4 May 2026 16:03:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20444 invoked from network); 4 May 2026 13:33:19 -0000
Message-ID: <68004db7-a93d-4790-b332-3403dc703d1c@gentoo.org>
Date: Mon, 4 May 2026 09:33:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <87mryiinrq.fsf@gmail.com>
 <20260504100844.w73zrvl732of7wqs@jwilk.net>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
X-Clacks-Overhead: GNU Terry Pratchett
In-Reply-To: <20260504100844.w73zrvl732of7wqs@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wttRp9n5rvlbbXs1nXOmucSB"
Subject: Re: [oss-security] uutils coreutils CVEs

--------------wttRp9n5rvlbbXs1nXOmucSB
Content-Type: multipart/mixed; boundary="------------fyEd9R9VbtJXtmVXCJmAU0fh";
 protected-headers="v1"
Message-ID: <68004db7-a93d-4790-b332-3403dc703d1c@gentoo.org>
Date: Mon, 4 May 2026 09:33:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [oss-security] uutils coreutils CVEs
To: oss-security@lists.openwall.com
References: <87mryiinrq.fsf@gmail.com>
 <20260504100844.w73zrvl732of7wqs@jwilk.net>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
X-Clacks-Overhead: GNU Terry Pratchett
In-Reply-To: <20260504100844.w73zrvl732of7wqs@jwilk.net>

--------------fyEd9R9VbtJXtmVXCJmAU0fh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/4/26 6:08 AM, Jakub Wilk wrote:
> * Collin Funk <collin.funk1@gmail.com>, 2026-05-01 18:49:
>> * CVE-2026-35352
>>
>> We can see that uutils 'mkfifo' creates the fifo with world readable
>> and writable permissions and then uses chmod() which introduces a
>> TOCTOU race that can be exploited by another user creating a symbolic
>> link in it's place:
>>
>> =C2=A0=C2=A0 $ mkfifo --version
>> =C2=A0=C2=A0 mkfifo (uutils coreutils) 0.8.0
>> =C2=A0=C2=A0 $ strace mkfifo -m 700 /tmp/fifo
>> =C2=A0=C2=A0 [...]
>> =C2=A0=C2=A0 umask(000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 002
>> =C2=A0=C2=A0 umask(002)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 000
>> =C2=A0=C2=A0 mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) =3D 0
>> =C2=A0=C2=A0 chmod("/tmp/fifo", 0700)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0
>=20
> Creating the FIFO with default permission could allow other users to
> open it before the chmod(..., 0700) call. This is indeed a
> vulnerability, but unrelated to symlinks, and it's a different issue
> than the one in the description of CVE-2026-35352:
>=20
>> A Time-of-Check to Time-of-Use (TOCTOU) race condition exists in the
>> mkfifo utility of uutils coreutils. The utility creates a FIFO and
>> then performs a path-based chmod to set permissions. A local attacker
>> with write access to the parent directory can swap the newly created
>> FIFO for a symbolic link between these two operations.
>=20
> Note that this attack doesn't work in /tmp, because the sticky bit
> prevents the attacker from deleting or renaming other users' files. The
> victim would have to do something like "mkfifo /home/mallory/fifo". So,
> uh, don't do that?
>=20
> It's questionable if this is a vulnerability at all.


"I don't think it's even a vulnerability if it could be prevented by
defense in depth" isn't a great look. :(


But by all means, let's make it a vulnerability anyway (randomly selected):
https://www.openwall.com/lists/oss-security/2011/02/23/1




--=20
Eli Schwartz

--------------fyEd9R9VbtJXtmVXCJmAU0fh--

--------------wttRp9n5rvlbbXs1nXOmucSB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCafigEQUDAAAAAAAKCRCEp9ErcA0vV5wv
AP0eMlTu3OLC2mh/JYWcQwcmWRmi+er2uTEVw/qDu/W4BgD9EOBUSkH8omVoSRwcFTTRqcrRNSfZ
8NDN8xvTAXJgxQs=
=XtbE
-----END PGP SIGNATURE-----

--------------wttRp9n5rvlbbXs1nXOmucSB--
