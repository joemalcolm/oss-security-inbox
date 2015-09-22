X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1892" "Tuesday" "22" "September" "2015" "12:19:04" "-0700" "Grant Murphy" "grant.murphy@hpe.com" "<20150922191904.GA63354@hpe.com>" "69" "[oss-security] [OSSA-2015-019] Glance image status manipulation (CVE-2015-5251)" nil nil nil "9" "2015092219:19:04" "[oss-security] [OSSA-2015-019] Glance image status manipulation (CVE-2015-5251)" (number mark "        grant.murphy Sep 22   69/1892  " thread-indent "\"[oss-security] [OSSA-2015-019] Glance image status manipulation (CVE-2015-5251)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5163 invoked by uid 550); 22 Sep 2015 19:22:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32565 invoked from network); 22 Sep 2015 19:19:18 -0000
Message-ID: <20150922191904.GA63354@hpe.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 22 Sep 2015 12:19:04 -0700
From: Grant Murphy <grant.murphy@hpe.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA-2015-019] Glance image status manipulation (CVE-2015-5251)
To: oss-security@lists.openwall.com

--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

===============================================
OSSA-2015-019: Glance image status manipulation
===============================================

:Date: September 22, 2015
:CVE: CVE-2015-5251


Affects
~~~~~~~
- Glance: <=2014.2.3, >=2015.1.0, <=2015.1.1


Description
~~~~~~~~~~~
Hemanth Makkapati of Rackspace reported a vulnerability in Glance. By
submitting a HTTP PUT request with a "x-image-meta-status" header, a
tenant can manipulate the status of their images. A malicious tenant
may exploit this flaw to reactivate disabled images, bypass storage
quotas and in some cases replace image contents. Setups using the
Glance v1 API allow the illegal modification of image status. Setups
which also use the v2 API may allow a subsequent re-upload of image
contents.


Patches
~~~~~~~
- https://review.openstack.org/226338 (Juno)
- https://review.openstack.org/226337 (Kilo)
- https://review.openstack.org/226336 (Liberty)


Credits
~~~~~~~
- Hemanth Makkapati from Rackspace (CVE-2015-5251)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1482371
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-5251


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.2 (kilo)
  releases.


--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWAamlAAoJEJ3kO55VGiJSCMMH/R8fxuBxDYLXnFc3QOef675G
8OuE1x8nT2NVrtAXMu8Rlvp6p/hyI3Vcp+U4fHEHzcP9LK8DDBarSZEKByboEoo6
whRqhB3nnke07bR9D4lFyxzFSyD3je3GQrrXWBLpJVputmHkvnAjStlSFfXhOn8J
vj57P+9AC+rEL4w4rfyb/E5010K4QLaQIFu/cbX3mRBCAYrN8ER54kvHdDlZiUOu
5rbPfpgR0yqqHx1kKR7VnLy7K1KXVFfyDsTOQUCCifQDDraiB1jaNlhY5TCNpCNB
j9ARYnT+DMKD+hm1Z+HOfFCITqr5XJbuoYz2hixosJYzdvtEZDT8D0exIVdKox0=
=iC2Z
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--
