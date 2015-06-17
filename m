X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2614" "Wednesday" "17" "June" "2015" "07:44:11" "-0700" "Tristan Cacqueray" "tdecacqu@redhat.com" "<558187BB.2010107@redhat.com>" "91" "[oss-security] [OSSA 2015-011.1] Cinder host file disclosure through qcow2 backing file (CVE-2015-1851) ERRATA 1" nil nil nil "6" "2015061714:44:11" "[oss-security] [OSSA 2015-011.1] Cinder host file disclosure through qcow2 backing file (CVE-2015-1851) ERRATA 1" (number mark "        tdecacqu@red Jun 17   91/2614  " thread-indent "\"[oss-security] [OSSA 2015-011.1] Cinder host file disclosure through qcow2 backing file (CVE-2015-1851) ERRATA 1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21895 invoked by uid 550); 17 Jun 2015 14:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21866 invoked from network); 17 Jun 2015 14:44:00 -0000
Message-ID: <558187BB.2010107@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="LBKvMViCCl5mBJCfA6r4BdAc12AGE0wmx"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Wed, 17 Jun 2015 07:44:11 -0700
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-011.1] Cinder host file disclosure through qcow2 backing
 file (CVE-2015-1851) ERRATA 1
To: oss-security@lists.openwall.com

--LBKvMViCCl5mBJCfA6r4BdAc12AGE0wmx
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-011.1: Cinder host file disclosure through qcow2 backing file
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 16, 2015
:CVE: CVE-2015-1851


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


Errata
~~~~~~
CVE-2015-1850 has been assigned to a similar issue in Nova, the
correct CVE number for Cinder is CVE-2015-1851.


Patches
~~~~~~~
- https://review.openstack.org/191871 (Icehouse)
- https://review.openstack.org/191865 (Juno)
- https://review.openstack.org/191786 (Kilo)
- https://review.openstack.org/191785 (Liberty)


Credits
~~~~~~~
- Bastian Blank from Credativ (CVE-2015-1851)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1415087
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-1851


Notes
~~~~~
- This fix will be included in future 2014.1.5 (icehouse), 2014.2.4
  (juno) and 2015.1.1 (kilo) releases.


OSSA History
~~~~~~~~~~~~
- 2015-06-17 - Errata 1
- 2015-06-16 - Original Version

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--LBKvMViCCl5mBJCfA6r4BdAc12AGE0wmx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVgYe8AAoJECK5oFySXMXYyRwIAIk09bWsv4m/C71lyrHRcSkg
uZxyCRbXzy9Q5/gbw2Zdsedomqmah/zH9dFth1V31wb7tKw1Q+asyoUaglpg7xEO
Ua39uNlkUyzzKFUKsW7LFy4Xh/JSI87MyVPiCACfSW+VxxPdK4Mod4CMLqbMb35Z
i9fQyhgVWWZz2kNOtYhI3YQK12a5cCjpPY6+6+bU3uVOp7qKCswUjK1Hyxq4ODv/
zRIiNne/CxK1m3xEkbqghVTaRfLM3WFd/mzoYtpAyMkJZS8h8JG42hA+R9g4EiCq
/SdcEni98KNKbhjR/UBYsmfszDh4vLBPOSeYHGNe4yWbUPwHEjeuyGSoy0Lz3tw=
=AdQK
-----END PGP SIGNATURE-----

--LBKvMViCCl5mBJCfA6r4BdAc12AGE0wmx--
