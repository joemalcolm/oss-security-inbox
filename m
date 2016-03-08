X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2285" "Tuesday" "8" "March" "2016" "20:16:39" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56DF3327.9000704@redhat.com>" "77" "[oss-security] [OSSA 2016-007] Nova host data leak through resize/migration (CVE-2016-2140)" nil nil nil "3" "2016030820:16:39" "[oss-security] [OSSA 2016-007] Nova host data leak through resize/migration (CVE-2016-2140)" (number mark "U       tdecacqu@red Mar  8   77/2285  " thread-indent "\"[oss-security] [OSSA 2016-007] Nova host data leak through resize/migration (CVE-2016-2140)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28089 invoked by uid 550); 8 Mar 2016 20:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28067 invoked from network); 8 Mar 2016 20:16:15 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <56DF3327.9000704@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="nGOvaOM0o72alcs8TvDwKEFMQqV7BL8AM"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 8 Mar 2016 20:16:39 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2016-007] Nova host data leak through resize/migration
 (CVE-2016-2140)
To: oss-security@lists.openwall.com

--nGOvaOM0o72alcs8TvDwKEFMQqV7BL8AM
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-007: Nova host data leak through resize/migration
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: March 08, 2016
:CVE: CVE-2016-2140


Affects
~~~~~~~
- Nova: <=3D2015.1.3, >=3D12.0.0 <=3D12.0.2


Description
~~~~~~~~~~~
Matthew Booth from Red Hat reported a vulnerability in Nova instance
resize/migration. By overwriting an ephemeral or root disk with a
malicious image before requesting a resize, an authenticated user may
be able to read arbitrary files from the compute host. Only setups
using libvirt driver with raw storage and setting "use_cow_images =3D
False" (not default) are affected.


Patches
~~~~~~~
- https://review.openstack.org/289960 (Kilo)
- https://review.openstack.org/289958 (Liberty)
- https://review.openstack.org/289957 (Mitaka)


Credits
~~~~~~~
- Matthew Booth from Red Hat (CVE-2016-2140)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1548450
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2140


Notes
~~~~~
- This fix will be included in future 2015.1.3 (kilo) and 12.0.3
  (liberty) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--nGOvaOM0o72alcs8TvDwKEFMQqV7BL8AM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJW3zMnAAoJECK5oFySXMXYdHkH/jNC5/vHWBqrt2+lxFNAcAms
KRmkkbDrfFt8OzD9EX/2xxbuyGULTLGYLYPc87L+vUygG0PG0a2qH6WyNEoS9fA6
qddMDq7FluqK8qrivedSMG0r5F3zV6Z8pRBg5S+2AGaqTHoyJaDHzBvdFFVJfqNx
oXFuE5sy7a56s8rezLoiuAWTBfuKjj29adflgN65vyfLJXDU6h7xigkMAjY2T3WV
cwu9Ho0pjtHROmQft/wck3Sm5Zu82umeRALguwsWZq2beVJsK75smBdBx1G+M+kz
hGDLDpmTWPZ9+A1KW2EfnvJCH+1beT7DzPfP8OAtXadHcQjM/Z2vt+UHYFwMlvw=
=gLfD
-----END PGP SIGNATURE-----

--nGOvaOM0o72alcs8TvDwKEFMQqV7BL8AM--
