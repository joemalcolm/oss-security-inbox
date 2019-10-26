X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6184" "Saturday" "26" "October" "2019" "22:44:16" "+0000" "Stiepan" "stie@protonmail.ch" "<NdwFuQOPjKC52xswSya1RvTkfft8C51AgZmmfCHmCTam-k3vqW8IlM0Gqm-Q2jCXB_uH4YWL4MAOjSiGOCaaHVR4jmlNu7r1so9j4Yi40bU=@protonmail.ch>" "133" "Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" "^Date:" nil nil "10" "2019102622:44:16" "[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" (number mark "        stie@protonm Oct 26  133/6184  " thread-indent "\"Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?\"\n") "<20191025212309.GA18967@pisco.westfalen.local>" ("<20191025212309.GA18967@pisco.westfalen.local>") nil nil nil nil nil nil nil "Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24243 invoked by uid 550); 27 Oct 2019 10:33:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23725 invoked from network); 26 Oct 2019 22:44:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=default; t=1572129858;
	bh=fn1xeP3W9RwccFk2FlleBhZCFLTfCDsN3noeWVtZ9UU=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	 From;
	b=Hx+sArH3S6eYLMSZeUuk1/IEq2LBEDaWnVsxSDFEBrH7KUrr1t6x1bbj/w3P8ncPY
	 UrAJwJjH2Dhucyjdh+ExTKAlM4LYMIPnsERskHA0V6CqhvkDe2DBw0i0NtYlpt5PRo
	 90iA76DqRSCe6TkqGRwESlCfyAoQ/QjUcX6Eo4jY=
Message-ID: <NdwFuQOPjKC52xswSya1RvTkfft8C51AgZmmfCHmCTam-k3vqW8IlM0Gqm-Q2jCXB_uH4YWL4MAOjSiGOCaaHVR4jmlNu7r1so9j4Yi40bU=@protonmail.ch>
In-Reply-To: <20191025212309.GA18967@pisco.westfalen.local>
References: <20191025212309.GA18967@pisco.westfalen.local>
Feedback-ID: wnsnnc8Us3MVqt1IALGduDJl-d16B_hEkg50pF7qo11mpeysEHmUOGy-yvw8MEApAPX3TXcPDHQwu7hti-kzSw==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="---------------------ff0ed50b2c58fe81ac23b633bfb2e363"; charset=UTF-8
Date: Sat, 26 Oct 2019 22:44:16 +0000
From: Stiepan <stie@protonmail.ch>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

-----------------------ff0ed50b2c58fe81ac23b633bfb2e363
Content-Type: multipart/mixed;boundary=---------------------7f5294274cb5d49fe0244abc5671eeeb

-----------------------7f5294274cb5d49fe0244abc5671eeeb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

As someone who used Android & did my studies on how to secure it and what w=
as missing for that, I can say that Androids still dream of electric blowfi=
shes - or rather threefish-512 ;) - and will do so for a while, especially =
now that the only part that was open seems is no more. By that virtue, it l=
ost the biggest  advantage it had versus the better polished iOS. And doing=
 that helps red-scarfed black-hats, who can hack into most of the open-sour=
ce Android variants, which would not be the case if the latter had access t=
o up to date, well-vetted security infos (unlike that late 2018 fix that ma=
de it even more vulnerable), and that extends to linux-distros by the by. E=
mbargoes are bad.
Sure, that made me buy an iPhone, which is good commercially for Apple and =
I salute their privacy makeup*, but being forced to do so as the collateral=
 victim of a trade war is less cool.
*as in definition 6 of the wordreference entry for that word, "A special ex=
amination for a student who has been absent ...".

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Friday, October 25, 2019 11:23 PM, Moritz M=C3=BChlenhoff <jmm@inutil.or=
g> wrote:

> Android advisories used to contain commit references to AOSP change sets,=
 but
> that's not the case for https://source.android.com/security/bulletin/andr=
oid-10.
>=20

> Typically most of these issues are specific to Android, but there are a f=
ew which
> per the CVE description are possibly affecting software packaged/used by =
Linux
> distros as well, one example:
>=20

> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-9325:
> "In libvpx, there is a possible out of bounds read due to a missing bound=
s check.
> This could lead to remote information disclosure with no additional execu=
tion
> privileges needed. "
>=20

> Similar for CVE-2019-9232, CVE-2019-9278, CVE-2019-9325, CVE-2019-9371, C=
VE-2019-9433,
> CVE-2019-9423 (also libexif and opencv)
>=20

> Is there anyone from Android/Google on the list, who can comment on this?=
 Can these
> references be added again for the benefit of non-Android distros?
>=20

> Cheers,
> Moritz


-----------------------7f5294274cb5d49fe0244abc5671eeeb
Content-Type: application/pgp-keys; filename="publickey - stie@protonmail.ch - 0xADF18750.asc"; name="publickey - stie@protonmail.ch - 0xADF18750.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - stie@protonmail.ch - 0xADF18750.asc"; name="publickey - stie@protonmail.ch - 0xADF18750.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tDQpWZXJzaW9u
OiBPcGVuUEdQLmpzIHY0LjYuMg0KQ29tbWVudDogaHR0cHM6Ly9vcGVucGdw
anMub3JnDQoNCnhzQk5CRmZxZEg0QkNBREQyeFhCMVFUUG5CMk40V3ZwZDAy
WjdXbnZQSFpFTVBvRUtyNGRVOUQ4aG1LQw0KbUk1a2ZyR1JLUkhqV1hFbExn
KzlnbVRubUhla3prMW5xVyswYW8xTG4rN3JrdXl2UTJJOGNvWldnTmNBDQpC
b01EUjZmbjMya3BsTitIa3RvVHRNb3J1dE13SE1Tdk5yYnRIeGhIaXJ1MVYr
aFRqS2krTDRvckkwYmYNCnQ3VklCRUpuSkxqTmZ6Q0lQS09jWTBZZHZhSFMv
SlZGclA0Qi9MSlFQNkZ6ajE3WnB3QzROK3k0TEV2SQ0KL3ZaYUtxbGhxMjJX
NEc4TjVwRFFxbW04MjJRdjdUM0orMk0yNTNPRjBXOC94eEs2bU9DcWFuZFI3
RTFuDQpzS09hTmgyNW1zbHZpS0hSelRXdzB5OE9heXNhd0liTFBNOTZkaWt1
a3JOaU15K3VsRTl2MmMyRkFCRUINCkFBSE5KM04wYVdWQWNISnZkRzl1YldG
cGJDNWphQ0E4YzNScFpVQndjbTkwYjI1dFlXbHNMbU5vUHNMQQ0KZndRUUFR
Z0FLUVVDV04vcGV3WUxDUWNJQXdJSkVEOFNEZi9tcEtBdkJCVUlDZ0lERmdJ
QkFoa0JBaHNEDQpBaDRCQUFvSkVEOFNEZi9tcEtBdkpXTUlBS0MrSllJMytF
OUlHZnJoMEVFOHlqTnlMNnpMOTFuM1VJcGkNCnFwNFRkeXRqSVJET0RXWERp
S25DUUFpc3FhY21oUVRGUkZ5YUE2eFZJNzhKZm1NM2RsRzRkZ2tQR3p4aw0K
bHVKck5qSENOam54bGx1RXQ5dlU2aGJSUUhoaWdjTVExZEs3SHZjMjNFZ3No
UTZRNTVjZ1RTZG14NEc0DQpoN1RHVXpSVUpjazI0L2U5eHN6dDcrbmpwdHdZ
M2pvbUlCWUJDRGwyTkhDM05ZZzFYSklVL0lTYUZyMDcNCmJTRkZvOXE3QkM0
Nmx6VnlNWXZNYXdzOU13MFYyQ3luVVJHT1NaVGYxNmNEekJKeDN5bmoxaVRM
MERPMg0KWUQzQVpNaXR3KzRnT201NEl0NDIrZkNIMktFKzQ0NThITGE3NmZj
b251WjlycUtoQ1I3U3FLbVNjTFNkDQpQRk40OXpyT3dFMEVWK3AwZmdFSUFL
ZGJPSTdHQlJlMC9MMVR4Wi9YaGRucSs5bW1ZRjlkOVVkaGxucGkNCmNUZUMv
djk3TWJWRlR2NEFSK3VQMjdGQlN0MVQvZ0wrM1AyODdJNFpyd0dpNy81V3Ji
ZVlIVWhmZEp0dA0KeUpvalBzd1lwUkphbTV6amo2b3RETXVWV2w0UU1CQmdE
YjQ0cWw2WXA5RmlxNzAxbWIrSlJMU0JmYVpFDQpHOTlEaCtXTStoTVpBUDJL
cWwwcUN4M09tQ25XU0ZDVUU0STZhc1VndXhOMEw1eXkvRlJsY2JVYUdLZFEN
CnArbjhkMitOTExxVk1TRExJbUVIdHJPWGtKVDRFRjFKdlJnVGI1c2pOTGdh
aW9jcGFkVHNVMCtJY1BvZw0KN2lReWtmRVZPU3FXZVQrUGV0aTJudzlVMUZR
aEhKRnR2WWpXQldXNHR1eVV1cElTdkx5QTMwZGlSbmtjDQo5NmtBRVFFQUFj
TEFhUVFZQVFnQUV3VUNXTi9wZXdrUVB4SU4vK2Frb0M4Q0d3d0FDZ2tRUHhJ
Ti8rYWsNCm9DK1M0QWYvVjZXS3NDMHMzN0Zwc1ZvLzNvTnpJWExMdWhsOFpu
aFZhQ1AxRDZlRDNBZXFOamxUaEdaTg0KWDRtZmx0ZHhjVUd4b3NsVDNIcC9E
a2s2NXlaSjZaZ3BIT21uNlpla2lTVFdYb3pxREpUdm95V3VjaVBoDQp1Uytv
Q2tNemhFaHdjdys2TDZTNGxiOEJuMHAyU3I1ZnNjWWJFcGh3c0UybGFRMzlx
N1gxNVpxZkluanYNCjNvajlaZkZ2Y0paRVkwN3RsUHA5akRBVlJocU1PNmZ2
VkNabzdISnp3WkgzSzFTREhXbXlsWitXanMyZw0KK215bjkzK0NWbVBWSVpS
WE91NTJKdHlSWkgraWdwOHdXc3ljejZrRm9UYlN2V0U0UVp4U1hJTFFjQndX
DQpDZmF5dTlCYTZkL3FTWSs5bGw3WlNYVkRMVVBwamd4Y2NoeVhrTWZ5c1cv
eG91Vjlkdz09DQo9aFhxTQ0KLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkgQkxP
Q0stLS0tLQ0K

-----------------------7f5294274cb5d49fe0244abc5671eeeb--

-----------------------ff0ed50b2c58fe81ac23b633bfb2e363
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsBcBAEBCAAGBQJdtMvxAAoJED8SDf/mpKAvarcIAI/tKGxruadPBSIT4Nc7
cc+szu2piuj2penULtD1voJ6dSggTVwmPlbsktVmHjabWds523PNZhM6ry7l
3LivJiK2U1t6cUH7xyXaJyypgswd6o3O+7Cs3tZJXPKJPkdImyOiHtajclpX
PhnSR7Hv4Jc4GxFT77qB7HezBLvOdC2l3K0GuogmqITcvOkhmKLZv1lQHpYQ
ZyDL5AnvH0V+rEEg1ByZyH8Ij+9ja2LGnhIJDJ9x8sT/OYSyD93KtVtvqrUu
OO7s57N02ffeOsPZQ+GbZQZ3V61AFz3+9nfQCO+Xoeov2ZkP0QXOIVwFPH9n
iXjxpFOeakc5oALTmGmhoBI=
=J89m
-----END PGP SIGNATURE-----


-----------------------ff0ed50b2c58fe81ac23b633bfb2e363--

