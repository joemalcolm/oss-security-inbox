X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2385" "Tuesday" "19" "January" "2016" "17:00:13" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<569E6B9D.90904@redhat.com>" "78" "[oss-security] [OSSA 2016-003] Heat denial of service through template-validate (CVE-2015-5295)" nil nil nil "1" "2016011917:00:13" "[oss-security] [OSSA 2016-003] Heat denial of service through template-validate (CVE-2015-5295)" (number mark "U       tdecacqu@red Jan 19   78/2385  " thread-indent "\"[oss-security] [OSSA 2016-003] Heat denial of service through template-validate (CVE-2015-5295)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22358 invoked by uid 550); 19 Jan 2016 16:59:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22340 invoked from network); 19 Jan 2016 16:59:45 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <569E6B9D.90904@redhat.com>
Date: Tue, 19 Jan 2016 17:00:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ACPfrD1g1F7qDt6Cb9pHmxrRH0pOkshhF"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] [OSSA 2016-003] Heat denial of service through template-validate
 (CVE-2015-5295)

--ACPfrD1g1F7qDt6Cb9pHmxrRH0pOkshhF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-003: Heat denial of service through template-validate
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 19, 2016
:CVE: CVE-2015-5295


Affects
~~~~~~~
- Heat: <=3D2015.1.2, =3D=3D5.0.0


Description
~~~~~~~~~~~
Steven Hardy from Red Hat reported a vulnerability in Heat template
validation. By referencing a local file like /dev/zero, an
authenticated user may trick the heat engine service to load arbitrary
local file content resulting in a Denial of Service attack through
memory exhaustion. Note that the file content is not written back to
the user, though the user can determine if a file exists and if it is
readable by heat-engine. All Heat setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/269692 (Kilo)
- https://review.openstack.org/269691 (Liberty)
- https://review.openstack.org/269689 (Mitaka)


Credits
~~~~~~~
- Steven Hardy from Red Hat (CVE-2015-5295)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1496277
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5295


Notes
~~~~~
- This fix will be included in future 2015.1.3 (kilo) and 5.0.1
  (liberty) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--ACPfrD1g1F7qDt6Cb9pHmxrRH0pOkshhF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWnmudAAoJECK5oFySXMXYJmcH/RcmNy/9NZqywZJCXb0AfGQx
CN2IGKhIy6+ZIz8DYF8s0wUEEHYUDe6YLnly7mUui7XpU3k9fBUC2b+LlcoZjo/o
RiCjzXDaVxpuZicrkzDiz++GXE0j6Lmg4g0raS/BCohoM9oRgwXbwrKyDZL29vxo
Pu6oO1n/9T/U5K2CEcXwnu22K5oqymw+VZnEHgCQJapX1E3Jhri6ZPw6gWllwg20
iAs4JFwIHsIUPmolOTFNskXJd2mjWXcveCFVoBZnv8jeBsCE53gWK0teBjitoK2X
9zOt/bxC6SgIONar/YTfARkETf9Ht6OBHho0L3JTLTewXg0QuPjTSOrKgPtgFZ0=
=Wfbx
-----END PGP SIGNATURE-----

--ACPfrD1g1F7qDt6Cb9pHmxrRH0pOkshhF--
