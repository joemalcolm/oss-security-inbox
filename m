X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3111" "Wednesday" "30" "March" "2016" "13:47:29" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56FBD8F1.4060603@redhat.com>" "101" "[oss-security] [OSSA 2016-007.2] Nova host data leak through resize/migration (CVE-2016-2140) ERRATA #2" "^Date:" nil nil "3" "2016033013:47:29" "[oss-security] [OSSA 2016-007.2] Nova host data leak through resize/migration (CVE-2016-2140) ERRATA #2" (number mark "U       tdecacqu@red Mar 30  101/3111  " thread-indent "\"[oss-security] [OSSA 2016-007.2] Nova host data leak through resize/migration (CVE-2016-2140) ERRATA #2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28370 invoked by uid 550); 30 Mar 2016 13:47:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28351 invoked from network); 30 Mar 2016 13:47:17 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <56FBD8F1.4060603@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NDKX8CT3bQKt5f4HJdG1vL5iGugEvTJAw"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Wed, 30 Mar 2016 13:47:29 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2016-007.2] Nova host data leak through resize/migration
 (CVE-2016-2140) ERRATA #2
To: oss-security@lists.openwall.com

--NDKX8CT3bQKt5f4HJdG1vL5iGugEvTJAw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-007.2: Nova host data leak through resize/migration
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

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


Errata
~~~~~~
The former fix did not take into account the usage of non-disk-image
backends and caused a regression for this use-case. This update
provides an additional fix for that issue. Moreover, the kilo backport
caused a regression in live migration where the disk info file is JSON
encoded. This second update provides an additional fix for
stable/kilo.


Patches
~~~~~~~
- https://review.openstack.org/289960 - original (Kilo)
- https://review.openstack.org/290847 - errata (Kilo)
- https://review.openstack.org/294205 - errata#2 (Kilo)
- https://review.openstack.org/289958 - original (Liberty)
- https://review.openstack.org/290843 - errata (Liberty)
- https://review.openstack.org/289957 - original (Mitaka)
- https://review.openstack.org/290715 - errata (Mitaka)


Credits
~~~~~~~
- Matthew Booth from Red Hat (CVE-2016-2140)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1548450
- https://bugs.launchpad.net/bugs/1555287
- https://bugs.launchpad.net/bugs/1558697
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2140


Notes
~~~~~
- This fix will be included in future 2015.1.4 (kilo) and 12.0.3
  (liberty) releases.


OSSA History
~~~~~~~~~~~~
- 2016-03-30 - Errata 2
- 2016-03-09 - Errata 1
- 2016-03-08 - Original Version


--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--NDKX8CT3bQKt5f4HJdG1vL5iGugEvTJAw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJW+9jxAAoJECK5oFySXMXYGDQIAK+N356ZAJMCYklXy5zSMRx9
HRTwIR95+5T1jqj4NM9JNmh01ERl+3Hq+dHkwO9OGA6lrT/m5fKMjPrrZogHWEzp
hCZ1QSIizffht0fHUpPdiMPb2440GuJzPvmHuKYyKaWnUnSuFOTWkL5NRXI7zeik
yBVgWqomMo15qKb8X3MGVbRHFrNhvA+nX26cQ4EXa7fNd50jT+5EXurkfj8mwdZG
mz/KtCG8j1WAMS3bnkj5baFzyVNdukh5NpqmgIAeri+FTfQ1Nke1CNbHQ2EFY9Yu
n7BkS4Bk6KKhGxkDzuCuoaOCJ7tZUVELPgtkjjiNPZ43KasNMZYNgZXZbtyINXA=
=1Rnm
-----END PGP SIGNATURE-----

--NDKX8CT3bQKt5f4HJdG1vL5iGugEvTJAw--
