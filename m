X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2318" "Monday" "25" "May" "2015" "09:48:55" "-0700" "Tristan Cacqueray" "tristan.cacqueray@enovance.com" "<55635277.6000006@enovance.com>" "77" "[oss-security] [OSSA 2015-009] Persistent XSS in Horizon metadata dashboard (CVE-2015-3988)" nil nil nil "5" "2015052516:48:55" "[oss-security] [OSSA 2015-009] Persistent XSS in Horizon metadata dashboard (CVE-2015-3988)" (number mark "        tristan.cacq May 25   77/2318  " thread-indent "\"[oss-security] [OSSA 2015-009] Persistent XSS in Horizon metadata dashboard (CVE-2015-3988)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18415 invoked by uid 550); 25 May 2015 16:48:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18379 invoked from network); 25 May 2015 16:48:47 -0000
X-Virus-Scanned: amavisd-new at enovance.com
Message-ID: <55635277.6000006@enovance.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="IhTv0fTvF72rb4djkBKXqJFK9M8NNT6EH"
Date: Mon, 25 May 2015 09:48:55 -0700
From: Tristan Cacqueray <tristan.cacqueray@enovance.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-009] Persistent XSS in Horizon metadata dashboard (CVE-2015-3988)
To: oss-security@lists.openwall.com

--IhTv0fTvF72rb4djkBKXqJFK9M8NNT6EH
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-009: Persistent XSS in Horizon metadata dashboard
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: May 25, 2015
:CVE: CVE-2015-3988


Affects
~~~~~~~
- Horizon: 2014.2 versions through 2014.2.3 and version 2015.1.0


Description
~~~~~~~~~~~
Sunil Yadav from IBM Security Services reported a persistent XSS in
Horizon. An authenticated user may conduct a persistent XSS attack by
setting a malicious metadata to a Glance image, a Nova flavor or a
Host Aggregate and tricking an administrator to load the update
metadata page. Once executed in a legitimate context this attack may
result in a privilege escalation. All Horizon setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/183659 (Juno)
- https://review.openstack.org/183656 (Kilo)
- https://review.openstack.org/179429 (Liberty)


Credits
~~~~~~~
- Sunil Yadav from IBM (CVE-2015-3988)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1449260
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3988


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.1
  (kilo) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--IhTv0fTvF72rb4djkBKXqJFK9M8NNT6EH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVY1J3AAoJECK5oFySXMXYJnsH/0iYa6G/H7l4+eEFK9hQkPhf
f4SZzaNUHeVa0hyhI6bz4lchpZgW+Daq36Cgaw+JKtU9MDCF8hnRIqM0ngOzutDV
DPzaAkbG1H0q3l8QpQam+lwehBF4jEeBYs84CwUlm8YcVwO1V+QHcafj3o+pMiXQ
3lkJAKfS6zLCE0OT9kbge9Pz2RNFROEEYHwApz2JMARSbYbnmsxCaIbqG6pVp9Rr
L/iPjRIiJqFOECgE7T0L1W+DT3QXErlK6P8pAChOPY+9/4aXXNfE+kQ3cJDlTQ+0
MefALKINd54VfZjY7kzKHtnSEL3EjTRLwtsJ64IEU0ISas1O3I7+JhEGFphWQGI=
=iuOk
-----END PGP SIGNATURE-----

--IhTv0fTvF72rb4djkBKXqJFK9M8NNT6EH--
