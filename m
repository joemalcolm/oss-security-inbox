X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Monday" "10" "August" "2015" "19:55:32" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150811025532.GB23539@hunt>" "50" "[oss-security] CVE Request: ippusbxd" nil nil nil "8" "2015081102:55:32" "[oss-security] CVE Request: ippusbxd" (number mark "        seth.arnold@ Aug 10   50/1962  " thread-indent "\"[oss-security] CVE Request: ippusbxd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7549 invoked by uid 550); 11 Aug 2015 02:55:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7523 invoked from network); 11 Aug 2015 02:55:47 -0000
Message-ID: <20150811025532.GB23539@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3uo+9/B/ebqu+fSQ"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: security@ubuntu.com
Date: Mon, 10 Aug 2015 19:55:32 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: ippusbxd
To: oss-security@lists.openwall.com

--3uo+9/B/ebqu+fSQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

Please assign a CVE for ippusbxd. I discovered a flaw that accidentally
allows access to a connected USB printer via all configured network
addresses, rather than only TCP loopback addresses, by misusing the
in6addr_any bind address.

The original bug report is at
https://bugs.launchpad.net/ubuntu/+source/ippusbxd/+bug/1455644
(though most of the contents aren't related).

The flaw can be found at
https://github.com/tillkamppeter/ippusbxd/blob/ea6005943e2669cbf492fa441d9dce02a4bc2471/src/tcp.c#L51

Comments in the source code and documentation indicate that access was
intended only for localhost:
https://github.com/tillkamppeter/ippusbxd/blob/ea6005943e2669cbf492fa441d9dce02a4bc2471/doc/ippusbxd.1#L17

Till Kamppeter has provided the following patches to address the issue:
https://github.com/tillkamppeter/ippusbxd/commit/46844402bca7a38fc224483ba6f0a93c4613203f
https://github.com/tillkamppeter/ippusbxd/commit/a632841f8e65d402e13e81921515f5a1e2736c82

The first patch switches to using two sockets and binds them explicitly
to the IPv6 and the IPv4 loopback addresses; the second patch simplifies
the use of select(). Both patches are recommended. A new upstream release
will be made soon to incorporate this fix.

Thanks

--3uo+9/B/ebqu+fSQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVyWQkAAoJEPMhclmdjS6XMBkH/3urJ+kLDGOqR1bQ2Y+LRYEm
iLewvwwSx/wgQ6EaqlrSZoyM2kNu6VIcV5HpJsntOcXLUtDYQuwFfJr5vxv0QeH0
2+wedfJmYRaW+9ImhvVf4/19fggTUcKMQy+pK2A2NafVS1oAES9SFsF5zahlk8K3
ySWkskBqboyQn9XikEkSsjqlxYS22wfwb23geCnRggYgC6tyyvkfQh9eAQw7ryiW
sT6j3GMn5HbLI4WBgr3JdKWWPvLzW5BZmin5RL7FqnyFVbhspprx16jdmFvQQcF/
GoeXNl094p458KjZrYQsoeVAfhiXHyAg9BALO7CBpGVxPykjuWINjz7qbi3NViM=
=tcER
-----END PGP SIGNATURE-----

--3uo+9/B/ebqu+fSQ--
