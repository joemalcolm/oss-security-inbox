Received: (qmail 1421 invoked by uid 550); 11 Apr 2024 14:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28577 invoked from network); 11 Apr 2024 14:40:29 -0000
Date: Thu, 11 Apr 2024 14:40:02 +0000
To: "billchenchina2001@gmail.com" <billchenchina2001@gmail.com>
From: Michael Knap <oss-sec@mknap.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <BAcesoJeLaHBIikLM4bh69bMuIt6pN2cXcMj9eR8yxU-kGZCgoWNq7FWsHyLnGb_n9qb4XSW64bDdTCEStuKEWXJCc3U6CPBwh0QqNFc7M4=@mknap.com>
In-Reply-To: <I82WAfna9I_EFZcBovOnWnCTsdOwcpxVSOIm4pQz8Gg4Owb18pc8zgomap3dJpnoHmzFW2LH2nltUPYszwZWCQ3CManRXLNwoNM-w86zeqM=@mknap.com>
References: <CAG-20GTcXSo3=1UxEbRf7Ut_2j_g=Ru4yGHUQOxNSLMvvR-Umg@mail.gmail.com> <I82WAfna9I_EFZcBovOnWnCTsdOwcpxVSOIm4pQz8Gg4Owb18pc8zgomap3dJpnoHmzFW2LH2nltUPYszwZWCQ3CManRXLNwoNM-w86zeqM=@mknap.com>
Feedback-ID: 106571945:user:proton
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------9bde708eaefd746234e369f2f642697fe899bf9364a0217e9dc8bad8a9200c3e"; charset=utf-8
Subject: [oss-security] Re: Re: CWE-121, CWE-122: libfreeimage 3.40-3.18/19+ buffer overflow

--------9bde708eaefd746234e369f2f642697fe899bf9364a0217e9dc8bad8a9200c3e
Content-Type: multipart/mixed;boundary=---------------------452b4190a349469331c294856fb56929

-----------------------452b4190a349469331c294856fb56929
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Thursday, April 11th, 2024 at 10:02 AM, Michael Knap <oss-sec@mknap.com>=
 wrote:

>=20

>=20

>=20

>=20

> -------- Original Message --------
> On 11/04/2024 09:22, Tianyu Chen wrote:
>=20

> > Hi Michael,
> > I believe there may be a duplicate report for freeimage that you should=
 be aware of. You can find it at the following link:
> >=20

> > https://github.com/Ruanxingzhi/vul-report/tree/master/freeimage-r1909
> >=20

> > The linked report includes CVE-2024-28562, CVE-2024-28563, CVE-2024-285=
64, CVE-2024-28565, and more up to CVE-2024-28584.
> >=20

> > Best regards,
> > Tianyu Chen
>=20

>=20

> Hi Tianyu,
>=20

> Indeed, it seems so! I apologize for any inconvenience this may have caus=
ed.
>=20

> I conducted a search on MITRE for the library and found several current C=
VEs,
> but I did not come across this specific report. Given that they are fairl=
y recent,
> there might have been a period during which they were not yet visible in =
public searches.
>=20

> Thank you for bringing this to my attention!
>=20

> Best regards,
> Michael Knap

I have reviewed the CVE range mentioned by Tianyu, and it appears the XPM b=
uffer overflow
hasn't been assigned. The repository Tianyu linked does indeed include the =
sprintf buffer
overflow vulnerability in the XPM parser.=20


'''
### Vulnerability 22
Vulnerability Type: buffer overflow
Impact:             command execution
Affected component: PluginXPM.cpp, Load()

Description:        In FreeImage library version 3.19.0 [r1909], when readi=
ng images in XPM format,
                    the Load() function has a stack overflow write vulnerab=
ility, which may lead to=20

                    a command execution.

Trace:
case10231: [WRITE,stack-buffer-overflow]@main->FreeImage_Load->FreeImage_Lo=
adFromHandle->Load->sprintf
'''

The CVE has just now been assigned and credited to me,=20

but it seems it should have been assigned along with the others in that rep=
ository.
Not sure what caused the issue and why it wasn't originally assigned with t=
he others,
reported by Ruanxingzhi. I will contact MITRE with clarification and reques=
t to change the credit.=20

The assigned CVE: CVE-2024-31570.

Best regards,=20

Michael Knap=

-----------------------452b4190a349469331c294856fb56929
Content-Type: application/pgp-keys; filename="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"; name="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"; name="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmhW
WEZCWUpLd1lCQkFIYVJ3OEJBUWRBamNobWFrbXpPRllSOGllTW9pZVl3RHRX
azIyK1A2VkYKQVgvSVVlV3VPZExOSlc5emN5MXpaV05BYld0dVlYQXVZMjl0
SUR4dmMzTXRjMlZqUUcxcmJtRndMbU52CmJUN0NqQVFRRmdvQVBnV0NaaFZY
RkFRTENRY0lDWkRQWmU0WjJSYUdRZ01WQ0FvRUZnQUNBUUlaQVFLYgpBd0ll
QVJZaEJOOU0rdkM4eDhtVGdEVTZmODlsN2huWkZvWkNBQUJrQlFEOUdZS251
Z1hDbGd1TnJNMHYKQlEwL09BNWU2dHpjVWxQSFhZZmRZckZLU1Y4QS8wQU1D
UVVma1VCVzI5NTA2aXlyQTNZNlh0TlpLWCtWCitZRlp0dDNldVUwQ3pqZ0Va
aFZYRkJJS0t3WUJCQUdYVlFFRkFRRUhRQ1dZTEl5QXh0cHZYazJvc1hnNwpq
d05VSlpkUzZjaThWOHcvT3NZQ3hCWlRBd0VJQjhKNEJCZ1dDZ0FxQllKbUZW
Y1VDWkRQWmU0WjJSYUcKUWdLYkRCWWhCTjlNK3ZDOHg4bVRnRFU2Zjg5bDdo
blpGb1pDQUFDSlN3RUE3OHdTcGIxTzFrdHNVU0ttCkxPUU53QjFIRTRiN1JM
dnYyODJaUHdCdmlsY0JBS1podEdNVDVsaGlGb3QyQW9LbktxRnVVSFdXVno3
SwpEYWlJR2ZZRjVhVU4KPXVXWUwKLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkg
QkxPQ0stLS0tLQo=

-----------------------452b4190a349469331c294856fb56929--

--------9bde708eaefd746234e369f2f642697fe899bf9364a0217e9dc8bad8a9200c3e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmYX9iwJkM9l7hnZFoZCFiEE30z68LzHyZOANTp/z2XuGdkW
hkIAAF+EAQCA2aq39A0wH+eNpoUAeXeRgO2OEQrmOIR1OPIae5054gEA4E9y
lodtMmXtIdUr7PHQcdv8jX5UrXQkn41TNp9CIAw=
=vZHw
-----END PGP SIGNATURE-----


--------9bde708eaefd746234e369f2f642697fe899bf9364a0217e9dc8bad8a9200c3e--

