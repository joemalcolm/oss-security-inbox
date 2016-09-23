X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2730" "Friday" "23" "September" "2016" "01:08:17" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<cb66c7f5-a882-5553-8657-a0bafdf14b2a@redhat.com>" "86" "[oss-security] [OSSA 2016-011] Nova may fail to delete images in resize state regression (CVE-2016-7498)" nil nil nil "9" "2016092301:08:17" "[oss-security] [OSSA 2016-011] Nova may fail to delete images in resize state regression (CVE-2016-7498)" (number mark "U       tdecacqu@red Sep 23   86/2730  " thread-indent "\"[oss-security] [OSSA 2016-011] Nova may fail to delete images in resize state regression (CVE-2016-7498)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2025 invoked by uid 550); 23 Sep 2016 01:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2007 invoked from network); 23 Sep 2016 01:08:07 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <cb66c7f5-a882-5553-8657-a0bafdf14b2a@redhat.com>
Date: Fri, 23 Sep 2016 01:08:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6N2pN2f5uMJScRo8aeNop7jIp2NhvnfSE"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 23 Sep 2016 01:07:55 +0000 (UTC)
Subject: [oss-security] [OSSA 2016-011] Nova may fail to delete images in resize state
 regression (CVE-2016-7498)

--6N2pN2f5uMJScRo8aeNop7jIp2NhvnfSE
Content-Type: multipart/mixed; boundary="Tw5RpG0nveQbAJS40qbBWpMjSSW8uLfWj"
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <cb66c7f5-a882-5553-8657-a0bafdf14b2a@redhat.com>
Subject: [OSSA 2016-011] Nova may fail to delete images in resize state
 regression (CVE-2016-7498)

--Tw5RpG0nveQbAJS40qbBWpMjSSW8uLfWj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-011: Nova may fail to delete images in resize state regression
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: September 21, 2016
:CVE: CVE-2016-7498


Affects
~~~~~~~
- Nova: =3D=3D13.0.0


Description
~~~~~~~~~~~
Rajesh Tailor from Red Hat reported a vulnerability in Nova. If an
authenticated user deletes an instance while it is in resize state, it
will cause the original instance to not be deleted from the compute
node it was running on. An attacker can use this to launch a denial of
service attack. All Nova setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/327398 (Mitaka)
- https://review.openstack.org/326262 (Newton)


Credits
~~~~~~~
- Rajesh Tailor from Red Hat (CVE-2016-7498)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1589821
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-7498


Notes
~~~~~
- This bug is similar to OSSA-2015-017 (CVE-2015-3280) and was
  re-introduced in the first release of Mitaka version of Nova and it
  was re-fixed in nova-13.1.0.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--Tw5RpG0nveQbAJS40qbBWpMjSSW8uLfWj--

--6N2pN2f5uMJScRo8aeNop7jIp2NhvnfSE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX5ICBAAoJECK5oFySXMXYLEgH/RO5sF0Tune3oL7unAYW+pTc
ZDHIPcsLWiBiS8fxeZngl9dPY9xcMGNMdK3G7wnVfOpm/eTUvwlm9FgLBRTs6FX4
vag2KmxJCyWOavX5zh7h9tYryTugRWNAPFyjknlJ7gbE71i4s46bTlvZAL0w+gQ5
pEM/AUpKC2wLlpkydDV6VbnmxXZBUG5awI9qJ/BtGuuhzF9bVtb4I6ZxeNbuG4Bs
FrSQrg8IX2fCGYxUTGhdR8oZlf3nnHfi1tLYwxxdOrQC63HBGljsPpjqOpAZtb6/
fZag0ypXaqVwIlvD8lSRyIAOMX8I6U4mCbfKHJazOYZhB9EN1wTm6gB8f3gn9JI=
=sb9a
-----END PGP SIGNATURE-----

--6N2pN2f5uMJScRo8aeNop7jIp2NhvnfSE--
