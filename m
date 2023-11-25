Received: (qmail 24239 invoked by uid 550); 25 Nov 2023 20:10:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20061 invoked from network); 25 Nov 2023 20:07:56 -0000
Date: Sat, 25 Nov 2023 12:07:41 -0800
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Cc: zihaoxiang@apache.org
Message-ID: <ZWJUDWTquSuqfmSk@gentoo.org>
References: <9a5af39c-4833-7369-6f78-6bcc3f1d9687@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lH7CNufh+P+RbRo+"
Content-Disposition: inline
In-Reply-To: <9a5af39c-4833-7369-6f78-6bcc3f1d9687@apache.org>
Subject: Re: [oss-security] CVE-2023-49068: Apache DolphinScheduler:
 Information Leakage Vulnerability

--lH7CNufh+P+RbRo+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 24, 2023 at 05:29:43AM +0000, Zihao Xiang wrote:
> Severity: important
>=20
> Affected versions:
>=20
> - Apache DolphinScheduler before 3.2.1
>=20
> Description:
>=20
> Exposure of Sensitive Information to an Unauthorized Actor vulnerability =
in Apache DolphinScheduler.This issue affects Apache DolphinScheduler: 3.2.=
1.
>=20
> Users are recommended to upgrade to version [FIXED_VERSION], which fixes =
the issue.

So <3.2.1 is affected, but also =3D3.2.1, and "[FIXED_VERSION]" was
seemingly not replaced in the template. What are the correct affected
and unaffected versions? I tried to dig into what releases the fix
commit is in, but I found that that commit doesn't seem to be in any
tags yet, either?

~/git/dolphinscheduler $ git tag --contains 7308888c703fbe227887d2426273100=
582096134
~/git/dolphinscheduler $

> References:
>=20
> https://github.com/apache/dolphinscheduler/pull/15192
> https://dolphinscheduler.apache.org
> https://www.cve.org/CVERecord?id=3DCVE-2023-49068
>=20

--lH7CNufh+P+RbRo+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCZWJUDQAKCRCgXq2+aa/J
tb4rAP9EfA+QU0/dusBReCxY5hkU5mcwZZubKQ/DiKlF9bKW2AEAnBkAVPNEwEDw
FXA2FslaiCNAHzoxP3vw20soOVGQdQQ=
=ak5V
-----END PGP SIGNATURE-----

--lH7CNufh+P+RbRo+--
