X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3252" "Thursday" "2" "November" "2017" "11:51:59" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20171102012112.GB23674@sin.redhat.com>" "87" "[oss-security] CVE-2017-15095:  further deserialisation attacks against jackson-databind (follow-up to CVE-2017-7525)" nil nil nil "11" "2017110201:21:59" "[oss-security] CVE-2017-15095: further deserialisation attacks against jackson-databind (follow-up to CVE-2017-7525)" (number mark "U       dmoppert@red Nov  2   87/3252  " thread-indent "\"[oss-security] CVE-2017-15095:  further deserialisation attacks against jackson-databind (follow-up to CVE-2017-7525)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21919 invoked by uid 550); 2 Nov 2017 01:22:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21889 invoked from network); 2 Nov 2017 01:22:15 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 030817EA89
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=dmoppert@redhat.com
Date: Thu, 2 Nov 2017 11:51:59 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20171102012112.GB23674@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TybLhxa8M7aNoW+V"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 02 Nov 2017 01:22:04 +0000 (UTC)
Subject: [oss-security] CVE-2017-15095:  further deserialisation attacks against
 jackson-databind (follow-up to CVE-2017-7525)

--TybLhxa8M7aNoW+V
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In July, deserialisation vulnerabilities were disclosed affecting
jackson-databind [1], assigned CVE-2017-7525.  These were patched
upstream by blacklisting vulnerable classes, resulting in release 2.8.9
and the issue was closed.  Various downstreams including Red Hat issued
a fix at this point.

1: https://github.com/FasterXML/jackson-databind/issues/1599

But blacklists being what they are, a further set of dangerous classes
have been added since (all included in release 2.9.1).  The further
patches reference the original ticket, but given that security releases
have already been issued for CVE-2017-7525 based on 2.8.9, we thought it
prudent to issue a new CVE ID covering the additional classes:
CVE-2017-15095.


This issue and CVE-2017-7525 were reported by Liao Xinxi of NSFOCUS.


Note that there is a mitigation addressing both of these CVEs described
at https://bugzilla.redhat.com/show_bug.cgi?id=3D1462702#c12


More detail below from [2]:

2: https://bugzilla.redhat.com/show_bug.cgi?id=3D1506612#c3

> Other distributions may have made the same mistake, since the original
> upstream ticket was closed before additional names were added to the
> blacklist.
>=20
> Original ticket + patches (CVE-2017-7525):
>=20
>   https://github.com/FasterXML/jackson-databind/issues/1599
>   https://github.com/FasterXML/jackson-databind/commit/60d459ce
>   https://github.com/FasterXML/jackson-databind/commit/3bfbb835
>=20
> Further tickets and patches to block more dangerous types (I think
> these are
> all):
>=20
>   https://github.com/FasterXML/jackson-databind/issues/1680
>   https://github.com/FasterXML/jackson-databind/issues/1723
>   https://github.com/FasterXML/jackson-databind/issues/1737
>=20
>   https://github.com/FasterXML/jackson-databind/commit/e8f043d1
>   https://github.com/FasterXML/jackson-databind/commit/ddfddfba
>=20
> This CVE-2017-15095 should be considered to include everything in
> NO_DESER_CLASS_NAMES as of today:
>=20
>=20=20
> https://github.com/FasterXML/jackson-databind/blob/
> 7093008aa2afe8068e120df850189ae072dfa1b2/src/main/java/com/fasterxml/
> jackson/databind/deser/BeanDeserializerFactory.java#L43

--=20
Doran Moppert
Red Hat Product Security

--TybLhxa8M7aNoW+V
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJZ+nM2AAoJEGohqWcZR7qpiQAQAKAFlC0hu+4xprAuGW7Tt2JG
+Ah0N2qyURFrHjXVN7mKYQf578WYru/tgI/MRJt5iAuRJIZXU5nYgrHX8tHPlEG9
Szo2oBLhjPRzEyzQS+Pqbxw1NuVMPV+rUJzlCf4Bpkob6vkx1Ba318KwgBZJ148V
/RqsKe7QFPRQ+jBG6nifF4yY4JRBI6hkouqGe+Doper64DvlLx2B7f2Q0HvfVZtC
p+n8gtPlxLLMWHUVdP1XzTFFo5+Cy2ScByQe1X7IBnN3y9vCx8hJGtooEISK4age
z/Nl/OR8EIS/e3ZcY2syCJlTZF3BJmHhjdFBsndwMjjgDS3I8/Qf7eH3r5brWCsJ
6xS0RAHGG4U51eAsxkV/WPuV+QI1RTjGjB5tqiMJFTL5zDtt5d2Q90G+a4ZWNL26
aShjiofQkCIukCuzVS4l4JvaKbxPHDYKXoATleu1/dtem+rR2mLsRUcRcp+Y4GqX
vm+Sq/11EkbvPIadEdyygUalO6hR47eCpLQsVOwUtnH4GDozzoJZpP+/+DdjnJhe
+OQqnFejozwUSbIXTKLNa6SbIincDcz+ACcj3h8Q7ybyBT1EbBeX+pRpyjQCkcvb
7kP8YVdOpQQNfG/T1UjGXyoUvXGO7l/NhganCUnKIfk8yGF4A5UPwbgDwiSh+kvs
zxHO2gXbg8mX1d57WGbq
=tMYL
-----END PGP SIGNATURE-----

--TybLhxa8M7aNoW+V--
