X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2191" "Friday" "17" "June" "2016" "14:23:34" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<576407E6.6000706@redhat.com>" "70" "[oss-security] [OSSA-2016-010] XSS in Horizon client side template (CVE-2016-4428)" "^Date:" nil nil "6" "2016061714:23:34" "[oss-security] [OSSA-2016-010] XSS in Horizon client side template (CVE-2016-4428)" (number mark "        tdecacqu@red Jun 17   70/2191  " thread-indent "\"[oss-security] [OSSA-2016-010] XSS in Horizon client side template (CVE-2016-4428)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7820 invoked by uid 550); 17 Jun 2016 14:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7802 invoked from network); 17 Jun 2016 14:23:23 -0000
Message-ID: <576407E6.6000706@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="FUdtGEIIU8X0EChVPT4bEhKufLHdsxLhn"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 17 Jun 2016 14:23:11 +0000 (UTC)
Date: Fri, 17 Jun 2016 14:23:34 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA-2016-010] XSS in Horizon client side template (CVE-2016-4428)
To: oss-security@lists.openwall.com

--FUdtGEIIU8X0EChVPT4bEhKufLHdsxLhn
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-010: XSS in Horizon client side template
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 15, 2016
:CVE: CVE-2016-4428


Affects
~~~~~~~
- Horizon: <=3D8.0.1, >=3D9.0.0 <=3D9.0.1


Description
~~~~~~~~~~~
Beth Lancaster and Brandon Sawyers from Virginia Tech reported a
vulnerability in Horizon. By injecting Angularjs template in dashboard
forms, such as image's description, an authenticated user may trigger
a cross-site-scripting vulnerability when another user browses the
affected pages. It may result in potential assets theft like user
access credentials. All Horizon setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/329997 (Liberty)
- https://review.openstack.org/329996 (Mitaka)
- https://review.openstack.org/329998 (Newton)


Credits
~~~~~~~
- Beth Lancaster from Virginia Tech (CVE-2016-4428)
- Brandon Sawyers from Virginia Tech (CVE-2016-4428)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1567673
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-4428

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--FUdtGEIIU8X0EChVPT4bEhKufLHdsxLhn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXZAfnAAoJECK5oFySXMXYv5wH+wQYC5zCCl3p6bEGavG4EkMX
UzlmrZytgqtNuS1k7drc6ubbhi2eWw97f0fL+/a9QTfYNcPXEoouauc+6lnJp+XD
L153F/hEpomZe8tJ3T8agPgqyZKL83BzgAXyCxEVVozDrr2C6xR7Xq87jDLMAwCM
L1F4lQO9mjO8PS51l/zzwpxMmcMsWKPXBzdYpYM0WGXxNJT8EklX6R0zWIl8R7ta
NoPlDGB3MWSAVHP1ANxJpkQmsFOvgOlIBsZlFYwGxF9u5+SYzd44ZnYO01+D3+/L
7yqcqeRNExDG3PP8M+/GSQC/bR6mVccmUnKRMk0PsUUygOv+nNaQME+yIbQWEiY=
=OImx
-----END PGP SIGNATURE-----

--FUdtGEIIU8X0EChVPT4bEhKufLHdsxLhn--
