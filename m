X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2411" "Thursday" "6" "April" "2017" "01:50:17" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<03aa7ab9-e00e-f9dc-406d-e017f031f73d@redhat.com>" "79" "[oss-security] [OSSA-2017-003] XSS in Horizon federation mappings UI (CVE-2017-7400)" nil nil nil "4" "2017040601:50:17" "[oss-security] [OSSA-2017-003] XSS in Horizon federation mappings UI (CVE-2017-7400)" (number mark "U       tdecacqu@red Apr  6   79/2411  " thread-indent "\"[oss-security] [OSSA-2017-003] XSS in Horizon federation mappings UI (CVE-2017-7400)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32706 invoked by uid 550); 6 Apr 2017 01:50:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32685 invoked from network); 6 Apr 2017 01:50:06 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 16B6D4E359
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=tdecacqu@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 16B6D4E359
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <03aa7ab9-e00e-f9dc-406d-e017f031f73d@redhat.com>
Date: Thu, 6 Apr 2017 01:50:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mC5sCBQotvwIh2NEpcM64ISbER2903nkh"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 06 Apr 2017 01:49:55 +0000 (UTC)
Subject: [oss-security] [OSSA-2017-003] XSS in Horizon federation mappings UI (CVE-2017-7400)

--mC5sCBQotvwIh2NEpcM64ISbER2903nkh
Content-Type: multipart/mixed; boundary="m5CiWpcdQv9d7OGVTKHmUMSDtHfSJis1U";
 protected-headers="v1"
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <03aa7ab9-e00e-f9dc-406d-e017f031f73d@redhat.com>
Subject: [OSSA-2017-003] XSS in Horizon federation mappings UI (CVE-2017-7400)

--m5CiWpcdQv9d7OGVTKHmUMSDtHfSJis1U
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
OSSA-2017-003: XSS in Horizon federation mappings UI
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

:Date: April 04, 2017
:CVE: CVE-2017-7400


Affects
~~~~~~~
- Horizon: >=3D9.0.0 <=3D9.1.1, >=3D10.0.0 <=3D10.0.2, =3D=3D11.0.0


Description
~~~~~~~~~~~
Eric Brown from VMware reported a vulnerability in Horizon. By
creating a malicious federation mapping, an adminstrator may conduct a
persistent XSS attack. All Horizon setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/442455 (Mitaka)
- https://review.openstack.org/442454 (Newton)
- https://review.openstack.org/442453 (Ocata)
- https://review.openstack.org/442277 (Pike)


Credits
~~~~~~~
- Eric Brown from VMware (CVE-2017-7400)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1667086
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-7400

--=20
Tristan Cacqueray
OpenStack Vulnerability Management Team


--m5CiWpcdQv9d7OGVTKHmUMSDtHfSJis1U--

--mC5sCBQotvwIh2NEpcM64ISbER2903nkh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJY5Z7aAAoJECK5oFySXMXYGdoH/RmYI8UiiOv+CbTbMMLvKlB2
8jUiYokA0YxJyTurGMH2jwAZAQo/bQIUlQWLo1QR1cZmvXbEZbiwfGzmKdejTANq
ubGPXAZR8lNCFeNTfmjPlB5tMzclCisT/CEUdgrCPTD8EpBQKr1EdnFkIuNiXZ2H
ewzWejGKoXOTRLB5Novozsvj4xy7v/spcbFvUorsrBeHp76bia+SrRDmGpbrsxtD
fsTtLlFAOmVG9UKYYidYACn5an7FPQO7vZvGvErI8bcsPykboEh5Hja7k1WPa4rx
+S72W8MC4MPftJhorJ9pvkYZeHxmDegEF+iZE2h8zkPnVSvVvHMOw2aoJ/CIXMs=
=FdZw
-----END PGP SIGNATURE-----

--mC5sCBQotvwIh2NEpcM64ISbER2903nkh--
