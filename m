X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2126" "Wednesday" "25" "July" "2018" "13:00:39" "-0500" "Matthew Thode" "prometheanfire@gentoo.org" "<20180725180039.figvv6qq4ivqdnj5@gentoo.org>" "66" "[oss-security] [OSSA-2018-002] GET /v3/OS-FEDERATION/projects leaks project information (CVE-2018-14432)" nil nil nil "7" "2018072518:00:39" "[oss-security] [OSSA-2018-002] GET /v3/OS-FEDERATION/projects leaks project information (CVE-2018-14432)" (number mark "U       prometheanfi Jul 25   66/2126  " thread-indent "\"[oss-security] [OSSA-2018-002] GET /v3/OS-FEDERATION/projects leaks project information (CVE-2018-14432)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18290 invoked by uid 550); 25 Jul 2018 18:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17419 invoked from network); 25 Jul 2018 18:00:54 -0000
Date: Wed, 25 Jul 2018 13:00:39 -0500
From: Matthew Thode <prometheanfire@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <20180725180039.figvv6qq4ivqdnj5@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7jlbrqqo55psrimk"
Content-Disposition: inline
User-Agent: NeoMutt/20180622
Subject: [oss-security] [OSSA-2018-002] GET /v3/OS-FEDERATION/projects leaks project
 information (CVE-2018-14432)

--7jlbrqqo55psrimk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

=======================================================================
OSSA-2018-002: GET /v3/OS-FEDERATION/projects leaks project information
=======================================================================

:Date: July 25, 2018
:CVE: CVE-2018-14432


Affects
~~~~~~~
- Keystone: <11.0.4, ==12.0.0, ==13.0.0


Description
~~~~~~~~~~~
Kristi Nikolla with Boston University reported a vulnerability in
Keystone federation. By doing GET /v3/OS-FEDERATION/projects an
authenticated user may discover projects they have no authority to
access, leaking all projects in the deployment and their attributes.
Only Keystone with the /v3/OS-FEDERATION endpoint enabled via
policy.json is affected.


Patches
~~~~~~~
- https://review.openstack.org/585802 (Ocata)
- https://review.openstack.org/585792 (Pike)
- https://review.openstack.org/585788 (Queens)
- https://review.openstack.org/585782 (Rocky)


Credits
~~~~~~~
- Kristi Nikolla from Boston University (CVE-2018-14432)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1779205
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-14432

--7jlbrqqo55psrimk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEExFR3cOKGRpGbcMHPZKN76q4ZpOgFAltYusYACgkQZKN76q4Z
pOjxGxAA0jvnCJOZjIwBZyolLi0Xbkv5X0Y4ggC2XDFISHa2BGIkOhYoGnW/CyF3
LyBQLvS/YdrxhBE3mmciCLbWzvBzGQcnM624MX7PhLGTSaGLpNryUSSWWzpVUTT6
pF+HeuTaUzzf6mpkml6F5Sx1tE1D1o5WLd7M8RNP3FNl8M/lQCagN0BxsegmN89Q
oz2sQZenMfwT4PWMZEPROCbJM35ll20xIahLtCrWMBDlQx6DSs5yqL7nScLVGM1J
JbwxiwkwZjnQwQ/OSfZsH69pLqBTg7ssOajAjFdKZTO1QqYlddkS9+HnW0p/x0Gt
cxKAqMqKW+mipuaE3sr8eb+ja1Qti+TVHRJyXcVI+lL68eDR8UOgUCSvvkWS+a6/
HAn2QdynhigarCMxQtCho7WLY90uU+9ur/GP1Y8RF4ntodRGSUUTndbkuROa0Ejo
yt4faq6GzKzLUeQT9khsUHC3K4ZkzZqjlNAlRd0hK+qkhm5Biu/j/qjldb5PzylQ
w6N7s6LXsrcaSouVmaGrqaqbLqcuTrqgVOyx2btpFtjHI+4lK2FoveCMWJshp/E7
A2q5h+WD8EVSQWDFX64R7HjkrEP6T/KlAasCPIgR1B+3VJvwKIyoV6MTS4GPqpN4
9KV/QIoEB+LYaX+yTI+1W/caYOD6SFFZh+S6YZVYQBNWqR3Ec5s=
=WfUS
-----END PGP SIGNATURE-----

--7jlbrqqo55psrimk--
