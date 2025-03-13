Received: (qmail 15958 invoked by uid 550); 13 Mar 2025 05:17:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30352 invoked from network); 13 Mar 2025 05:03:36 -0000
Message-ID: <359120da-2525-40d4-a93d-c9ba1051347e@gentoo.org>
Date: Thu, 13 Mar 2025 01:03:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <Z9H7D+X11A121Mkg@256bit.org>
 <20250313041407.GA20847@openwall.com>
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
In-Reply-To: <20250313041407.GA20847@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0vj0dirfhmljVCCk54jjKjSC"
Subject: Re: [oss-security] [vim-security] potential data loss with zip.vim
 and special crafted zip files in Vim < v9.1.1198

--------------0vj0dirfhmljVCCk54jjKjSC
Content-Type: multipart/mixed; boundary="------------F4WPK3yEtSaJqISbyxhahN4F";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <359120da-2525-40d4-a93d-c9ba1051347e@gentoo.org>
Subject: Re: [oss-security] [vim-security] potential data loss with zip.vim
 and special crafted zip files in Vim < v9.1.1198
References: <Z9H7D+X11A121Mkg@256bit.org>
 <20250313041407.GA20847@openwall.com>
In-Reply-To: <20250313041407.GA20847@openwall.com>

--------------F4WPK3yEtSaJqISbyxhahN4F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3/13/25 12:14 AM, Solar Designer wrote:
> On Wed, Mar 12, 2025 at 10:22:23PM +0100, Christian Brabandt wrote:
>> Therefore, Vim will try to work-around it by using the `[-]` glob when a
>> filename starts with a `-` to protect unzip from parsing the filename as
>> an argument, which is just an ugly work-around.
>=20
> I was puzzled by this.  I expected that if you were running unzip via
> the shell, then the glob pattern would be expanded back to a simple dash
> before being passed to unzip, and if you were running unzip directly
> then the glob pattern would never be expanded, so the brackets would
> break the intended behavior.  However, it appears that unzip itself
> expands glob patterns even for archive names (not only for matching
> files in archives)?  I guess this is unexpected by many unzip users, and
> it likely allows for other attacks on unzip and on the zip.vim plugin,
> by providing a filename that includes glob patterns in it so that a
> different archive would be processed.


It certainly surprised me! That being said, given the potential danger
is I guess limited to extracting multiple archives you didn't expect but
you still cannot control the location (without using the
member-named-leading-dash-d trick as well) and you also have to convince
the user to have multiple zip archives in the same directory, it seems
harder to pull anything off like this.

Note: unzip won't re-parse globs in a directory segment, only the final
filename segment.


> Otherwise, a workaround for the original issue would be to prefix the
> filename with ./ as we most recently discussed in this thread:
>=20
> https://www.openwall.com/lists/oss-security/2024/11/06/1


unzip will not permit you to run:

```
unzip foo.zip ./dir1/member
```

in order to extract an archive member named "dir1/member". There is no
./ member in the archive, it's not resolved like a filesystem path.

It will print a diagnostic: "caution: filename not matched:
./dir1/member" and exit 11 (no matching files were found.)


--=20
Eli Schwartz

--------------F4WPK3yEtSaJqISbyxhahN4F--

--------------0vj0dirfhmljVCCk54jjKjSC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCZ9JnGQUDAAAAAAAKCRCEp9ErcA0vV4za
AQCV79Yj+SeFslya1ZNgd1oFerLv9lTD0VogAjS3dG/uvgD/cKiL3ERifHzjEU5aYbxQ0PLKZHUG
sTFMCqB9gS1dcQQ=
=/woV
-----END PGP SIGNATURE-----

--------------0vj0dirfhmljVCCk54jjKjSC--
