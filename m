X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1509" "Monday" "14" "August" "2017" "14:03:47" "+0300" "Robert Munteanu" "rombert@apache.org" "<1502708627.10890.12.camel@apache.org>" "51" "[oss-security] CVE-2017-9802: Apache Sling XSS vulnerability" nil nil nil "8" "2017081411:03:47" "[oss-security] CVE-2017-9802: Apache Sling XSS vulnerability" (number mark "U       rombert@apac Aug 14   51/1509  " thread-indent "\"[oss-security] CVE-2017-9802: Apache Sling XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15592 invoked by uid 550); 14 Aug 2017 11:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8125 invoked from network); 14 Aug 2017 11:04:17 -0000
Message-ID: <1502708627.10890.12.camel@apache.org>
From: Robert Munteanu <rombert@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 14 Aug 2017 14:03:47 +0300
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-p54AchgEX8D+Y4DOFQBQ"
X-Mailer: Evolution 3.24.4 
Mime-Version: 1.0
Subject: [oss-security] CVE-2017-9802: Apache Sling XSS vulnerability

--=-p54AchgEX8D+Y4DOFQBQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2017-9802: Apache Sling XSS vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Sling Servlets Post 2.3.20

Description:
The Javascript method Sling.evalString() uses the javascript `eval`
function to parse input strings, which allows for XSS attacks by
passing specially crafted input strings.

Mitigation:
Users should upgrade to version 2.3.22 or later of the Sling Servlets
Post bundle.

Credit: This issue was discovered and reported by Dmitriev V.
Daniil Dmitriev V. Daniil <sgoesw@gmail.com>.

References:

- https://issues.apache.org/jira/browse/SLING-7041
- https://sling.apache.org/project-information/security.html

Robert Munteanu=

--=-p54AchgEX8D+Y4DOFQBQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEECmZcRnC0eL8SI1zNM5UIZU9j7FQFAlmRg5MACgkQM5UIZU9j
7FT4swgAtMFJoTvtKdXl1BkRpCBm3DvpMn2NwKW31QG3/x22FvEJEPwy7kTyWia2
Nt0h2rXO4jkL6WDTyEzSZE6X2XV6D7m2dRfR8J3ZJ094qx8zrxvdh3WZq0E7oUGf
7LbltT3oza3lLy5TWo5gKgZIcYMY/ub85lLZ7dhM8JdVmutaiV9OhtmpsiISt4CX
k4oh34HxgVQgtTs8HBSrGZO3zcrxKn4TSmtgLvrLDoCVYs+0mCdeNlpM5abgX8hD
Q63nP7m9kmcYuw3XokgX/XslFq+ep8HGP67TNMEG0LUXAlXKyncKzLxC/Df3wMIx
IGf9uisL7orts+KuOF+iDC1VSeEJ2Q==
=0t4E
-----END PGP SIGNATURE-----

--=-p54AchgEX8D+Y4DOFQBQ--

