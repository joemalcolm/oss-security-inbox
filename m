X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2620" "Friday" "18" "November" "2016" "14:01:05" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<8bccaa90-c192-4f98-673c-26816137e513@redhat.com>" "83" "[oss-security] [OSSA 2016-013] Network information disclosure through Heat template source URL (CVE-2016-9185)" nil nil nil "11" "2016111814:01:05" "[oss-security] [OSSA 2016-013] Network information disclosure through Heat template source URL (CVE-2016-9185)" (number mark "U       tdecacqu@red Nov 18   83/2620  " thread-indent "\"[oss-security] [OSSA 2016-013] Network information disclosure through Heat template source URL (CVE-2016-9185)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17666 invoked by uid 550); 18 Nov 2016 14:00:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17644 invoked from network); 18 Nov 2016 14:00:47 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <8bccaa90-c192-4f98-673c-26816137e513@redhat.com>
Date: Fri, 18 Nov 2016 14:01:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="P9ddAHw44QFImfMBohBKDCBQ2oMUuiO17"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 18 Nov 2016 14:00:34 +0000 (UTC)
Subject: [oss-security] [OSSA 2016-013] Network information disclosure through Heat template
 source URL (CVE-2016-9185)

--P9ddAHw44QFImfMBohBKDCBQ2oMUuiO17
Content-Type: multipart/mixed; boundary="eTE8ofcJXJ8JilIAisll02WpmrnSv9RHn"
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <8bccaa90-c192-4f98-673c-26816137e513@redhat.com>
Subject: [OSSA 2016-013] Network information disclosure through Heat template
 source URL (CVE-2016-9185)

--eTE8ofcJXJ8JilIAisll02WpmrnSv9RHn
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
OSSA-2016-013: Network information disclosure through Heat template
source URL
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

:Date: November 18, 2016
:CVE: CVE-2016-9185


Affects
~~~~~~~
- Heat: <=3D5.0.3, >=3D6.0.0 <=3D6.1.0 and =3D=3D7.0.0


Description
~~~~~~~~~~~
Tom Patzig from SAP reported a vulnerability in Heat. By launching a
new Heat stack with a local URL an authenticated user may conduct
network discovery revealing internal network configuration. All Heat
setup are affected.


Patches
~~~~~~~
- https://review.openstack.org/393149 (Liberty)
- https://review.openstack.org/393148 (Mitaka)
- https://review.openstack.org/393147 (Newton)
- https://review.openstack.org/393146 (Ocata)


Credits
~~~~~~~
- Tom Patzig from SAP (CVE-2015-9185)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1606500
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-9185

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--eTE8ofcJXJ8JilIAisll02WpmrnSv9RHn--

--P9ddAHw44QFImfMBohBKDCBQ2oMUuiO17
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYLwmhAAoJECK5oFySXMXYARAIAKtbQ8h9xCUKpOVm+HWLlBuh
CHzEzlGzRgtTLw+l5gj86RaLgDwhO2WC+bGq3SlDdxrRn0MG0nN786Lkft/Fsp3g
vpyBRH56npVt3ovgzS/NwkHgWF5abBa8r6ApyelZcGjgdi4q5wdEBvc40zzXZGaZ
50olOT99btesTJqr8d32rErnn2lnF5avP9zW0D5JrnoTCHnGTlv/FWDL9Mfaw7cw
LG7dYnuY2iOCXLDFV+t1UrYIY/5Bngs2RCoZd+7FsiUXbcBPSgazEnq3giZxP1zO
stfLpk3Qen/aBUnjgB1Ie2JaW9KfHZ5sHu4XVNfAsOe69hWFkJJ60pHJbXZufM4=
=8UOX
-----END PGP SIGNATURE-----

--P9ddAHw44QFImfMBohBKDCBQ2oMUuiO17--
