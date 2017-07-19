X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3021" "Wednesday" "19" "July" "2017" "23:43:59" "+0200" "Andreas Stieger" "astieger@suse.com" "<1c012c33-5b6e-0b1d-f12e-1efdeb2bab4a@suse.com>" "80" "Re: [oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47" "^Date:" nil nil "7" "2017071921:43:59" "[oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47" (number mark "        astieger@sus Jul 19   80/3021  " thread-indent "\"Re: [oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47\"\n") "<6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>" ("<6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15973 invoked by uid 550); 19 Jul 2017 21:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15955 invoked from network); 19 Jul 2017 21:44:26 -0000
References: <6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>
Organization: SUSE Linux GmbH
Message-ID: <1c012c33-5b6e-0b1d-f12e-1efdeb2bab4a@suse.com>
MIME-Version: 1.0
In-Reply-To: <6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="01ctAtg1WT7BUa3l1f5jLWXMmHe7I3ffx"
Date: Wed, 19 Jul 2017 23:43:59 +0200
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to
 2.8.47
To: oss-security@lists.openwall.com

--01ctAtg1WT7BUa3l1f5jLWXMmHe7I3ffx
Content-Type: multipart/mixed; boundary="aU4uE52ff2WRGas57cL24XAe53qPvM4wE";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <1c012c33-5b6e-0b1d-f12e-1efdeb2bab4a@suse.com>
Subject: Re: [oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to
 2.8.47
References: <6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>
In-Reply-To: <6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>

--aU4uE52ff2WRGas57cL24XAe53qPvM4wE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello,

On 07/19/2017 10:44 PM, Alan Coopersmith wrote:
> I noticed some press coverage of this but haven't seen mail here yet:
>
> http://blog.senr.io/blog/devils-ivy-flaw-in-widely-used-third-party-code-=
impacts-millions
>
> https://www.genivia.com/advisory.html#Security_advisory:_CVE-2017-9765_bu=
g_in_certain_versions_of_gSOAP_2.7_up_to_2.8.47_(June_21,_2017)
>
> https://www.genivia.com/changelog.html#Version_2.8.48_upd_(06/21/2017)
>
> "a potential vulnerability to a large and specific XML message over
> 2GB in size
>  (greater than 2147483711 bytes to trigger the software bug). A buffer
> overflow
>  can cause an open unsecured server to crash or malfunction after 2GB is
>  received."
>
> Unfortunately, the subversion repo on sourceforge for gSOAP only has
> full releases, not individual changes, in each commit, so the fix
> appears to be somewhere mixed in [r119] on
> https://sourceforge.net/p/gsoap2/code/commit_browser
> making it a challenge for distros who want to patch instead of upgrade.
>

Or just ask them, see https://bugzilla.suse.com/show_bug.cgi?id=3D1049348

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)



--aU4uE52ff2WRGas57cL24XAe53qPvM4wE--

--01ctAtg1WT7BUa3l1f5jLWXMmHe7I3ffx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEELRFTXKGyY4WwZ7oiLNapVeFZRUYFAllv0q0ACgkQLNapVeFZ
RUY+ag//WtiYVAnxcTZK28hn+dAff5raufV028JFjr3UQcpH+K7J7PXWIl5Dhz4T
kSSy2e2N2E9+2FIrF7FDLKWH7WNBSrTzhzmcxTiOsAAcA30+to5rMHgDwEOWQtQo
XDqUp+4ozeFO3D/8hgwy2qU4dV0xZ9dp0jFwFAbD8dwpB5C6I+9kJyJWKCt6hFk5
GZWtguegyKYf/ZTFqiR930eKF+T/CNifz4A7WhxzfBrfHhhlFBBmePdTtivYVHhR
vvRfwlomuhuzuytfjcPJqUHWOej3Zdd5OmvQhhzLw1dSOiNtPZRndnQWkYHPfxgd
3ML+Y9A4RkiwSUsTeQzaLxvsILNAVfOqfvr8gYET2OyVXOIzoy+BQzLKtLkOKFlm
NXoUu4UgguwPP0qDeSktfPjbxheC1jzQn95RIFGBNP6yenFzOal6ij0O1SBqD9jg
EJJNC6L9DP3RDSBqAG/Umx4hiLvpZbW2HianvYwmIfbYmuJtQWxrTn2tB0gJHdaR
0tfZva3CJEb2H2iHrU03ek/z48o4qaNH4Fnb/4IlHEg1zwP01pUlWg5VWCWxigJ3
67sCI9S8I24NTyriv/Qml8QWU8At9NBgYADUewo7wBeQxpI5QwIE9g1LjyMxxtDn
CZErp+iN59x/y7zfvLvxYN42ecYweIeLz9YQw+ZQFe0exUGnr4s=
=1UHl
-----END PGP SIGNATURE-----

--01ctAtg1WT7BUa3l1f5jLWXMmHe7I3ffx--
