X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2876" "Thursday" "7" "January" "2016" "17:40:23" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<568EA307.7070605@redhat.com>" "88" "[oss-security] [OSSA 2016-001] Nova host data leak through snapshot (CVE-2015-7548)" nil nil nil "1" "2016010717:40:23" "[oss-security] [OSSA 2016-001] Nova host data leak through snapshot (CVE-2015-7548)" (number mark "U       tdecacqu@red Jan  7   88/2876  " thread-indent "\"[oss-security] [OSSA 2016-001] Nova host data leak through snapshot (CVE-2015-7548)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13511 invoked by uid 550); 7 Jan 2016 17:40:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13490 invoked from network); 7 Jan 2016 17:40:04 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <568EA307.7070605@redhat.com>
Date: Thu, 7 Jan 2016 17:40:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RanCUX0QgrS8bVgscNSUVb21rirWOQTjJ"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] [OSSA 2016-001] Nova host data leak through snapshot (CVE-2015-7548)

--RanCUX0QgrS8bVgscNSUVb21rirWOQTjJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
OSSA-2016-001: Nova host data leak through snapshot
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

:Date: January 07, 2016
:CVE: CVE-2015-7548


Affects
~~~~~~~
- Nova: <=3D2015.1.2, =3D=3D12.0.0


Description
~~~~~~~~~~~
Matthew Booth from Red Hat reported a vulnerability in Nova instance
snapshot. By overwriting the disk inside an instance with a malicious
image and requesting a snapshot, an authenticated user would be able
to read an arbitrary file from the compute host. Note that the host
file needs to be readable by the nova user to be exposed except when
using lvm for instance storage, when all files readable by root are
exposed. Only setups using libvirt to spawn instances are vulnerable.
Of these, setups which use filesystem storage, and do not set
"use_cow_images =3D False" in Nova configuration are not affected.
Setups which use ceph or lvm for instance storage, and setups which
use filesystem storage with "use_cow_images =3D False" are all affected.


Patches
~~~~~~~
- https://review.openstack.org/264819 (Kilo)
- https://review.openstack.org/264820 (Kilo)
- https://review.openstack.org/264821 (Kilo)
- https://review.openstack.org/264815 (Liberty)
- https://review.openstack.org/264816 (Liberty)
- https://review.openstack.org/264817 (Liberty)
- https://review.openstack.org/264812 (Mitaka)
- https://review.openstack.org/264813 (Mitaka)
- https://review.openstack.org/264814 (Mitaka)


Credits
~~~~~~~
- Matthew Booth from Red Hat (CVE-2015-7548)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1524274
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-7548


Notes
~~~~~
- This fix will be included in future 2015.1.3 (kilo) and 12.0.1
(liberty) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--RanCUX0QgrS8bVgscNSUVb21rirWOQTjJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWjqMHAAoJECK5oFySXMXYR1oIAIBQgwu8gdRNVwFfHuHC3CoP
wz2PgQKxXsYF5JGsoygrqLxeTlUU9Mbl60/WOvp8rmjCx5swaIcxn+CBr2h/PztP
Dv7UXDjzj9ux9JjJpJN/5JhVWfKXAF2PPC87498sGRiHQkpmFmpmdFfnTw1MdDio
b+/vAp4RdA+J5f97N6ViLrevQlOpdQBaY2RVr3XAh8h8hLl9loZqAT8gSXrT+WpY
J/FM60jrpE+fVaihbTgKtL1waC0LwgTze0w4W9SeLK8j0zWnzDSToN3nzRkKSXi9
q8iFvz9FQGkTGAaBLgkNS0VUQmXZzubqwGqo0fD60YQIcee/is4QJZLkDI/P3hI=
=lM93
-----END PGP SIGNATURE-----

--RanCUX0QgrS8bVgscNSUVb21rirWOQTjJ--
