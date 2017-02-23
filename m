X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5049" "Thursday" "23" "February" "2017" "20:59:12" "+1100" "Steven Haigh" "netwiz@crc.id.au" "<bfe85c7d-6886-fdfe-2dbe-6b86ee6a5a80@crc.id.au>" "139" "[oss-security] Re: Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" nil nil nil "2" "2017022309:59:12" "[oss-security] Re: Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" (number mark "U       netwiz@crc.i Feb 23  139/5049  " thread-indent "\"[oss-security] Re: Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe\"\n") "<20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>" ("<E1cg96x-0006uk-4m@xenbits.xenproject.org>" "<20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14153 invoked by uid 550); 23 Feb 2017 13:05:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21568 invoked from network); 23 Feb 2017 09:59:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=crc.id.au; s=default;
	t=1487843960; bh=xbSitZq0j45uJ5L91psVrP1BjJ33BszSdwA4Q50LxVM=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To;
	b=ts6/J09xIcuoluW4eGO06zc54JEde9IaVQlVp0bUfxup7Nb2K6956Hi/5qo2Ac7LB
	 U5czwBG8yyM/ELwlPK4lJmwjDyW0cexa+1J4/bkVwxla6GzJ42Nqh2z4nqRHSw2R/O
	 6VYraFH+5TrSQOBx8n2aONzrFi5ugbkS4Z49wx6M=
To: =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>,
 "Xen.org security team" <security@xen.org>
References: <E1cg96x-0006uk-4m@xenbits.xenproject.org>
 <20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>
Cc: xen-users@lists.xen.org, xen-announce@lists.xen.org,
 oss-security@lists.openwall.com, xen-devel@lists.xen.org
From: Steven Haigh <netwiz@crc.id.au>
Message-ID: <bfe85c7d-6886-fdfe-2dbe-6b86ee6a5a80@crc.id.au>
Date: Thu, 23 Feb 2017 20:59:12 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="7leCDmFcWVxCJBLejue6DGmDE8Kwbn4xX"
Subject: [oss-security] Re: Xen Security Advisory 209 (CVE-2017-2620) -
 cirrus_bitblt_cputovideo does not check if memory region is safe

--7leCDmFcWVxCJBLejue6DGmDE8Kwbn4xX
Content-Type: multipart/mixed; boundary="FGuN5JQL5BLwhNXqIBwMCXSwlmuN9BLIU";
 protected-headers="v1"
From: Steven Haigh <netwiz@crc.id.au>
To: =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>,
 "Xen.org security team" <security@xen.org>
Cc: xen-users@lists.xen.org, xen-announce@lists.xen.org,
 oss-security@lists.openwall.com, xen-devel@lists.xen.org
Message-ID: <bfe85c7d-6886-fdfe-2dbe-6b86ee6a5a80@crc.id.au>
Subject: Re: Xen Security Advisory 209 (CVE-2017-2620) -
 cirrus_bitblt_cputovideo does not check if memory region is safe
References: <E1cg96x-0006uk-4m@xenbits.xenproject.org>
 <20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>
In-Reply-To: <20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>

--FGuN5JQL5BLwhNXqIBwMCXSwlmuN9BLIU
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 23/02/17 20:43, Roger Pau Monn=C3=A9 wrote:
> On Tue, Feb 21, 2017 at 12:00:03PM +0000, Xen.org security team wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA1
>>
>>             Xen Security Advisory CVE-2017-2620 / XSA-209
>>                               version 3
>>
>>    cirrus_bitblt_cputovideo does not check if memory region is safe
>>
>> UPDATES IN VERSION 3
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Public release.
>>
>> ISSUE DESCRIPTION
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> In CIRRUS_BLTMODE_MEMSYSSRC mode the bitblit copy routine
>> cirrus_bitblt_cputovideo fails to check wethehr the specified memory
>> region is safe.
>>
>> IMPACT
>> =3D=3D=3D=3D=3D=3D
>>
>> A malicious guest administrator can cause an out of bounds memory
>> write, very likely exploitable as a privilege escalation.
>>
>> VULNERABLE SYSTEMS
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Versions of qemu shipped with all Xen versions are vulnerable.
>>
>> Xen systems running on x86 with HVM guests, with the qemu process
>> running in dom0 are vulnerable.
>>
>> Only guests provided with the "cirrus" emulated video card can exploit
>> the vulnerability.  The non-default "stdvga" emulated video card is
>> not vulnerable.  (With xl the emulated video card is controlled by the
>> "stdvga=3D" and "vga=3D" domain configuration options.)
>>
>> ARM systems are not vulnerable.  Systems using only PV guests are not
>> vulnerable.
>>
>> For VMs whose qemu process is running in a stub domain, a successful
>> attacker will only gain the privileges of that stubdom, which should
>> be only over the guest itself.
>>
>> Both upstream-based versions of qemu (device_model_version=3D"qemu-xen")
>> and `traditional' qemu (device_model_version=3D"qemu-xen-traditional")
>> are vulnerable.
>>
>> MITIGATION
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Running only PV guests will avoid the issue.
>>
>> Running HVM guests with the device model in a stubdomain will mitigate
>> the issue.
>>
>> Changing the video card emulation to stdvga (stdvga=3D1, vga=3D"stdvga",
>> in the xl domain configuration) will avoid the vulnerability.
>>
>> CREDITS
>> =3D=3D=3D=3D=3D=3D=3D
>>
>> This issue was discovered by Gerd Hoffmann of Red Hat.
>>
>> RESOLUTION
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Applying the appropriate attached patch resolves this issue.
>>
>> xsa209-qemuu.patch       qemu-xen, qemu upstream
>> (no backport yet)        qemu-xen-traditional
>=20
> It would be nice to mention that (at least on QEMU shipped with 4.7) the
> following patch is also needed for the XSA-209 fix to build correctly:
>=20
> 52b7f43c8fa185ab856bcaacda7abc9a6fc07f84
> display: cirrus: ignore source pitch value as needed in blit_is_unsafe

I did request that an updated XSA be issued with this patch - as at the
moment, nobody will be able to apply the XSA only patch to any other
version of Xen.

--=20
Steven Haigh

Email: netwiz@crc.id.au
Web: https://www.crc.id.au
Phone: (03) 9001 6090 - 0412 935 897


--FGuN5JQL5BLwhNXqIBwMCXSwlmuN9BLIU--

--7leCDmFcWVxCJBLejue6DGmDE8Kwbn4xX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJYrrJ0AAoJEEGvNdV6fTHchHcQAI2YVU5jFF2rsvJ1+mUSIfTX
f7yLTN+UGPhRYoybLqU0PIHnglwgtLkq3yfz8RzvaSqCqLBmukvAimsEgKqql2Z3
0EepSIDU+/idy0WwrlPDsZPNouLyJ7H3XM1oER3h3rKGJgL7B1u/vdeZ6z+qDlGV
hQ9Isw4nqHjFhEfbY19Mxa/RXuRFEBNAXlS7pdRWk78kHvyANFj55hMGTtXZWtme
sQy096wwbaeZYs63V+uRUOCI6kVcX0HB2WLR7VmQIf3+cgI0LFx9QnqxS7VVmiKC
FdlLt6LIGyEMaXU4ujZV8Mao3yyvTwnw3+t+bz339KTk31LljYCtqltkWpkLfbSE
yHLU1N9EihXmCXILzQSvCa8z1zZe25YR3EZABYsTBirKRrSyGubSl/Ay3WWT7SlT
//Aa36xqH1UD0zo4gdL7IFxQKZmO+IuPD8qWJLquu2jNgG592xrWcWgO8AVxJFUl
r32xCMpl+IRQ65dQKnLSbE026M2l0AxOSrzbru3UxvVsDizgWKg1nqaVF9LgLsZH
MAQCiSN4GwEjLcEQt8Ark9+P4JualCbmm/zRNVa6Tw7J6g80pZMO8wvPy8nzyDMx
iu5tGuQRAMenAYVLerm6mQ5P7Oex7CA5Um6mAiJu3m/nQFSBjeZ3RNi5U9K416Zm
2NVrmuydkcFpzquqGxre
=O9Nq
-----END PGP SIGNATURE-----

--7leCDmFcWVxCJBLejue6DGmDE8Kwbn4xX--
