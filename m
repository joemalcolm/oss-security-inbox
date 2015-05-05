X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2320" "Tuesday" "5" "May" "2015" "08:22:13" "-0400" "Tristan Cacqueray" "tristan.cacqueray@enovance.com" "<5548B5F5.4060906@enovance.com>" "74" "[oss-security] [OSSA 2015-008] Potential Keystone cache backend password leak in log (CVE-2015-3646)" nil nil nil "5" "2015050512:22:13" "[oss-security] [OSSA 2015-008] Potential Keystone cache backend password leak in log (CVE-2015-3646)" (number mark "        tristan.cacq May  5   74/2320  " thread-indent "\"[oss-security] [OSSA 2015-008] Potential Keystone cache backend password leak in log (CVE-2015-3646)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10139 invoked by uid 550); 5 May 2015 12:22:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10098 invoked from network); 5 May 2015 12:22:05 -0000
X-Virus-Scanned: amavisd-new at enovance.com
Message-ID: <5548B5F5.4060906@enovance.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="RQv8FuRJ20a8ANPIoUjOxdVnUIXdncjSS"
Date: Tue, 05 May 2015 08:22:13 -0400
From: Tristan Cacqueray <tristan.cacqueray@enovance.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-008] Potential Keystone cache backend password leak in
 log (CVE-2015-3646)
To: oss-security@lists.openwall.com

--RQv8FuRJ20a8ANPIoUjOxdVnUIXdncjSS
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-008: Potential Keystone cache backend password leak in log
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: May 04, 2015
:CVE: CVE-2015-3646


Affects
~~~~~~~
- Keystone: versions through 2014.1.4,
            and 2014.2 versions through 2014.2.3


Description
~~~~~~~~~~~
Eric Brown from VMware reported a vulnerability in Keystone. The
backend_argument configuration option content is being logged, and it
may contain sensitive information for specific backends (like a
password for MongoDB). An attacker with read access to Keystone logs
may therefore obtain sensitive data about certain backends. All
Keystone setups are potentially impacted.


Patches
~~~~~~~
- https://review.openstack.org/175519 (Icehouse)
- https://review.openstack.org/173116 (Juno)


Credits
~~~~~~~
- Eric Brown from VMware (CVE-2015-3646)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1443598
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3646


Notes
~~~~~
- This fix will be included in future 2014.1.5 (icehouse) and 2014.2.4
  (juno) releases.
- The 2015.1.0 (kilo) release is not affected.


--RQv8FuRJ20a8ANPIoUjOxdVnUIXdncjSS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVSLX1AAoJECK5oFySXMXYGGIH/jCSCcoMHUcgm5v0DORKpfJW
5wvuPRE8icBpI/pkrAvHA7+QFA5e66gcCcrN3AHES7kbcWMy9F0DcWtRajY2pbzJ
Z8LcJ+/h8TihyKUMuLq6GFiSS4zK1xDdpiAkFO0Fd4FNIRLe64aRXHazdSzNEXmb
X3Rg4aDp7AGElZl0Us8YcTEKIm2LVZLl4d2u0Ujyj6wk+I5Fe3UCMesC4qmWoNw2
vTa3Lk8vwsduLomibbEWmXaGatYyv4WAcFQ3tztL84mZp3HIiLgIEKS8/DiudQwz
eCpX3q0YL0IcKb0pOjsLEdOYTHMZphnuDjDFAkEZ6GdHvqtN2pC5DN084IBUOtU=
=hzAZ
-----END PGP SIGNATURE-----

--RQv8FuRJ20a8ANPIoUjOxdVnUIXdncjSS--
