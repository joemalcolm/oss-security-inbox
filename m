X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2388" "Tuesday" "16" "June" "2015" "10:41:59" "-0700" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55805FE7.5070007@redhat.com>" "79" "[oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1850)" nil nil nil "6" "2015061617:41:59" "[oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1850)" (number mark "U       tdecacqu@red Jun 16   79/2388  " thread-indent "\"[oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1850)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16193 invoked by uid 550); 16 Jun 2015 17:41:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16164 invoked from network); 16 Jun 2015 17:41:48 -0000
Message-ID: <55805FE7.5070007@redhat.com>
Date: Tue, 16 Jun 2015 10:41:59 -0700
From: Tristan Cacqueray <tdecacqu@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="8G21cHgOiDbCMg1JoD4nQUB5XInkb7MpJ"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing
 file (CVE-2015-1850)

--8G21cHgOiDbCMg1JoD4nQUB5XInkb7MpJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-011: Cinder host file disclosure through qcow2 backing file
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 16, 2015
:CVE: CVE-2015-1850


Affects
~~~~~~~
- Cinder: versions through 2014.1.4,
          and 2014.2 versions through 2014.2.3,
          and version 2015.1.0


Description
~~~~~~~~~~~
Bastian Blank from credativ reported a vulnerability in Cinder. By
overwriting an image with a malicious qcow2 header, an authenticated
user may mislead Cinder upload-to-image action, resulting in
disclosure of any file from the Cinder server. All Cinder setups are
affected.


Patches
~~~~~~~
- https://review.openstack.org/191871 (Icehouse)
- https://review.openstack.org/191865 (Juno)
- https://review.openstack.org/191786 (Kilo)
- https://review.openstack.org/191785 (Liberty)


Credits
~~~~~~~
- Bastian Blank from Credativ (CVE-2015-1850)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1415087
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-1850


Notes
~~~~~
- This fix will be included in future 2014.1.5 (icehouse), 2014.2.4
  (juno) and 2015.1.1 (kilo) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--8G21cHgOiDbCMg1JoD4nQUB5XInkb7MpJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVgF/nAAoJECK5oFySXMXYBJkH/1mE+PYUldfbRKCgJzXgjr/e
aPJQ7NabG3cQCDEv+Cj4Kwh1OVJBZXVo7m4BGDJW/4OsCoZERfluuDb08bE7Z77e
gCT0pZM7Oh/qV0sk1GHOJvdUwkO1GGeyVW4Vv7CPBwNllZKP6HHNjj0plpQPuJb3
LM4XvKbcnQF7Ph2ErWubx7R4UBdTsczIvMNSRchpLZAq/SiAkhFJGHEaX+GtKluX
PSwiNOSa2WdM5jf/C6Q1hpnKXeg9bt69ru0lyPwU/FZWyA1RSxCad6vK5/OpfxS3
gJl9AM+reJ77epSFN5+XI1XQPZrOByC/ZL7q7AoM3m2FhjB9g9/x4yqXEvQIb7w=
=H0SF
-----END PGP SIGNATURE-----

--8G21cHgOiDbCMg1JoD4nQUB5XInkb7MpJ--
