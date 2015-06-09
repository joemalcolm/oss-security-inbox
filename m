X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2262" "Tuesday" "9" "June" "2015" "13:38:16" "-0700" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55774EB8.20709@redhat.com>" "75" "[oss-security] [OSSA 2015-010] XSS in Horizon Heat stack creation (CVE-2015-3219)" nil nil nil "6" "2015060920:38:16" "[oss-security] [OSSA 2015-010] XSS in Horizon Heat stack creation (CVE-2015-3219)" (number mark "U       tdecacqu@red Jun  9   75/2262  " thread-indent "\"[oss-security] [OSSA 2015-010] XSS in Horizon Heat stack creation (CVE-2015-3219)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1380 invoked by uid 550); 9 Jun 2015 21:14:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1515 invoked from network); 9 Jun 2015 20:38:07 -0000
Message-ID: <55774EB8.20709@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="ejTlOATF8neNU4Qd5d7rI8ot9Cu51bnAW"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Tue, 09 Jun 2015 13:38:16 -0700
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-010] XSS in Horizon Heat stack creation (CVE-2015-3219)
To: oss-security@lists.openwall.com

--ejTlOATF8neNU4Qd5d7rI8ot9Cu51bnAW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-010: XSS in Horizon Heat stack creation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 09, 2015
:CVE: CVE-2015-3219


Affects
~~~~~~~
- Horizon: 2014.2 versions through 2014.2.3 and version 2015.1.0


Description
~~~~~~~~~~~
Nikita Konovalov from Mirantis reported a vulnerability in Horizon. By
tricking a Horizon user into using a malicious template in the
Orchestration/Stack section of Horizon, a remote attacker may trigger
a cross-site-scripting vulnerability during the stack creation. It may
result in potential assets theft like user access credentials. Only
setups exposing the orchestration dashboard in Horizon are affected.


Patches
~~~~~~~
- https://review.openstack.org/189821 (Juno)
- https://review.openstack.org/189822 (Kilo)
- https://review.openstack.org/189820 (Liberty)


Credits
~~~~~~~
- Nikita Konovalov from Mirantis (CVE-2015-3219)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1453074
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3219


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.1
  (kilo) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--ejTlOATF8neNU4Qd5d7rI8ot9Cu51bnAW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVd064AAoJECK5oFySXMXYsvMH+gORSnr5+tLxYmIo+ShetsVA
i6FZKkTPOmkdk45wDsQbzDKc4ZOrJCfm3ngWUTPQFUNbBuoFG/PGJMEFbcZ2iT7V
tuKpjfiiA2U8YIXZlPHH//TaJTJAP5kCZ704cTHFV4TwHSof48dhFoJzYvotmGaL
1AlB9vft5nMGi886P+vQUa3yhjvF52beh8W/afTO4l9lrlX6BEyUs0VPnNlTzsiH
32aOy5ZqTmeDLu3eNuDIVAeLtcxHbinBg99rAQWtggYaLQZ+E4svuMOrvm2Vpmlx
WU5EJQw0THL1G6Lk90eZqHGXIFKodcSr4CdW1163v+wJ5cX8p+axdSrR4F30qRU=
=iVwR
-----END PGP SIGNATURE-----

--ejTlOATF8neNU4Qd5d7rI8ot9Cu51bnAW--
