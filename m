X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1660" "Monday" "23" "March" "2015" "22:40:14" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<1427146814.21027.4.camel@debian.org>" "47" "[oss-security] Re: CVE requests for shibboleth service provider" nil nil nil "3" "2015032321:40:14" "[oss-security] Re: CVE requests for shibboleth service provider" (number mark "        corsac@debia Mar 23   47/1660  " thread-indent "\"[oss-security] Re: CVE requests for shibboleth service provider\"\n") "<20150323174404.BDA286C0023@smtpvmsrv1.mitre.org>" ("<20150323174404.BDA286C0023@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15461 invoked by uid 550); 23 Mar 2015 21:40:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15442 invoked from network); 23 Mar 2015 21:40:33 -0000
Message-ID: <1427146814.21027.4.camel@debian.org>
In-Reply-To: <20150323174404.BDA286C0023@smtpvmsrv1.mitre.org>
References: <20150323174404.BDA286C0023@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-jzH9YKaeiI8cHIeAPU2I"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: oss-security@lists.openwall.com, team@security.debian.org
Date: Mon, 23 Mar 2015 22:40:14 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests for shibboleth service provider
To: cve-assign@mitre.org

--=-jzH9YKaeiI8cHIeAPU2I
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On lun., 2015-03-23 at 13:44 -0400, cve-assign@mitre.org wrote:
> > Recommendations
> > -----------------
> > Update to V2.5.4 or later of the Shibboleth SP software
>=20
> Use CVE-2015-2684 for this Shibboleth Service Provider issue. The
> vendor's secadv_20150319.txt advisory is about this CVE in addition to
> unrelated CVEs in two third-party components (Xerces-C and OpenSSL).
>=20
> > https://issues.shibboleth.net/jira/issues/?filter=3D10771
>=20
> We currently don't know whether CVE-2015-2684 is one of the above 24
> issues on the "Shibboleth 2 SP 2.5.4 Fixes" list, or whether the
> CVE-2015-2684 fix is separate from all of those.

Thanks,

as far as I can tell, the security vulnerability is not on that list.
The upstream patch is
http://svn.shibboleth.net/view/cpp-sp?view=3Drevision&revision=3D3894 and
references SSPCPP-632 which is still not public.

Regards,
--=20
Yves-Alexis

--=-jzH9YKaeiI8cHIeAPU2I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJVEIg+AAoJEG3bU/KmdcCli4YH/A7pmxCWpvvqAjpjMaVvQYH/
FYZw1HFAt12XJPvsbJihA8CdRthbv0ite0eOS8ivqygu42Z0G80j1OSAuuvA8vCj
Cz2TpA7JLAm/Vc/FHtQ7SNlTo804l2OkQntfrvyd7f0osxQl7nuDwqRsaAkOp2if
mG4ESGOnTM6TZ3Bl6BQcvG5rzXnFavfsSKeT0r6n25TZlYxpUG9lhfdN0Uyve6C8
AV4XlOQ6WR12BGySzWGheUxDP4mwWYrjBYPSmlT1qWnmJg69Ae8AT3gjWw12UZz2
U2eUFZq4pAx+iamZBkJwq6KloIwUmUyQLmVi9WfT1uKyeRn3P8LTtPQ3bRg4B3w=
=162H
-----END PGP SIGNATURE-----

--=-jzH9YKaeiI8cHIeAPU2I--
