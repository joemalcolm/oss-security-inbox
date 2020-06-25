X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4807" "Thursday" "25" "June" "2020" "19:06:21" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20200625190621.GA1791617@millbarge>" "146" "[oss-security] [cve-request@mitre.org: Re: [scr916814] net-snmp - Perhaps only unreleased development versions; fix appears to be in v5.8.1.pre1]" nil nil nil "6" "2020062519:06:21" "[oss-security] [cve-request@mitre.org: Re: [scr916814] net-snmp - Perhaps only unreleased development versions; fix appears to be in v5.8.1.pre1]" (number mark "U       seth.arnold@ Jun 25  146/4807  " thread-indent "\"[oss-security] [cve-request@mitre.org: Re: [scr916814] net-snmp - Perhaps only unreleased development versions; fix appears to be in v5.8.1.pre1]\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [cve-request@mitre.org: Re: [scr916814] net-snmp - Perhaps only unreleased development versions; fix appears to be in v5.8.1.pre1]" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15606 invoked by uid 550); 25 Jun 2020 19:06:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15588 invoked from network); 25 Jun 2020 19:06:34 -0000
Date: Thu, 25 Jun 2020 19:06:21 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20200625190621.GA1791617@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
Subject: [oss-security] [cve-request@mitre.org: Re: [scr916814] net-snmp - Perhaps only
 unreleased development versions; fix appears to be in v5.8.1.pre1]

--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello, I'd lke to share a cve assigned to net-snmp for an issue that may
not have affected any released versions of net-snmp but affected various
distro versions of net-snmp.

Thanks

----- Forwarded message from cve-request@mitre.org -----

Date: Thu, 25 Jun 2020 05:15:14 -0400 (EDT)
From: cve-request@mitre.org
To: security@ubuntu.com
Cc: cve-request@mitre.org
Subject: Re: [scr916814] net-snmp - Perhaps only unreleased development ver=
sions; fix appears to be in v5.8.1.pre1
Message-Id: <20200625091514.8124480B76E@smtprhmv1.mitre.org>
X-MailControl-ReportSpam: https://www.mailcontrol.com/sr/VfMHRVT2LfHGX2PQPO=
mvUkjDae7bB5IgIMT0o87Yr8XX7dUK1PjRtmIgzLM3PrMtWFfXRAbpUYiTKOxjbsImtQ=3D=3D

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [Suggested description]
> net-snmp before 5.8.1.pre1 has a double free in usm_free_usmStateReferenc=
e in snmplib/snmpusm.c=20
> via an SNMPv3
> GetBulk request. NOTE: this affects net-snmp packages shipped to end user=
s by multiple Linux distributions,
> but might not affect an upstream release.
>=20
> ------------------------------------------
>=20
> [Additional Information]
> If I've followed the breadcrumbs correctly, this was introduced via
> https://github.com/net-snmp/net-snmp/commit/adc9b71aba9168ec64149345ea37a=
1acc11875c6
> which was apparently incorporated into Debian, Ubuntu, Red Hat
> packages, even if not included in upstream releases.
>=20
> A double free was discovered in usm_free_usmStateReference() in unrelease=
d development versions of net-snmp.
>=20
> ------------------------------------------
>=20
> [VulnerabilityType Other]
> double-free
>=20
> ------------------------------------------
>=20
> [Vendor of Product]
> net-snmp
>=20
> ------------------------------------------
>=20
> [Affected Product Code Base]
> net-snmp - Perhaps only unreleased development versions; fix appears to b=
e in v5.8.1.pre1
>=20
> ------------------------------------------
>=20
> [Affected Component]
> usm_free_usmStateReference()
> usm_rgenerate_out_msg()
> free_agent_snmp_session()
>=20
> ------------------------------------------
>=20
> [Attack Type]
> Remote
>=20
> ------------------------------------------
>=20
> [Impact Denial of Service]
> true
>=20
> ------------------------------------------
>=20
> [Attack Vectors]
> An authorized remote user can trigger this via a command given at https:/=
/sourceforge.net/p/net-snmp/bugs/2923/#6789:
> snmpbulkget  -v3 -Cn1 -Cr1472  -lauthPriv -u testuser -a SHA -A testsha12=
34 -x AES -X testaes1234 localhost    1.3.6.1.2.1.1.5 1.3.6.1.2.1.1.7
>=20
> ------------------------------------------
>=20
> [Reference]
> https://bugs.launchpad.net/ubuntu/+source/net-snmp/+bug/1877027
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1663027
> https://sourceforge.net/p/net-snmp/bugs/2923/
> https://github.com/net-snmp/net-snmp/commit/5f881d3bf24599b90d67a45cae7a3=
eb099cd71c9
>=20
> ------------------------------------------
>=20
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2019-20892.


- --=20
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJe9Gq+AAoJEPNX0OmQPkAIQqEP/3t3ZrdDKKQSY/OLz27sFHNm
LqpQIlV5ukyfM8vCF8vp5a2yN2rJSrwmMUuDHppqAdyW/n4js5mXcsVbHsphMvoU
srqbuL1DmTW8J3MD4edVBRHi3Ag42Xnacz44w9n5DofWjJDj5j7AY5kUUiqtzzrd
VPjNaA398/4NoMPZj07Cqa/uN5uNJc6AJnwzxRFfae0HD75qOiCwvlnLxNfX+rDn
/jyziyPTZNAQObqhXr1VDVKbDsTA53Znf7C/Joj8QyYlDHL4FFJrP8jwjzzVCRWA
1jUcVpKcRSryuclG84JmWyY0qIj5IlqPqBs1Y2lp74DtBlO+GjI7ZLZYlAAGTIDq
cMq/PNO2teHsWaZNFPa3hR/ezR71ihahke/2Dj93A+Z7ytST3f0edhgtPTietWAf
ytrStPbppBg8bztWBvrsQEWj0o8kVUZXvLM9Gen5agOBhXHR+QM9i1tH8Vot+V3K
M9QyW79n8pUq7cWBaVQMyMzrwnsDgk85WhQR13eVBLzNjPLatAjBxDlJszSaO4UR
VHus9O/4a9Qa0eW1+V2KAtOgUr8aLnUxKPDMNYIXk2BqemznVBpjvdUwRhdH9yo3
2l2rEyxvSLUOYGbOqwPXot0Sm2CNQN6l4ISjvDgXHqXdYzHeeV2RaMkOjtARblLT
BFmzz9v4hNYJxdJgfYZU
=3DO66Z
-----END PGP SIGNATURE-----


----- End forwarded message -----

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl709akACgkQ8yFyWZ2N
LpdnUgf/Z8/3WwLBa4Q5vbvFxVdRTXlLG5pFD5KbgdCMnxAmThFz9ce83Gw1poK+
ID63nCO1j8sXm3XCApnaGjmm6Fo9UNuHGD8gPfdjJFT0k5vPlsl5VjP9jIRRM8BM
ccdidSwQSrsiZw3M5/6DiL6lgQ+DFP7enVKQ7KdFlr+asZibWSGDNAP6ndGuQTJl
RaQ7Y6Z9YHYLKueLvcoYdIjXwTZb7EmM9OAYqv6pT4xd0L7ajLaEP77ccuNuVaik
I2CO9r2/JoAHuBG49sxUBFTLyD3T0Fx8jp9jQl1jkccaWapi+nc3ajXZZrbIhUjx
L5H5QbMkpQqISiT5TyWVcsklQVMnTw==
=Q/qv
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--
