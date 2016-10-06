X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3340" "Thursday" "6" "October" "2016" "19:43:01" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20161006194301.GE24597@yuggoth.org>" "97" "[oss-security] [OSSA 2016-012] Malicious qemu-img input may exhaust resources in Cinder, Glance, Nova (CVE-2015-5162)" nil nil nil "10" "2016100619:43:01" "[oss-security] [OSSA 2016-012] Malicious qemu-img input may exhaust resources in Cinder, Glance, Nova (CVE-2015-5162)" (number mark "U       fungi@yuggot Oct  6   97/3340  " thread-indent "\"[oss-security] [OSSA 2016-012] Malicious qemu-img input may exhaust resources in Cinder, Glance, Nova (CVE-2015-5162)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24524 invoked by uid 550); 6 Oct 2016 19:43:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24495 invoked from network); 6 Oct 2016 19:43:16 -0000
Date: Thu, 6 Oct 2016 19:43:01 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20161006194301.GE24597@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A6Z7MKnLVMfR85kG"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA 2016-012] Malicious qemu-img input may exhaust resources in
 Cinder, Glance, Nova (CVE-2015-5162)

--A6Z7MKnLVMfR85kG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-012: Malicious qemu-img input may exhaust resources in
Cinder, Glance, Nova
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: October 06, 2016
:CVE: CVE-2015-5162


Affects
~~~~~~~
- Cinder: <=3D7.0.2, >=3D8.0.0 <=3D8.1.1
- Glance: <=3D11.0.1, =3D=3D12.0.0
- Nova: <=3D12.0.4, =3D=3D13.0.0


Description
~~~~~~~~~~~
Richard W.M. Jones of Red Hat reported a vulnerability that affects
OpenStack Cinder, Glance and Nova. By providing a maliciously
crafted disk image an attacker can consume considerable amounts of
RAM and CPU time resulting in a denial of service via resource
exhaustion. Any project which makes calls to qemu-img without
appropriate ulimit restrictions in place is affected by this flaw.


Patches
~~~~~~~
- https://review.openstack.org/382573 (cinder) (Liberty)
- https://review.openstack.org/378012 (glance) (Liberty)
- https://review.openstack.org/327624 (nova) (Liberty)
- https://review.openstack.org/375625 (cinder) (Mitaka)
- https://review.openstack.org/377736 (glance) (Mitaka)
- https://review.openstack.org/326327 (nova) (Mitaka)
- https://review.openstack.org/375102 (cinder) (Newton)
- https://review.openstack.org/377734 (glance) (Newton)
- https://review.openstack.org/307663 (nova) (Newton)
- https://review.openstack.org/375099 (cinder) (Ocata)
- https://review.openstack.org/375526 (glance) (Ocata)


Credits
~~~~~~~
- Richard W.M. Jones from Red Hat (CVE-2015-5162)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1449062
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5162


Notes
~~~~~
- Separate Ocata patches are listed for Cinder and Glance, as they
  were fixed during the Newton release freeze after it branched from
  master.


--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--A6Z7MKnLVMfR85kG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJX9qlFXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpukkQAJLnaMlTJoC/0SfP8Ibh2nFW
hmN+Vi8HYCF4qik9U422YRFHZw8QgF3Ve+7qbc+xtWAiDeOArb9BWWVcHV3UQzM2
sq8TLjSmaQF6LRpkAlFxQNtY/pMd2e+l/lmj7rcELiGNxjA+9oYE9SuycNVUmoZ+
HPh7vfK1IbNBYI7Vv+k+K6/xrZDsS5CWhtBGHVHFnes4o4Q7kOtE2U8pFEQwwUWA
JhzoMtgBEzeUrRXLvKoU2w40cNnpc5OLijYRPTcH/foc8FBc6FItKwO70FEl9WyJ
ukMk/Dm2CAOUoBvRx69ec4qZREBozw7mub7DPhRAQdqD0OiePYjBiW2Z/nBM76uf
dJ1krJR0hnXKm5JJhtygn0PrLyjRMfePXW61Qzy04SX8hCufkvM+EoAhBGvRo8VQ
8//vIgFE1n8BX9V2Tpbnq4E389cDVlSTdZdHeLoDEAfN5J8mln7l55aVeh/tImVJ
PljWo8kXuH+41Gj8zCCH05QUTU1iSNF8FEQb9m3peVqVUFdC5LC/wNfal5RZxOI0
bRQ8icHvsduedxwy0+QpBrVpPLULpbSTF31E/MHSxBOSy8Vy+49pXNdsTu6Ooeon
N+yiaXJzy2BA0bcmlyB7XcjX/GHiSF9OMlnYMnhgeyWzan49xY0o7n6A6ycZetCC
1ctmDldUH7qxNrbbViYn
=9ur+
-----END PGP SIGNATURE-----

--A6Z7MKnLVMfR85kG--
