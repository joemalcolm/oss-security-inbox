X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1910" "Wednesday" "13" "February" "2019" "20:57:43" "+1100" "Aleksa Sarai" "cyphar@cyphar.com" "<20190213095743.ek3x42ok7bengua5@yavin>" "48" "Re: [oss-security] CVE-2019-5736: runc container breakout exploit code" "^Cc:" nil nil "2" "2019021309:57:43" "[oss-security] CVE-2019-5736: runc container breakout exploit code" (number mark "        cyphar@cypha Feb 13   48/1910  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout exploit code\"\n") "<20190213095648.ibfskgddfa4zgdlo@yavin>" ("<20190213093151.znxnjuqtwbdlwnom@yavin>" "<CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>" "<20190213095648.ibfskgddfa4zgdlo@yavin>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13846 invoked by uid 550); 13 Feb 2019 09:58:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13798 invoked from network); 13 Feb 2019 09:58:11 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Message-ID: <20190213095743.ek3x42ok7bengua5@yavin>
References: <20190213093151.znxnjuqtwbdlwnom@yavin>
 <CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>
 <20190213095648.ibfskgddfa4zgdlo@yavin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y5tut57h6h2b5roe"
Content-Disposition: inline
In-Reply-To: <20190213095648.ibfskgddfa4zgdlo@yavin>
Cc: oss-security@lists.openwall.com
Date: Wed, 13 Feb 2019 20:57:43 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout exploit
 code
To: EJ Campbell <ejc3@verizonmedia.com>

--y5tut57h6h2b5roe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-02-13, Aleksa Sarai <cyphar@cyphar.com> wrote:
> On 2019-02-13, EJ Campbell <ejc3@verizonmedia.com> wrote:
> > While fixing docker / runc is clearly the right fix, would using chattr=
 -i
> > on runc be a quick mitigation for the issue? I believe that will prevent
> > the file from being overwritten by the exploit and Etienne Stalmans
> > verified that it helped:
> >  https://twitter.com/_staaldraad/status/1095354945073754112
>=20
> The privileged user in the container could just un-set the immutable
> bit using "/proc/self/fd/..." and then open it for writing. A read-only
> filesystem would work much better.

Sorry, I forgot that CAP_LINUX_IMMUTABLE is dropped by default in
Docker. Yes that mitigation would also work.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--y5tut57h6h2b5roe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlxj6hcACgkQSnvnv3De
m5+8cg/7B3VcsNQzASRzKcJK1GPwLOpcmfanrlmQ5fVowrmMuMq8OBASbTXFrALl
D2mIANXQlhc28DzKii8oi9QMz8FEJyqBezU22ayIAc23S8A2Qp8aQTs0AbELU+Ze
AOSD8uwusKkhl06MLX7dNv4u5SDk03DkCjzOiycJOGD+scVEHbyoW1SkoZ1uHB/Y
sPj/ltUaXdzR5K10N85CaXeqxl1M8bYMn1ZLVFkkXqSuWqbt8QaAs+bJ4+UaDvcA
LnCjmy7+k0LgyXc8xyPSHP6I7Qe8pLoEZYqKvBsatohJjhmtfDg6PBOxqcn/nwVo
4RyxRmehvRGGH8ndcnGgfXQbrXX4fAP5NLaPIptrCvMtl4egle/mHSX+wSHIEYtZ
WYe00xfLZUY2WBE8qjqJKIG7xrtzJz0xjjuEqC8zB07OKQYu6buqyIMzgnBQRVZy
t9NEtxAxrCckIZd+abMRPjyHIQjkfxah2yiZy88SDEsAaa01FsYq1DMEoVcCvRy+
+xxVMiYybCKTpxWt0np55fBIvyPXH5crOeODWNPzvFXd2mBzb0ydLt8A1Xh0RTHy
mcjBE1lX2bGbpQO3ZbADzsUa6X+zdYiC7qcH84Tb6OMWg4FeVAKdgMm7SJ4A1+9E
yPJ2V9//MOx/86uzPRykYrD4IgBjmfuo9BhO4RKKNGWElFh6FuA=
=mwTw
-----END PGP SIGNATURE-----

--y5tut57h6h2b5roe--
