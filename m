X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1671" "Tuesday" "28" "July" "2015" "08:27:23" "-0700" "Grant Murphy" "grant.murphy@hp.com" "<20150728152723.GB35506@hp.com>" "63" "[oss-security] [OSSA 2015-013] Glance task flow may fail to delete image from backend (CVE-2015-3289)" nil nil nil "7" "2015072815:27:23" "[oss-security] [OSSA 2015-013] Glance task flow may fail to delete image from backend (CVE-2015-3289)" (number mark "U       grant.murphy Jul 28   63/1671  " thread-indent "\"[oss-security] [OSSA 2015-013] Glance task flow may fail to delete image from backend (CVE-2015-3289)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11725 invoked by uid 550); 28 Jul 2015 15:27:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11643 invoked from network); 28 Jul 2015 15:27:37 -0000
Date: Tue, 28 Jul 2015 08:27:23 -0700
From: Grant Murphy <grant.murphy@hp.com>
To: oss-security@lists.openwall.com
Message-ID: <20150728152723.GB35506@hp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gatW/ieO32f1wygP"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [OSSA 2015-013] Glance task flow may fail to delete image from
 backend (CVE-2015-3289)

--gatW/ieO32f1wygP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

=====================================================================
OSSA-2015-013: Glance task flow may fail to delete image from backend
=====================================================================

:Date: July 28, 2015
:CVE: CVE-2015-3289


Affects
~~~~~~~
- Glance: versions 2015.1.0


Description
~~~~~~~~~~~
Abhishek Kekane from NTT reported a vulnerability in Glance. By
creating numerous images using the import task flow API and deleting
them, an authenticated attacker may accumulate untracked image data in
the backend resulting in potential resource exhaustion and denial of
service. All glance setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/#/c/181816/ (Kilo)
- https://review.openstack.org/#/c/181345/ (Liberty)


Credits
~~~~~~~
- Abhishek Kekane from NTT (CVE-2015-3289)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1454087
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-3289


Notes
~~~~~
- This fix will be included in the future 2015.1.1 (kilo) release.

--gatW/ieO32f1wygP
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVt59ZAAoJEJ3kO55VGiJS5SwH/0Y6lpVCkq8EOeD/T+NFbkHT
lGx/RtAy3fsnVv/zeVReZBQk282Fa+vK+Xm1LlcmzKjDlyzqXH66TOccBslaabOP
Chd68+poTGtVIxwi2jwnO5MuI0Su7OjLmIBCKnJlMmKY7Rdl+/BPIy5C+/233Cz2
/eawZvVogN9AUFKrbA5WeSLg/V84DDtkcEpb4fXlsa8xWlsIzDJ+iRml/aZmyzEC
/4E+qCy8NUx5TH8G+7XQcwXVufGT+qnDVXYuTZVuTNb3BY35t+ro2yK5RxyUhl5B
HJGAGTe3+to3ZbGN0NBc0gUWKGKXvLm/FPV5ZlNfUm7v1WbwXoAdwJzCuhpR6es=
=t9gT
-----END PGP SIGNATURE-----

--gatW/ieO32f1wygP--
