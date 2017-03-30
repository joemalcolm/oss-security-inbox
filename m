X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3261" "Thursday" "30" "March" "2017" "09:17:45" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<73f91775-3811-b90e-66a3-69620c3b5349@canonical.com>" "85" "Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" nil nil nil "3" "2017033014:17:45" "[oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" (number mark "U       tyhicks@cano Mar 30   85/3261  " thread-indent "\"Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework\"\n") "<CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>" ("<f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>" "<CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25841 invoked by uid 550); 30 Mar 2017 14:18:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25821 invoked from network); 30 Mar 2017 14:18:02 -0000
To: Lokesh Ubuntu <lokesh.ubuntu@gmail.com>, oss-security@lists.openwall.com
References: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>
 <CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>
Cc: security@ubuntu.com
From: Tyler Hicks <tyhicks@canonical.com>
Message-ID: <73f91775-3811-b90e-66a3-69620c3b5349@canonical.com>
Date: Thu, 30 Mar 2017 09:17:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="uua3GDUPn3xTlOUmC2rNN5eTSmMI17NwL"
Subject: Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation
 in XFRM framework

--uua3GDUPn3xTlOUmC2rNN5eTSmMI17NwL
Content-Type: multipart/mixed; boundary="AmEtChQAlpAvmfKA4kIpOtwPMc2M4KOEc";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: Lokesh Ubuntu <lokesh.ubuntu@gmail.com>, oss-security@lists.openwall.com
Cc: security@ubuntu.com
Message-ID: <73f91775-3811-b90e-66a3-69620c3b5349@canonical.com>
Subject: Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation
 in XFRM framework
References: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>
 <CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>
In-Reply-To: <CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>

--AmEtChQAlpAvmfKA4kIpOtwPMc2M4KOEc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A PoC is not publicly available for this issue.

Tyler

On 03/29/2017 10:18 PM, Lokesh Ubuntu wrote:
> Is there any POC for this to conclude? Thanks.
>=20
> Regards, Lokesh
>=20
> On Mar 30, 2017 03:14, "Tyler Hicks" <tyhicks@canonical.com
> <mailto:tyhicks@canonical.com>> wrote:
>=20
>     A security issue was reported by ZDI, on behalf of Chaitin Security
>     Research Lab, against the Linux kernel in Ubuntu. It also affected the
>     upstream kernel.
>=20
>     Chaitin Security Research Lab discovered that xfrm_replay_verify_len(=
),
>     as called by xfrm_new_ae(), did not verify that the user-specified
>     replay_window was within the replay state buffer.
>=20
>     This allowed for out-of-bounds reads and writes of kernel memory.
>     Chaitin Security showed that this can lead to local privilege escalat=
ion
>     by using user namespaces in order to configure XFRM. XFRM configurati=
on
>     requires CAP_NET_ADMIN so this issue is mitigated in kernels which do
>     not enable user namespaces by default.
>=20
>     Fixes:
>     -
>     https://git.kernel.org/linus/677e806da4d916052585301785d847c3b3e6186a=
 <https://git.kernel.org/linus/677e806da4d916052585301785d847c3b3e6186a>
>     -
>     https://git.kernel.org/linus/f843ee6dd019bcece3e74e76ad9df0155655d0df=
 <https://git.kernel.org/linus/f843ee6dd019bcece3e74e76ad9df0155655d0df>
>=20
>     Tyler
>=20
>=20



--AmEtChQAlpAvmfKA4kIpOtwPMc2M4KOEc--

--uua3GDUPn3xTlOUmC2rNN5eTSmMI17NwL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJY3ROJAAoJENaSAD2qAscKALMQAIvStOcp8H90o2/GaX0E6gHi
7+HnM4kYuY2zbCi3TzISuD8L1AlGdlh+/f1WzZoQXR+aJHgvAHBjop7qbjZfnBJX
hD5noRjFtjlrFwd0X5cofFFfSZldD1x483LbdbAvPHubndcMNynmWJXjBruad2ek
642CVKYB5lEr7uz3GXCduNt0VeIdCRMCX6lxluKjJPVL4huQPENyL4VzMnK3mv+i
FN4XWSfQ+GdrXDkcnP4v7iDWp9HlbVqf4moDoezbgnzMdWgKOGWSro3MI0bM2e9Z
FoaFFiMAI8xSyU39VOcstVFsELovFw1ci3WgYD9pzf8WwGlaPbfh6tRcQwjXXIaw
15fDAYIgeFkCOsmbAHOWjyRomT/E1bz0f7uLfqq/4GiA8hGFuSj1gwrWlCwX0mMs
6iYoBOTC0HJ7KyXflgM2Eq6gyMHkEXjj/61JRNiiZYtYYbC19naHUMmpJ9xM/Haz
E7/WOscC7SdOs2Bxq0vIKe3FJZ6moEKB5EL6tiKDXMzLE3R8z2kJp4zPnH8PmIv2
RMfqutta5EzGxyouDcQH+d156T71vCRCevyYY00dp3VA838K+EGu6+2VxNRngOKE
1+u0LAOjWzx/BvBrcBaK93Ma0OLiCyqF4OciZtfc33hNcr9Iyr04yOKyp+QhYcxL
wobsQC8fUe++9dwKNhZR
=BN1k
-----END PGP SIGNATURE-----

--uua3GDUPn3xTlOUmC2rNN5eTSmMI17NwL--
