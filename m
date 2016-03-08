X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2670" "Tuesday" "8" "March" "2016" "22:02:31" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56DF4BF7.8010904@redhat.com>" "86" "Re: [oss-security] [OSSA 2016-007] Nova host data leak through resize/migration (CVE-2016-2140)" nil nil nil "3" "2016030822:02:31" "[oss-security] [OSSA 2016-007] Nova host data leak through resize/migration (CVE-2016-2140)" (number mark "U       tdecacqu@red Mar  8   86/2670  " thread-indent "\"Re: [oss-security] [OSSA 2016-007] Nova host data leak through resize/migration (CVE-2016-2140)\"\n") "<56DF3327.9000704@redhat.com>" ("<56DF3327.9000704@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23572 invoked by uid 550); 8 Mar 2016 22:02:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22526 invoked from network); 8 Mar 2016 22:02:05 -0000
To: oss-security@lists.openwall.com
References: <56DF3327.9000704@redhat.com>
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <56DF4BF7.8010904@redhat.com>
Date: Tue, 8 Mar 2016 22:02:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <56DF3327.9000704@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="DiLIiGBRus21nqFj9E4uLRaek8PJaX3T0"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: Re: [oss-security] [OSSA 2016-007] Nova host data leak through
 resize/migration (CVE-2016-2140)

--DiLIiGBRus21nqFj9E4uLRaek8PJaX3T0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/08/2016 08:16 PM, Tristan Cacqueray wrote:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> OSSA-2016-007: Nova host data leak through resize/migration
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> :Date: March 08, 2016
> :CVE: CVE-2016-2140
>=20
>=20
> Affects
> ~~~~~~~
> - Nova: <=3D2015.1.3, >=3D12.0.0 <=3D12.0.2
>=20
>=20
> Description
> ~~~~~~~~~~~
> Matthew Booth from Red Hat reported a vulnerability in Nova instance
> resize/migration. By overwriting an ephemeral or root disk with a
> malicious image before requesting a resize, an authenticated user may
> be able to read arbitrary files from the compute host. Only setups
> using libvirt driver with raw storage and setting "use_cow_images =3D
> False" (not default) are affected.
>=20
>=20
> Patches
> ~~~~~~~
> - https://review.openstack.org/289960 (Kilo)
> - https://review.openstack.org/289958 (Liberty)
> - https://review.openstack.org/289957 (Mitaka)
>=20
>=20
> Credits
> ~~~~~~~
> - Matthew Booth from Red Hat (CVE-2016-2140)
>=20
>=20
> References
> ~~~~~~~~~~
> - https://bugs.launchpad.net/bugs/1548450
> - http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2140
>=20
>=20
> Notes
> ~~~~~
> - This fix will be included in future 2015.1.3 (kilo) and 12.0.3
>   (liberty) releases.

There is a typo in the note, this fix will be included in future
2015.1.4 (kilo). Further advisories will drop that note entirely, use
http://releases.openstack.org/ to check stable version number including
the fix.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team





--DiLIiGBRus21nqFj9E4uLRaek8PJaX3T0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJW30v3AAoJECK5oFySXMXYe7gH/A5jdfaFA6hFGAeg1oBnonbj
wiTCKK9YzDp4+xFUt9us8cWuVqAo4UhL67ZEZL+bekRgX4aRx04Jo4LLmRvR54nH
Kx6BtloHSkAOCEnIVxSt4Mqq99uRDn8HRuSSgew4jMTfxIXR2+O+VA3VZgYfN+48
liWlX0rCcqhJTJSCvyx5MdDIdLwO8k2u5Pa20Us2pPwd4+nU9wlyYlmr5LcBbTke
NwsLsLse/xMrThdo0esmn5HBUsyMDWN4Uf9F+uyhOmp/DQK/OZHlwcEAPxP2daQS
JloDGC5nTi3QOJn4lslrjOd4k7+SMDyVjqvB0RxwE0E3tnzfi/R4YZMZe9reOcg=
=ykjy
-----END PGP SIGNATURE-----

--DiLIiGBRus21nqFj9E4uLRaek8PJaX3T0--
