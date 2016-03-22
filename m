X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2254" "Tuesday" "22" "March" "2016" "17:05:54" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20160322220554.GA4736@boyd>" "67" "Re: [oss-security] Re: CVE Request: PHP last release security issues" "^Cc:" nil nil "3" "2016032222:05:54" "[oss-security] Re: CVE Request: PHP last release security issues" (number mark "        tyhicks@cano Mar 22   67/2254  " thread-indent "\"Re: [oss-security] Re: CVE Request: PHP last release security issues\"\n") "<20160316204230.64F63B2E03F@smtpvbsrv1.mitre.org>" ("<20160310094228.GD4470@suse.de>" "<20160316204230.64F63B2E03F@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20208 invoked by uid 550); 22 Mar 2016 22:06:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20187 invoked from network); 22 Mar 2016 22:06:09 -0000
Message-ID: <20160322220554.GA4736@boyd>
References: <20160310094228.GD4470@suse.de>
 <20160316204230.64F63B2E03F@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <20160316204230.64F63B2E03F@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: meissner@suse.de, cve-assign@mitre.org, security@php.net
Date: Tue, 22 Mar 2016 17:05:54 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: PHP last release security issues
To: oss-security@lists.openwall.com

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2016-03-16 16:42:30, cve-assign@mitre.org wrote:
> > https://bugs.php.net/bug.php?id=3D71610
>=20
> >> Type Confusion Vulnerability - SOAP / make_http_soap_request()
>=20
> >> Due to an insufficient validation of the cookies field when making SOA=
P http request
>=20
> >> https://github.com/php/php-src/blob/master/ext/soap/php_http.c
>=20
> >> There is lack of validation of 2nd/3rd elements in cookies array.
> >>
> >> and a type confusion occurs when they are no longer string.
>=20
> >> [2016-02-22 07:48 UTC] stas@php.net
> >> Fix added to security repo as eaf4e77190d402ea014207e9a7d5da1a4f3727ba
>=20
> > https://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3Deaf4e77190d402ea014=
207e9a7d5da1a4f3727ba
>=20
> >> + Z_TYPE_P(tmp) !=3D IS_STRING ||
>=20
> >> + Z_TYPE_P(tmp) !=3D IS_STRING ||
>=20
> Use CVE-2016-3185.

I see a similar bug and fix in the PHP 5.x branch:

  https://bugs.php.net/bug.php?id=3D70081
  https://git.php.net/?p=3Dphp-src.git;a=3Dcommitdiff;h=3Dc96d08b27226193dd=
51f2b50e84272235c6aaa69

Note that the bug was filed in 2015. It was fixed in 5.6.12:

  https://secure.php.net/ChangeLog-5.php#5.6.12

Does CVE-2016-3185 cover the issue in 5.x, as well?

Tyler=20

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJW8cHCAAoJENaSAD2qAscKYOMQALTTShQPoJjGJy2nIWzw0PxY
wG/pfkCKh1o8QQEkNK+poCvA+0toDvvBlNWdrjoYhWG2/d8Cgun4dQwtKMnWNB/p
U5KB5oPZQUPuC8hC/C4QKjc8sxESACD2ExVWEg9G9GNKf9vbQUh8hGC2VFZYeWpe
UWvdchagsRkqal4B7scrwh1tBkcYmHIw1Za3Z5LYVf9FvkHvzUbkoxrbNhh8yW51
3UTwBhwWZxvnahzACAbiJ8WlqNEIuWkVFkH9Wwik/Zf9BUoWQkhptl7qVDiupR8U
+PgiH7jw3vAIwZW/nAIvvRIooi42khBqJrfbFVBqQFYPV9wCO0qv/N7OKl7tDLQD
cN6UsN/uKRStw8qjdtwy+AE/oGH9G635zZLzNbnvv4yviaNdpTbAP/LQj9ezPqaR
GECKbiYXaOR32/djbgwbplYaPTlYAoRS5rfOS6PAL+tRb6JqMXKNYsuIYCBAUiwC
OLmq+mYfW9xtDkK3MeX2WU+Dq6XbdvIuAv5t1S79DOW9e6LB4qOnR826lgN9Iz9F
Roj9VJ/49Mv7aFeVmH/BUpXJYsJ80sJzcyd8sPJabHcyl+S47ggM/n01SA8w2nNR
jabKM/Ao7ijQaRsagRhEK0VDT7lefS0/WsP06pQCL/kdYL24U3zXGoON/TuHINQb
GvbS/4HcoQwlqg3CeCO+
=1EBj
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
