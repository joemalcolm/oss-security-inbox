X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1886" "Tuesday" "12" "January" "2016" "10:07:25" "-0800" "Grant Murphy" "grant.murphy@hpe.com" "<20160112180725.GB91908@hpe.com>" "67" "[oss-security] [OSSA 2016-002] Xen connection password leak in logs via StorageError (CVE-2015-8749)" "^Date:" nil nil "1" "2016011218:07:25" "[oss-security] [OSSA 2016-002] Xen connection password leak in logs via StorageError (CVE-2015-8749)" (number mark "        grant.murphy Jan 12   67/1886  " thread-indent "\"[oss-security] [OSSA 2016-002] Xen connection password leak in logs via StorageError (CVE-2015-8749)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30063 invoked by uid 550); 12 Jan 2016 18:07:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30023 invoked from network); 12 Jan 2016 18:07:39 -0000
Message-ID: <20160112180725.GB91908@hpe.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lEGEL1/lMxI0MVQ2"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 12 Jan 2016 10:07:25 -0800
From: Grant Murphy <grant.murphy@hpe.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2016-002] Xen connection password leak in logs via
 StorageError (CVE-2015-8749)
To: oss-security@lists.openwall.com

--lEGEL1/lMxI0MVQ2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

====================================================================
OSSA-2016-002: Xen connection password leak in logs via StorageError
====================================================================

:Date: January 11, 2016
:CVE: CVE-2015-8749


Affects
~~~~~~~
- Nova: >=2014.2 <= 2015.1.2, == 12.0.0


Description
~~~~~~~~~~~
Matt Riedemann from IBM reported an information disclosure
vulnerability in Nova. If a StorageError occurs when attempting to
connect a volume using the Xen API, the connection parameters will be
logged. These parameters may include credentials that are not masked.
An attacker with read access to Nova logs could use these credentials
with the Xen API directly. Only Nova deployments using the Xen backend
are affected by this flaw.


Patches
~~~~~~~
- https://review.openstack.org/249239 (Kilo)
- https://review.openstack.org/247825 (Liberty)
- https://review.openstack.org/245987 (Mitaka)


Credits
~~~~~~~
- Matt Riedemann from IBM (CVE-2015-8749)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1516765
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-8749


Notes
~~~~~
- This fix will be included in future 2015.1.3 (kilo) and 12.0.1
  (liberty) releases.

--lEGEL1/lMxI0MVQ2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWlUDbAAoJEJ3kO55VGiJSUR0H/2wrEQJy9B7DbXQVb0qzoBja
QIxe9XG4c9bSIbIJv+SEViWiXZyEgIuDJ/5fjTa0eMC8QcW7im5eB2vYTyqXHSgo
vg3y5gcPOrJ9vCtGrQ7HdnemQzsOgf7DPEDv6CVKgBBYtuxDfmijJSIUw7wAOzLt
pd4V5Bw3wAOE2zeu7moEXeyjsNUQkEMOJaPSoacrFoRZ7AVykKI10+d6xG5ib2/b
YWlh6sRgdxGqzHrnfdjTmhjUiF6MrR53TQo/hIvXLgIdtIwZrove88yANtQGHX7q
UdJIHZqYQZLhhou3atsK+eRjaxqd9YA8g/6nZvE9e0RmENh67p2mcahC3oTJ7qE=
=p2T+
-----END PGP SIGNATURE-----

--lEGEL1/lMxI0MVQ2--
