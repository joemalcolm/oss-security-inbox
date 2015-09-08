X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2336" "Tuesday" "8" "September" "2015" "23:42:49" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55EF7279.7010206@redhat.com>" "78" "[oss-security] [OSSA 2015-018] Neutron firewall rules bypass through port update (CVE-2015-5240)" nil nil nil "9" "2015090823:42:49" "[oss-security] [OSSA 2015-018] Neutron firewall rules bypass through port update (CVE-2015-5240)" (number mark "        tdecacqu@red Sep  8   78/2336  " thread-indent "\"[oss-security] [OSSA 2015-018] Neutron firewall rules bypass through port update (CVE-2015-5240)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31881 invoked by uid 550); 8 Sep 2015 23:42:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31863 invoked from network); 8 Sep 2015 23:42:52 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <55EF7279.7010206@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="Th2wpVeJUMlpph3QI9tiAPTbEuvhhoBT2"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 8 Sep 2015 23:42:49 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-018] Neutron firewall rules bypass through port update
 (CVE-2015-5240)
To: oss-security@lists.openwall.com

--Th2wpVeJUMlpph3QI9tiAPTbEuvhhoBT2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-018: Neutron firewall rules bypass through port update
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: September 08, 2015
:CVE: CVE-2015-5240


Affects
~~~~~~~
- Neutron: versions through 2014.2.3 and
           2015.1 versions through 2015.1.1


Description
~~~~~~~~~~~
Kevin Benton from Mirantis reported a vulnerability in Neutron. By
changing the device owner of an instance's port right after it is
created, an authenticated user may prevent application of firewall
rules and so avoid IP anti-spoofing controls. All Neutron setups using
the ML2 plugin or a plugin that relies on the security groups AMQP API
are affected.


Patches
~~~~~~~
- https://review.openstack.org/221345 (Juno)
- https://review.openstack.org/221344 (Kilo)
- https://review.openstack.org/221342 (Liberty)


Credits
~~~~~~~
- Kevin Benton from Mirantis (CVE-2015-5240)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1489111
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5240


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and
  2015.1.2 (kilo) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--Th2wpVeJUMlpph3QI9tiAPTbEuvhhoBT2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJV73J6AAoJECK5oFySXMXYFJkH/0Nt7slgQPblhgJR0C8uqpce
OJLcHV2frjgVzpBNnuNBEq9xCN47fcTwrQWJIEvbdfa9UmeADyQTtcxyZDDieEOn
up/tHwU+OfV+T1cGdkC5gMUJhBKjljpt+h6zekqhZASXAIv3rcdUX+pkhL+2J6KC
QfUgVOCSqje3FXlwaEKsbhcu0D0SasPCdZM+TvzS3KHGrUrLkREStFOfOwoXpOfZ
K19c0ETPQLwlo1LLlsQsEkQ5z7CLAK5QH0ucanSWcJZIuVxIfqmsOr3SM845B92u
U2aj3c3DuVVVtsyAwC7hgA7Aj2+F2DoD0LFpu8j8hRlpIUgt/haCMRGzrZanpbw=
=FpVo
-----END PGP SIGNATURE-----

--Th2wpVeJUMlpph3QI9tiAPTbEuvhhoBT2--
