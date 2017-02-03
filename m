X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3175" "Friday" "3" "February" "2017" "18:02:53" "+0100" "Andreas Stieger" "astieger@suse.com" "<51722bb1-e4c8-4aa3-0008-0994c35ff2ce@suse.com>" "88" "Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" nil nil nil "2" "2017020317:02:53" "[oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" (number mark "U       astieger@sus Feb  3   88/3175  " thread-indent "\"Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read\"\n") "<26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>" ("<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>" "<26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15783 invoked by uid 550); 3 Feb 2017 17:03:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15764 invoked from network); 3 Feb 2017 17:03:14 -0000
To: oss-security@lists.openwall.com
References: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
 <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <51722bb1-e4c8-4aa3-0008-0994c35ff2ce@suse.com>
Date: Fri, 3 Feb 2017 18:02:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="FPwx8001WBlbTxbONasiGRx9NQA7bCNFJ"
Subject: Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption /
 SLAB-Out-of-Bounds Read

--FPwx8001WBlbTxbONasiGRx9NQA7bCNFJ
Content-Type: multipart/mixed; boundary="Cpt2kxjUvkBnxDhUJn0CrHtxveJaj4eef";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <51722bb1-e4c8-4aa3-0008-0994c35ff2ce@suse.com>
Subject: Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption /
 SLAB-Out-of-Bounds Read
References: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
 <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
In-Reply-To: <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>

--Cpt2kxjUvkBnxDhUJn0CrHtxveJaj4eef
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,


On 02/03/2017 12:29 PM, John Haxby wrote:
> On 03/02/17 05:52, Wade Mealing wrote:
>> Mounting a crafted EXT4 image read-only leads to a memory corruption and
>> SLAB-Out-of-Bounds Reads (according to KASAN).  Since the mounting
>> procedure is a privileged operation, an attacker is probably not able
>> to trigger this vulnerability on the commandline.
>> Instead the automatic mounting feature of the GUI via a crafted
>> USB-device is required.
>>
>> From full disclosure at:
>>
>> http://seclists.org/fulldisclosure/2016/Nov/75
>>
>> If it has been assigned elsewhere, I am unable to see it.
> The bugzilla link from the above isn't accessible.  Are we missing any
> useful information?


https://bugzilla.suse.com/show_bug.cgi?id=3D1023377#c1

RH: https://bugzilla.redhat.com/show_bug.cgi?id=3D1395190
ML: http://www.spinics.net/lists/linux-ext4/msg54572.html

Introduced in:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D952fc18ef9ec707ebdc16c0786ec360295e5ff15
(first in v3.6-rc1...)

Fix:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D3a4b77cd47bb837b8557595ec7425f281f2ca1fe
(first in v4.10-rc1)


Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)



--Cpt2kxjUvkBnxDhUJn0CrHtxveJaj4eef--

--FPwx8001WBlbTxbONasiGRx9NQA7bCNFJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEELRFTXKGyY4WwZ7oiLNapVeFZRUYFAliUt70ACgkQLNapVeFZ
RUYQPxAAoQK5MvvsOjHz5CaUNMFqeepGP/lvsLGX3Ul2loj7KYG6xknS/rdtrMdI
YUapqQJEC7iSgw0iUMcfUoRONe+/I82Sxqtpv5uTmXj47x2soOxt0C3IYDJbkf7Q
hXTfIdKCavFH75EY2rJYBBdethPoif6ZFMRtZEj7PiBPczbHyUKDwLCmn2Eu5Ul7
YCCXYx9S25ewNgDRthedTwqhsmrqcjhNClktRhzzcuqtn4HpDrddf7giniwzGB4j
QJOixGHm7za4tE4sxAoWDTaC2MdMVAn3twhtPJen+IL9+RSrA9CDUlS0/FYUpBX8
zw3KWDzgpR12PWNCm2gkx7QNdrAm1FE1hbCzlPGJ59NDRpONVVebyPR4qyKGKsvs
AYuPBdhg1TdSSRtH8hv48xIdXCl23NKOFPmLBV3e7zmW1etgi1W/r2LW459Ket1e
hXGhXyi4eWelAShrjB1Z/EljzB3CmuCIKvtXjeVw4kBlCNjmk9748FCaJujzUKOL
TYEnIYLwj1u+gj07or0ZAWgfS/IMPV94N4k2rjeysy3a3k5+lbzbKIXNgW8DNb67
hXK7ukGBAtWpbZiZ+xHmhwv4vdqFWgWYZ4PY5iJrD8niJk8FfQoc1dRcxlKLBG8A
lYdbOx66DVC/thvt1uW3zncr2GdxJz2LAOsB0HWyglBngDM0DRU=
=1piS
-----END PGP SIGNATURE-----

--FPwx8001WBlbTxbONasiGRx9NQA7bCNFJ--
