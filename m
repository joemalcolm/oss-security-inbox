X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2198" "Thursday" "20" "October" "2016" "14:43:14" "-0400" "Michael McNally" "mcnally@isc.org" "<c9c59fce-758b-3bd2-a255-7434795b9611@isc.org>" "58" "[oss-security] CVE-2016-2848 has been disclosed." nil nil nil "10" "2016102018:43:14" "[oss-security] CVE-2016-2848 has been disclosed." (number mark "U       mcnally@isc. Oct 20   58/2198  " thread-indent "\"[oss-security] CVE-2016-2848 has been disclosed.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13878 invoked by uid 550); 20 Oct 2016 18:43:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13860 invoked from network); 20 Oct 2016 18:43:33 -0000
To: oss-security@lists.openwall.com
From: Michael McNally <mcnally@isc.org>
Message-ID: <c9c59fce-758b-3bd2-a255-7434795b9611@isc.org>
Date: Thu, 20 Oct 2016 14:43:14 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lLMcHVATsklG1Ak8NlFG2rMFFRCFTJSIF"
Subject: [oss-security] CVE-2016-2848 has been disclosed.

--lLMcHVATsklG1Ak8NlFG2rMFFRCFTJSIF
Content-Type: multipart/mixed; boundary="woF6XVBnQli6MpILhxbIsAB3J9qLDEEUs";
 protected-headers="v1"
From: Michael McNally <mcnally@isc.org>
To: oss-security@lists.openwall.com
Message-ID: <c9c59fce-758b-3bd2-a255-7434795b9611@isc.org>
Subject: CVE-2016-2848 has been disclosed.

--woF6XVBnQli6MpILhxbIsAB3J9qLDEEUs
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Last week we notified the related list, distros@vs.openwall.org,
about CVE-2016-2848, a vulnerability found in ISC BIND releases
produced before change #3548, which first appeared in May 2013.

Although all of ISC's BIND releases since that date have been immune
to the vulnerability, several OS distribution packagers were
maintaining BIND packages which were forked from ISC's
source line before that change and so we notified that
list to give packagers warning before our public disclosure of
the vulnerability.

As we previously announced it was our intention to do,
we have publicly disclosed CVE-2016-2848 today.

Since information concerning the vulnerability, including
a reproduction script, exists in a public bug repository
we urge you to update vulnerable binary packages as soon
as possible.

Thank you.  The official copy of our vulnerability announcement
can be found here:  https://kb.isc.org/article/AA-01433/74/CVE-2016-2848

Michael McNally
ISC Security Officer


--woF6XVBnQli6MpILhxbIsAB3J9qLDEEUs--

--lLMcHVATsklG1Ak8NlFG2rMFFRCFTJSIF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQEcBAEBCAAGBQJYCRBGAAoJEDsbHdIEoEIyplcIAL0UZN07n3IPBpDYXAXpk1hk
sKr0GQaqd8hy1qoXMOJeTgB0SKxcTBzyziPhEi6EUYT3l1KjCy1EbRMmChm030pK
08E/0BKT4Qqdx+QZYUD33EWRLDhlcF6idzqyfuIUpMYtBshdS9HXKdckdGMyXlo9
4D3V8m3g4ZBPeShv4rco6Q9pzd1njcRaOVzvAJQAKhSIYhRKpqeknbO7Id9RlOb+
V4566vepJzavhe3PEZvEKVPuBRU1Nd9lZwdNHPxLfposfIBfinCW9mBj/XQZoW2h
sOidNQT5EceP3rKOhksVZ54BkaTjlTBhKuVnjBQFwUx6jTtNnupA+DC5iOn0Fm0=
=D1xA
-----END PGP SIGNATURE-----

--lLMcHVATsklG1Ak8NlFG2rMFFRCFTJSIF--
