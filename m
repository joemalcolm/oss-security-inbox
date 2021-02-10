X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3278" "Wednesday" "10" "February" "2021" "16:18:20" "+0100" "Alexandros Toptsoglou" "atoptsoglou@suse.de" "<9e832bad-8dc7-dd8a-eadd-feab14ab2507@suse.de>" "90" "Re: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" nil nil nil "2" "2021021015:18:20" "[oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" (number mark "U       atoptsoglou@ Feb 10   90/3278  " thread-indent "\"Re: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()\"\n") "<CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>" ("<CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18109 invoked by uid 550); 10 Feb 2021 15:44:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14256 invoked from network); 10 Feb 2021 15:18:32 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
To: oss-security@lists.openwall.com, Rohit Keshri <rkeshri@redhat.com>
References: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>
From: Alexandros Toptsoglou <atoptsoglou@suse.de>
Message-ID: <9e832bad-8dc7-dd8a-eadd-feab14ab2507@suse.de>
Date: Wed, 10 Feb 2021 16:18:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="wD2CjJIkKIDkulA1tPIcmD84Fs9rwgqFJ"
Subject: Re: [oss-security] CVE-2021-20200: Linux kernel: close race between
 munmap() and expand_upwards()/downwards()

--wD2CjJIkKIDkulA1tPIcmD84Fs9rwgqFJ
Content-Type: multipart/mixed; boundary="OjsJyqi1pnQVMJPDmqLMWiykNINpe5uW8";
 protected-headers="v1"
From: Alexandros Toptsoglou <atoptsoglou@suse.de>
To: oss-security@lists.openwall.com, Rohit Keshri <rkeshri@redhat.com>
Message-ID: <9e832bad-8dc7-dd8a-eadd-feab14ab2507@suse.de>
Subject: Re: [oss-security] CVE-2021-20200: Linux kernel: close race between
 munmap() and expand_upwards()/downwards()
References: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>
In-Reply-To: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>

--OjsJyqi1pnQVMJPDmqLMWiykNINpe5uW8
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

is the information listed here correct? Especially the CVE-2021-20200
assignment.

In project-zero reference at the last comment CVE-2020-29369 is mentioned.

Best regards,

Alexandros

On 2/10/21 4:04 PM, Rohit Keshri wrote:
> Hello Team,
>=20
> A use-after-free flaw may be seen due to a race problem while in
> detach_vmas_to_be_unmapped() in mm/mmap.c in VMA access while
> munmap(). This flaw could allow a local attacker with a user privilege
> to crash the system, because VMA with VM_GROWSDOWN or VM_GROWSUP flag
> set may change their size under mmap_read_lock(). This vulnerability
> could even lead to a kernel information leak problem.
>=20
>=20
> 'CVE-2021-20200' was assigned by Red Hat.
>=20
> References:
> https://bugs.chromium.org/p/project-zero/issues/detail?id=3D2056
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D246c320a8cfe0b11d81a4af38fa9985ef0cc9a4c
>=20
> Thanks and Regards
> ..
> Rohit Keshri / Red Hat Product Security Team
> PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D
>=20
> secalert@redhat.com for urgent response
>=20

--=20
Alexandros Toptsoglou <atoptsoglou@suse.de>
Security Engineer
OpenPGP fingerprint: C270 3848 AA4A 783A 9848  BB06 56A3 3D9C B652 1869

SUSE Software Solutions Germany GmbH
Maxfeldstr. 5
90409 Nuremberg
Germany
(HRB 36809, AG N=C3=BCrnberg)
Managing Director: Felix Imend=C3=B6rffer


--OjsJyqi1pnQVMJPDmqLMWiykNINpe5uW8--

--wD2CjJIkKIDkulA1tPIcmD84Fs9rwgqFJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwnA4SKpKeDqYSLsGVqM9nLZSGGkFAmAj+TwFAwAAAAAACgkQVqM9nLZSGGmV
RBAAlxOp0h3Cc2eoJw9VYaGhb+EB/TzSLGS/8TFM9Md5nyfYPfI/3+p8NBGIbvaHEpwO8hZC8vx5
Ydh95KJCbBONjQbeTvTRDP9VkHBQ9H8pv0Ud6dfZOdvDTT2hIjsuBN6LwdrcXVRFHUfxFpXLxUwb
hPvy1T/93HrD9cmcogXtlV9Jq80LsVvzSjxubiBypkFijv8HYWiK1QqfaNoc8NMI+6HPWA2v/ri0
pomPYhcnzqmNXMxY8byMwHQjbfqOS68PJRJ71vdiNafM1OgPQpWlgrxBh+URbmCP3MfwfYnxT6EQ
1qk6FhFXsWrnXypncR9wrvicY19s9HXuc6P7Wxvkipw3aihYBgLB/ZhTFWMBScGAA8Gb4Eqz0X63
7jOrdaHxYD8oJoMEZZ/CqkmHDtmS/xUXDMxPH3++nAGt2rTEAsXh4t6YnBz6j7U7vmEGIeGPm5i4
iR5BJGRYats3ZZjvXjd2Ba0l4DScNc7esVZoG+Pkpo0+NU1DTGKQvBFsDx/Ixq6m3VHOw0EjTPSn
DNKM1x+q8E2TeXaCQfCYtH87m+k7uc014eeA9ySGBXSErvJFMZWuwiy/xl4alj7TdKWVuOAA2nNy
tTK5E6bvPZZNl6uuiIdqa9MvG5zBtljKzu1R8zGXuJJmUBgjsXBy/Ve3xiS3ij92x1b3Obc1isz0
P3s=
=0ave
-----END PGP SIGNATURE-----

--wD2CjJIkKIDkulA1tPIcmD84Fs9rwgqFJ--
