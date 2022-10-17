Received: (qmail 19823 invoked by uid 550); 18 Oct 2022 11:25:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13915 invoked from network); 17 Oct 2022 21:57:57 -0000
Message-ID: <ff5b6e5e9d40b5cdb6034c7f4ba2e5551d7389e6.camel@debian.org>
From: Markus Koschany <apo@debian.org>
To: oss-security@lists.openwall.com
Date: Mon, 17 Oct 2022 23:57:45 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-8o/ZjtbYDJnfXvTFLfTM"
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=apo@gambaru.de smtp.mailfrom=apo@debian.org
Subject: [oss-security] Re: CVE-2022-34169: Apache Xalan Java XSLT library is vulnerable to
 an integer truncation issue when processing malicious XSLT stylesheets

--=-8o/ZjtbYDJnfXvTFLfTM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

it appears the underlying bug is in Apache Commons bcel and not in Apache X=
alan
itself. See

https://bugs.debian.org/1015860

and

https://github.com/apache/commons-bcel/pull/147

https://github.com/apache/commons-bcel/commit/f3267cbcc900f80851d561bdd16b2=
39d936947f5





--=-8o/ZjtbYDJnfXvTFLfTM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEErPPQiO8y7e9qGoNf2a0UuVE7UeQFAmNNz9lfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldEFD
RjNEMDg4RUYzMkVERUY2QTFBODM1RkQ5QUQxNEI5NTEzQjUxRTQACgkQ2a0UuVE7
UeRa/g/9HB7rDezWSO8zrtcOZrX1hAXDM9M0s5VDzzm9h3SinUEmcB2YIaKdI6Um
Tw0EK26pdJN9730OQVFAYFfxGAxeRA4U3/joq4nN904DgJuPxX+rn2LXgA3Wy/4S
fQaCYF+oAsWY4p5TRCQPmjAMagwLHBjCBOt9hXezgtcJ99pJIw8y7hOZp6V1bWnJ
PvoW1BFVkI2v0mbhBXfrWV/le+S4oIBbsJKL0TNggKHexMa9QyYsMgNUGg//oM9V
3a1ZwFZEG9IUWBbUtITL8Zol5WHBabTREWoMBVfG7VrPqSzKYzDYBq7cGU/FZKA6
xbt1VpDWxGDcOieJ5t1tYg4anJNP1MnfQ0Pk7gOEB7QX9mBatJErFniN3hge7xss
cN4ef+2N0bR0pS7SXMfAPKuqdjqRVbkFFElP6OSiDBgcsn65R6oPUdhW/hm5+FOH
YfBmfyyAyGbZwJFtmhIrZljnmiyJpBSMiDAzzVqNssSqPxyLX3DtQ2/cd5uHmiIU
EQWmLBAX+aPhoPds3XlVLagepiGh4ppZ/0dN8zAeJMurLFf0lA1DUKiiTXdleM6S
My7JIk2J2cUwhfmpFs2puny7/gcC7CaBVx60yzMI7kPKx9DoBQtBCk9CfNNNbAxJ
0LCNs99hW/VYNQOBzeUuwhj6VLWb26VREcsLDtamXw9fM7M2GsQ=
=UZFP
-----END PGP SIGNATURE-----

--=-8o/ZjtbYDJnfXvTFLfTM--

