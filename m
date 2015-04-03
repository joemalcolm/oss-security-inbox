X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3074" "Friday" "3" "April" "2015" "01:09:39" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<551E2093.5000902@gmail.com>" "72" "Re: [oss-security] membership request  to the closed linux-distros security mailing list" nil nil nil "4" "2015040305:09:39" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        danielmicay@ Apr  3   72/3074  " thread-indent "\"Re: [oss-security] membership request  to the closed linux-distros security mailing list\"\n") "<20150402234357.GB9941@hunt>" ("<550C19ED.9030901@enea.com>" "<20150402234357.GB9941@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5685 invoked by uid 550); 3 Apr 2015 05:09:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5661 invoked from network); 3 Apr 2015 05:09:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=ZgGAmzcmNUVsm+si0sQkKsbS6T7XDD11chXytEVP0e8=;
        b=eeDD6nsMgjwq6G7AMv9yopg8fQx9BQeSKTUoyxutRnucHRDncPKs2PloTSnsW+YGYj
         9LE443cpqhtMVSE5gdB2Oebig8bFwriTex4Xj5QPsGSR9AgVYB5dVQN5NQRMJCZTFfyA
         ZhnIkRwTWd0S703gsJD2d6V7AV03zX+oN/ZVzMZ57fT36pDLt+IxGPPpR/0YAMGns4PB
         1lUEVx1OaDxK+vVnwr0dUJLlG3dZucFt3j5v9RlXH7Ik+OjEvc770FFdf4su0I1a+tss
         HbWZbdPejcrGJ+iMLVyA/CMW+qw1crGIioy2P5l01nb5FTDgBVJPRcavl1OMN0uMYdX8
         GBdw==
X-Received: by 10.50.4.97 with SMTP id j1mr2061735igj.46.1428037785657;
        Thu, 02 Apr 2015 22:09:45 -0700 (PDT)
Message-ID: <551E2093.5000902@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <550C19ED.9030901@enea.com> <20150402234357.GB9941@hunt>
In-Reply-To: <20150402234357.GB9941@hunt>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="VljEpE6vBLsfBG0MW5Sw9H73IHTONDjCD"
Date: Fri, 03 Apr 2015 01:09:39 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request  to the closed linux-distros
 security mailing list
To: oss-security@lists.openwall.com

--VljEpE6vBLsfBG0MW5Sw9H73IHTONDjCD
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 02/04/15 07:43 PM, Seth Arnold wrote:
> On Fri, Mar 20, 2015 at 02:00:29PM +0100, Sona Sarmadi wrote:
>> On behalf of Enea  Software AB, I would like to request membership to
>> the closed linux-distros security mailing list.
>=20
> Speaking strictly for myself, I'm still somewhat skeptical; the security
> announce archives http://mail.lists.enea.com/pipermail/security-announce/
> do show some security updates, but (guessing) 15% of the actual patch
> links I tried to follow no longer exist.
>=20
> Furthermore, the advisories all suggest downloading patches via http and
> offer no mechanism to validate the patches before applying them. Consider
> this recent advisory:
> http://mail.lists.enea.com/pipermail/security-announce/20150326/000064.ht=
ml
>=20
> - there's no gpg signature on this advisory
> - there's no cryptographic checksums in the advisory to authenticate
>   the patch even if the advisory were signed
> - there's no ascii-armored signatures in the patches
> - there's no detached signatures at
>   http://linux.enea.com/5.0-beta-m400/patches/
>   or at
>   http://linux.enea.com/4.0/patches/
>=20
> If downloading patches and applying them by hand is really the
> distribution model Enea has chosen, then it feels like the provenance
> of updates is seriously lacking.
>=20
> In my opinion, until some more of the security basics are covered,
> joining linux-distros@ is premature.

I guess Ubuntu has to be dropped from the linux-distros then, because
www.ubuntu.com appears to be http-only and the ISO download is entirely
insecure. The security notices are also served insecurely there:

http://www.ubuntu.com/usn/

Am I missing something... ? It doesn't make much sense to criticize this
when you folks are doing the same. I do get the impression that Enea
Linux is handling security poorly (where are all of the other issues?)
but this bothered me.


--VljEpE6vBLsfBG0MW5Sw9H73IHTONDjCD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVHiCYAAoJEPnnEuWa9fIqaZgP/RCJ9u6D/Yhh6a3va33Y22L9
UyIBUrpmb2pA6TI6l/RJdEd3vaxHYr+iy8xjWB+mvdb0jwb0InsKWY+c0r5Og1LV
BVsRtc3rWbSBH+ZDLwBIZiJPVWOsSvOwq9FE+34VZoBEOAq92Q2alYDDGDi+whYl
+qxY13r8hRLPvKlT81rLysDOlGEvZp/E0hRoIAOAFKSTxx0dQ6ewwE4RkmeeM4+O
rlDSK8c1bSd/Bg2iUaghLjcxCvb/nIFNdO6ontmMl4NKrPoD7IDhf+47ApwtmzBT
kK3nadyvFbK1HX+aPAH9jmN01UWyXr8kBI4gKovkH8Ab4frZ15+BagE1Ok9ejaJo
ksnvSAxUh/tYJT2k42ZT4tiWjGBDTnVc0RDJyJkAC/jV22aptXINfXtCD73IW/IL
inLqfmYBHgCUe5m93OoRHG7iL8UQkF3PsbUW7wppEcWVLs39/OTBniCSp4f55aKv
kQ5Abd9Bh7dXh+ArX869mGK741Eeyl6t3TfmGA9e7EVr5PPOflRhP8uyi++Xt3q3
M0ZMr+vvRK6+pvMqbfl2Iuam7vwuiscdg76lbN91xwuBX+XdiibotIO6suMBIdKq
Rp/YDXPbaH07LT4yt2mrcaiB+YHy03pPUej6cb+TIQBPCKKUaxveYb5Ev2ge0LVZ
f6rvU8w1V8PknOtqcDgr
=Tlx6
-----END PGP SIGNATURE-----

--VljEpE6vBLsfBG0MW5Sw9H73IHTONDjCD--
