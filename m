X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2723" "Thursday" "10" "March" "2016" "02:39:26" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56E0DE5E.9000100@redhat.com>" "89" "[oss-security] [OSSA 2016-007.1] Nova host data leak through resize/migration (CVE-2016-2140) ERRATA" nil nil nil "3" "2016031002:39:26" "[oss-security] [OSSA 2016-007.1] Nova host data leak through resize/migration (CVE-2016-2140) ERRATA" (number mark "U       tdecacqu@red Mar 10   89/2723  " thread-indent "\"[oss-security] [OSSA 2016-007.1] Nova host data leak through resize/migration (CVE-2016-2140) ERRATA\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16297 invoked by uid 550); 10 Mar 2016 02:39:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16279 invoked from network); 10 Mar 2016 02:39:00 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56E0DE5E.9000100@redhat.com>
Date: Thu, 10 Mar 2016 02:39:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="aDU4hq06RWws0wWUeFeepdDVpfdCtdP6p"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 10 Mar 2016 02:38:49 +0000 (UTC)
Subject: [oss-security] [OSSA 2016-007.1] Nova host data leak through resize/migration
 (CVE-2016-2140) ERRATA

--aDU4hq06RWws0wWUeFeepdDVpfdCtdP6p
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-007.1: Nova host data leak through resize/migration
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
provides an additional fix for that issue.


Patches
~~~~~~~
- https://review.openstack.org/289960 - original (Kilo)
- https://review.openstack.org/290847 - errata   (Kilo)
- https://review.openstack.org/289958 - original (Liberty)
- https://review.openstack.org/290843 - errata   (Liberty)
- https://review.openstack.org/289957 - original (Mitaka)
- https://review.openstack.org/290715 - errata   (Mitaka)


Credits
~~~~~~~
- Matthew Booth from Red Hat (CVE-2016-2140)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1548450
- https://bugs.launchpad.net/bugs/1555287
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2140


OSSA History
~~~~~~~~~~~~
- 2016-03-09 - Errata 1
- 2016-03-08 - Original Version


--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--aDU4hq06RWws0wWUeFeepdDVpfdCtdP6p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJW4N5eAAoJECK5oFySXMXYSpoIAI9xSqNQ2bCvR+XuAOe56ylj
Bx0J4/lKm7UjxvfQDy/g+X8wbXVCmwj2P0otboZ4CWP/nnQcCv7NCcXilO9sD1w/
aKKAsWihIkjRKNisJyiQHqH7ZDo862Zm4/qojDM19uCNV4LBwHoaIp9KR9G78g0I
ODklN3NsbKsV6KyRUIlmP0H4C37MKpywiov0ulBiHpHacksNEZwv0LXf5wepzuEY
QliM3MtjgJYyjnrQJkjM8QQ0vEvyPltiJ3/RpppH/fI2MYIMNwVkWfU7Otu8sdjV
HvrLRTCd/3X1v/jPS7+Ju6CoQEhL3vScq/s0APs1vk3yHyv3p+W2T4KWCx8J+Ws=
=h11U
-----END PGP SIGNATURE-----

--aDU4hq06RWws0wWUeFeepdDVpfdCtdP6p--
