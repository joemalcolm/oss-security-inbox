X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2595" "Tuesday" "23" "June" "2015" "10:08:54" "-0700" "Tristan Cacqueray" "tdecacqu@redhat.com" "<558992A6.9050708@redhat.com>" "80" "[oss-security] [OSSA 2015-012] Neutron L2 agent DoS through incorrect allowed address pairs (CVE-2015-3221)" nil nil nil "6" "2015062317:08:54" "[oss-security] [OSSA 2015-012] Neutron L2 agent DoS through incorrect allowed address pairs (CVE-2015-3221)" (number mark "U       tdecacqu@red Jun 23   80/2595  " thread-indent "\"[oss-security] [OSSA 2015-012] Neutron L2 agent DoS through incorrect allowed address pairs (CVE-2015-3221)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15655 invoked by uid 550); 23 Jun 2015 17:08:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15637 invoked from network); 23 Jun 2015 17:08:42 -0000
Message-ID: <558992A6.9050708@redhat.com>
Date: Tue, 23 Jun 2015 10:08:54 -0700
From: Tristan Cacqueray <tdecacqu@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="WIFvi6N8d8wstXIlH45XAWJAikkPcvOnU"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] [OSSA 2015-012] Neutron L2 agent DoS through incorrect allowed address
 pairs (CVE-2015-3221)

--WIFvi6N8d8wstXIlH45XAWJAikkPcvOnU
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-012: Neutron L2 agent DoS through incorrect allowed address pairs
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 23, 2015
:CVE: CVE-2015-3221


Affects
~~~~~~~
- Neutron: 2014.2 versions through 2014.2.3 and 2015.1.0 version


Description
~~~~~~~~~~~
Darragh O'Reilly from HP reported a vulnerability in Neutron. By
adding an address pair which is rejected as invalid by the ipset tool,
an authenticated user may crash the Neutron L2 agent resulting in a
denial of service attack. Neutron setups using the IPTables firewall
driver are affected.


Patches
~~~~~~~
- https://review.openstack.org/194696 (Juno)
- https://review.openstack.org/194697 (Kilo)
- https://review.openstack.org/194695 (Liberty)


Credits
~~~~~~~
- Darragh O'Reilly from HP (CVE-2015-3221)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1461054
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3221


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.1 (kilo)
  releases.
- Zero prefixed address pairs are no longer accepted by the Juno API, users
  need to use 0.0.0.0/1 and 128.0.0.1/1 or ::/1 and 8000::/1 instead. The
  fix_zero_length_ip_prefix.py tool is provided to clean ports previously
  configured with a zero prefixed address pair

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--WIFvi6N8d8wstXIlH45XAWJAikkPcvOnU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJViZKmAAoJECK5oFySXMXYzYwIAKjFqq81EpR4WYSJkjeDfujL
MtYEqmyBSHXuSVpDXuFemP6bfCXmEjcP1F8TeHxVWlTKSk3+cErm7dAhard9doyF
Q4KmHYYx/k7/Jp9uC9TRy7Orp0FiEm+gmfOuSS7RfUf5fnCjmeOOLKk6GPTGqkBp
aS0HU8V/weHV3XtEkd8eSDvJH2hRuMoEPyp47XykSGV6Ubgw8VRcwWAobSwdzjUB
vOEfooZGaI8FeT9d/Xjj4xwklfoMPqm4yEkHFUJgu2oZUaeAJWYNnYT0LoNOKt+i
hwykcBWIneRbI7rbs+sACpBXKFQINPLAAnWbIt9heOz1fwMGTYbi3Cu6xJoIb/w=
=+xNr
-----END PGP SIGNATURE-----

--WIFvi6N8d8wstXIlH45XAWJAikkPcvOnU--
