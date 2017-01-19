X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3397" "Thursday" "19" "January" "2017" "18:04:45" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170119073444.GA14027@sin.redhat.com>" "89" "Re: [oss-security] Re: CVE request: python-pysaml2 XML external entity attack" nil nil nil "1" "2017011907:34:45" "[oss-security] Re: CVE request: python-pysaml2 XML external entity attack" (number mark "U       dmoppert@red Jan 19   89/3397  " thread-indent "\"Re: [oss-security] Re: CVE request: python-pysaml2 XML external entity attack\"\n") "<4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>" ("<20170110072939.GC18447@centurion.befour.org>" "<4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1463 invoked by uid 550); 19 Jan 2017 07:35:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1436 invoked from network); 19 Jan 2017 07:35:01 -0000
Date: Thu, 19 Jan 2017 18:04:45 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Cc: seb@debian.org, cve-assign@mitre.org
Message-ID: <20170119073444.GA14027@sin.redhat.com>
References: <20170110072939.GC18447@centurion.befour.org>
 <4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 19 Jan 2017 07:34:50 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE request: python-pysaml2 XML external
 entity attack

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I think this CVE needs some clarification.

On Jan 10 2017, cve-assign@mitre.org wrote:
> > python-pysaml2 does
> > not sanitize SAML XML requests or responses:
> >=20
> >   https://github.com/rohe/pysaml2/issues/366
> >   https://github.com/rohe/pysaml2/pull/379
> >   https://bugs.debian.org/850716
> >   https://github.com/rohe/pysaml2/commit/6e09a25d9b4b7aa7a506853210a9a1=
4100b8bc9b

issues/376 identifies an XML External Entity flaw (CWE-611), but the
"related commit" 6e09a25d and pull request 379 addresses only Billion
Laughs vulnerabilities (CWE-776).

While the patch's commit message seems to be incorrect in mentioning
XXE, it does not claim to fix issues/379, which is (correctly) still
open.

Thus the below description of CVE-2016-10127 is inconsistent - the
vulnerability addressed by 6e09a25 is CWE-776, which is excluded from
the CVE's coverage by the third list item.

> Use CVE-2016-10127 for the vulnerability addressed by "Fix XXE in XML
> parsing" in 6e09a25d9b4b7aa7a506853210a9a14100b8bc9b.
>=20
> The scope of this CVE does not include the various other issues that
> may be found in the above references:
>=20
>  - it does not include any aspect of
>    https://bugzilla.gnome.org/show_bug.cgi?id=3D772726
>=20
>  - it does not include any vulnerabilities in the XML Security Library
>    (xmlsec), such as ones that are now, or previously were, listed at
>    https://github.com/lsh123/xmlsec/issues
>=20
>  - it does not include any CWE-776 (Entity Expansion) issues that may
>    have been fixed as a side effect of
>    6e09a25d9b4b7aa7a506853210a9a14100b8bc9b (possibly there are new
>    test cases in 6e09a25d9b4b7aa7a506853210a9a14100b8bc9b for CWE-776)

This can be seen also by noticing that the patch substitues
"defusedxml.ElementTree" for "xml.etree.ElementTree" (and its native
code equivalent cElementTree), and consulting the table and note #1 at:

https://docs.python.org/2/library/xml.html#xml-vulnerabilities

which points out that "etree" is vulnerable to CWE-776 but not to
CWE-611.

The CWE-611 vulnerability in libxml2 (CVE-2016-9318) is still exposed in
pysaml2, via its use of lxml and xmlsec.

The exposure via lxml may be mitigable by disabling entity resolution
altogether (resolve_entities=3DFalse), but xmlsec seems to lack any such
switch.

--=20
Doran Moppert
Red Hat Product Security

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYgGwUAAoJEGohqWcZR7qpPmgQALvWZzoLWinO6UrtI+fnHY0p
4jkXcjLffiaHXkLliPyle9KskR/qLcfi6XM5eo9feex/oNVb2SqChAdrboxYFyOY
wkadVe/JjR+iU4QieV669SHvIKe9HRXSoriQ4wKXmtLI3bRUHgQQuwMybER69UyG
DF6XZJfYgOjZyMn7ko3c367EAMyOMt3FdQlL7vMrypldKS88JW/gFP66hlCK0X8Y
3ODnGG/5dbCa9HjVLb2RFLgRzt66mB8GJiVaLHC8gJoMlQtpI1iqClepOJNmjtKw
DOceNJUOovGOsz9I0CAOLVRMX5g0Z64ctiApPt6h7H+7K2f2BtOC9LjF/dw0YCvi
TOOwZNGFawH+9WkrPraRUgIuMzNOSBwzcA2uJtqoUvaBX+Phmw+1olcHDpArM8Zs
g0P8eH9lMSLnAXZBcCnsAssjB3X4GHexlO5r7WBt5wd4bv6Pd0Ga332gG6cyYYF5
7bJarpZbm4ga9DjiIPzIBc2rmQZFk+hLpzoKqFbfmIcIFpHf3rDmjU+9oadcBRxq
LNRBTFkqXTSovEhhzAw1aXvuk7uc0xuvfJKKTu8H9vnMLS8H5GpoUAIpGqG6Fk8R
zeo48CZEPVjq/0xrQXQ4rcGpDxbpZwLiyuexo8vQoWChn+I8rchwrqcDe/pAzCR3
eRvt9AxmrCysx4qGqqXC
=Im0s
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--
