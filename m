X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2999" "Sunday" "30" "December" "2018" "13:48:52" "+0100" "Matthias =?ISO-8859-1?Q?Bl=E4sing?=" "mblaesing@doppel-helix.eu" "<12f804f3dfed1ca1b07316041f99e37a3a0b235f.camel@doppel-helix.eu>" "83" "[oss-security] [CVE-2018-17191] Apache NetBeans 9.0 Proxy Auto-Configuration (PAC) interpretation is vulnerable for remote command execution (RCE)" nil nil nil "12" "2018123012:48:52" "[oss-security] [CVE-2018-17191] Apache NetBeans 9.0 Proxy Auto-Configuration (PAC) interpretation is vulnerable for remote command execution (RCE)" (number mark "U       mblaesing@do Dec 30   83/2999  " thread-indent "\"[oss-security] [CVE-2018-17191] Apache NetBeans 9.0 Proxy Auto-Configuration (PAC) interpretation is vulnerable for remote command execution (RCE)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18278 invoked by uid 550); 30 Dec 2018 12:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15612 invoked from network); 30 Dec 2018 12:49:05 -0000
Message-ID: <12f804f3dfed1ca1b07316041f99e37a3a0b235f.camel@doppel-helix.eu>
From: Matthias =?ISO-8859-1?Q?Bl=E4sing?= <mblaesing@doppel-helix.eu>
To: dev@netbeans.apache.org
Cc: announce@netbeans.apache.org, Moritz Bechler <mbechler@eenterphace.org>,
  security@apache.org, oss-security@lists.openwall.com
Date: Sun, 30 Dec 2018 13:48:52 +0100
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-B5ezTl2LEMKQ2Jlrk5ge"
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Subject: [oss-security] [CVE-2018-17191] Apache NetBeans 9.0 Proxy Auto-Configuration (PAC)
 interpretation is vulnerable for remote command execution (RCE)

--=-B5ezTl2LEMKQ2Jlrk5ge
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-ID
------
CVE-2018-17191

Summary
-------
NetBeans Proxy Auto-Configuration (PAC) interpretation
is vulnerable for remote command execution (RCE)

Versions Affected:=20
------------------
- Apache NetBeans (incubating) 9.0
- NetBeans releases before the Apache transition started may be
  also affected

Description:
------------
To be vulnerable to the issue, the system running NetBeans needs to be
configured to use Proxy Auto-Configuration (PAC), NetBeans must be
configured to use the system proxy settings and the attacker needs to
be able to modify the PAC script.

Proxy Auto-Configuration (PAC) allows a proxy provider to provide the
client with an automatic configuration of the proxy configuration. The
configuration is not a static description, but JavaScript code, that
calculates the proxy information based on the URL requested.

Depending on the Java Version NetBeans is executed, two vectors exists:

If the Java Version supports the Nashorn JavaScript engine, execution
was sandboxed by limiting the classes accessible to the script. It was
found, that, due to the vulnerability in the JRE, the sandbox can be
circumvented. This allows arbitrary code to be executed in the context=20
of the NetBeans application.

If the Java Version does not support Nashorn, a generic JavaScript
engine was used, which is not further restricted. This allows execution
of arbitrary code in the context of the NetBeans application.

Mitigation:
-----------

The issue can be mitigated utilizing one of the following options:

- Upgrade to Apache NetBeans 10.0
- Disable Proxy Auto-Configuration for the whole OS
  (please refer to the system documentation how to do that)
- Disable "Use System Proxy Settings" in the NetBeans Options and
  configure the Proxy to use manually


Credit:
-------
The issue was identified by Moritz Bechler.

--=-B5ezTl2LEMKQ2Jlrk5ge
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE+nkp+DrUTEWQ9sxoFcccCk4Ljt0FAlwovrQACgkQFcccCk4L
jt1GAg/2JsH3Soty3q10/FEuX7iZIu2WQcNx5SyEqCYU4dPfOmuvnZWo+Mq9DcW1
78o0BR4ynEFGcx7sQJ31IXEQlhWkxU6pCH5Nlu8e28rhzUCC9zN/UmcUlWgCaFFC
GInepEvohVZGK2cP5nOcANobxNnx/g0jL8AVUmIrS8gheqjReRx4ll4Xj0QLuBC3
pz37Y64pCRrQFEd1Do40jRHbNlbzXOUksx7Xwk8IpfgdntIrXkTwvBXDFhPmtx7p
BP8t5LBbZ0ANYdI++RZ285Cg2z4nYQnSllZMG4YdClAqXSuP2xlzL2OmPeG+WiW5
mafKe1iiW425CCg0rVqASvpXXxRybgTVCt+LHbhZoGYoW8KzrTYXA4+GjxyJ3MMa
/RGrqZEUtpyoavDrMLfYAjiCaY16/l0RdFTNHe9lNLqYMf+N8aFVmoCozdvdUVuK
x3NXlA6tTvH4ahC+Ir4hKlwaQkBDSclRkniohIJfCo+BhDEhOXWLn8Uc1v1KrCV2
sk8dzbG/ANsEa1A6/tR7JyHPEB8zR1vW+f8a+Y58ev6IhctEN9b/6qRh29jI7tyf
RKnKGqN9dFqmgDycNHi1OsCc8d9r6X9QlD8F0H0Uer3Y3u017VxumvT3PRtO4YNP
dPtJ+ZwqCiXWuMdBaadicH6bRRZLtAkpWfTVUNs+W8gPpuljFg==
=L0Yu
-----END PGP SIGNATURE-----

--=-B5ezTl2LEMKQ2Jlrk5ge--

