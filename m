X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2683" "Tuesday" "25" "August" "2015" "16:49:44" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55DC9CA8.4050903@redhat.com>" "84" "[oss-security] [OSSA 2015-015] Nova instance migration process does not stop when instance is deleted (CVE-2015-3241)" nil nil nil "8" "2015082516:49:44" "[oss-security] [OSSA 2015-015] Nova instance migration process does not stop when instance is deleted (CVE-2015-3241)" (number mark "        tdecacqu@red Aug 25   84/2683  " thread-indent "\"[oss-security] [OSSA 2015-015] Nova instance migration process does not stop when instance is deleted (CVE-2015-3241)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30626 invoked by uid 550); 25 Aug 2015 16:49:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30604 invoked from network); 25 Aug 2015 16:49:34 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <55DC9CA8.4050903@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="AQBWRaA5iEF1Fhi3s99IGdK1C1Ac5BaB9"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 25 Aug 2015 16:49:44 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-015] Nova instance migration process does not stop when
 instance is deleted (CVE-2015-3241)
To: oss-security@lists.openwall.com

--AQBWRaA5iEF1Fhi3s99IGdK1C1Ac5BaB9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-015: Nova instance migration process does not stop when instance =
is deleted
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 25, 2015
:CVE: CVE-2015-3241


Affects
~~~~~~~
- Nova: versions through 2014.2.3 and 2015.1 versions through 2015.1.1


Description
~~~~~~~~~~~
George Shuklin from Webzilla LTD reported a vulnerability in Nova
migration process. By resizing and deleting an instance repeatedly an
authenticated user may overcome his quota and overload Nova computes
node resulting in a denial of service attack. All Nova setups are
affected.


Patches
~~~~~~~
- https://review.openstack.org/208876 (Juno)
- https://review.openstack.org/214528 (Juno)
- https://review.openstack.org/213234 (Kilo)
- https://review.openstack.org/209856 (Kilo)
- https://review.openstack.org/194861 (Liberty)
- https://review.openstack.org/192986 (Liberty)


Credits
~~~~~~~
- George Shuklin from Webzilla LTD (CVE-2015-3241)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1387543
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3241


Notes
~~~~~
- This fix requires oslo.concurrency >=3D 1.8.2 for Kilo and >=3D 2.3.0 for
  Liberty. Juno fix embeds a patched version of oslo.concurrency.
- This fix will be included in future 2014.2.4 (juno) and 2015.1.2 (kilo)
  releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--AQBWRaA5iEF1Fhi3s99IGdK1C1Ac5BaB9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJV3JypAAoJECK5oFySXMXYQDYH/0gi7OLlVut3UXtAtbwO++My
aMqQxRUmMZaofy8f6WyeKOdPpmiUBpEpFIqnNhNCldlYDJ0Lp3pGN+mTAuHJf3lq
oCAuuMRWstqIS4PXuRy/m52T0SU3Jb/nocv1ffo5f739JQKATeZi78dfO2DmDQlt
nQsn2G290kAAUE/9+zC0Rt9U5iIPhy26cG7H8ljuLeQgi//4auCFGR+rwbY/srVX
iC3cXOqwBFR6+RfF+WryO/x4wiZGcevp4Ff+jAfgHhycb7TGln75ffi6b8Bn5In7
qNXUwQR2NMdaEUFWM0zjJxGvauGCh3vWqPEiPA2VwmLRdpIXVINw6rSFmEELGT8=
=5365
-----END PGP SIGNATURE-----

--AQBWRaA5iEF1Fhi3s99IGdK1C1Ac5BaB9--
