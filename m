Received: (qmail 26279 invoked by uid 550); 11 Apr 2024 13:43:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13598 invoked from network); 11 Apr 2024 09:02:42 -0000
Date: Thu, 11 Apr 2024 09:02:25 +0000
To: "billchenchina2001@gmail.com" <billchenchina2001@gmail.com>
From: Michael Knap <oss-sec@mknap.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <I82WAfna9I_EFZcBovOnWnCTsdOwcpxVSOIm4pQz8Gg4Owb18pc8zgomap3dJpnoHmzFW2LH2nltUPYszwZWCQ3CManRXLNwoNM-w86zeqM=@mknap.com>
In-Reply-To: <CAG-20GTcXSo3=1UxEbRf7Ut_2j_g=Ru4yGHUQOxNSLMvvR-Umg@mail.gmail.com>
References: <CAG-20GTcXSo3=1UxEbRf7Ut_2j_g=Ru4yGHUQOxNSLMvvR-Umg@mail.gmail.com>
Feedback-ID: 106571945:user:proton
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------e06d8aca14e827dd88238934230380e46a4cc034f50d7d8f3538ea93ea3f0115"; charset=utf-8
Subject: [oss-security] Re: Re: CWE-121, CWE-122: libfreeimage 3.40-3.18/19+ buffer overflow

--------e06d8aca14e827dd88238934230380e46a4cc034f50d7d8f3538ea93ea3f0115
Content-Type: multipart/mixed;boundary=---------------------eab2962ba31026d7313571c9bd46c46d

-----------------------eab2962ba31026d7313571c9bd46c46d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8



-------- Original Message --------
On 11/04/2024 09:22, Tianyu Chen wrote:

> Hi Michael,
> I believe there may be a duplicate report for freeimage that you should b=
e aware of. You can find it at the following link:
>=20

> https://github.com/Ruanxingzhi/vul-report/tree/master/freeimage-r1909
>=20

> The linked report includes CVE-2024-28562, CVE-2024-28563, CVE-2024-28564=
, CVE-2024-28565, and more up to CVE-2024-28584.
>=20

> Best regards,
> Tianyu Chen

Hi Tianyu,

Indeed, it seems so! I apologize for any inconvenience this may have caused.

I conducted a search on MITRE for the library and found several current CVE=
s,
but I did not come across this specific report. Given that they are fairly =
recent,
there might have been a period during which they were not yet visible in pu=
blic searches.

Thank you for bringing this to my attention!

Best regards,=20

Michael Knap

-----------------------eab2962ba31026d7313571c9bd46c46d--

--------e06d8aca14e827dd88238934230380e46a4cc034f50d7d8f3538ea93ea3f0115
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmYXpxEJkM9l7hnZFoZCFiEE30z68LzHyZOANTp/z2XuGdkW
hkIAAKN6AQCzWLetAyb1AzimL7sqNbsZgKBHZUVZLw/nAFEkQrAZ7AD8Crm8
S3q6K+2B0LZFoMK4tc2GDFz9VVOB4KE5M+dwdg0=
=s5Eb
-----END PGP SIGNATURE-----


--------e06d8aca14e827dd88238934230380e46a4cc034f50d7d8f3538ea93ea3f0115--

