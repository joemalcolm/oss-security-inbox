X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2916" "Thursday" "24" "September" "2015" "17:00:49" "-0400" "Randy Barlow" "rbarlow@redhat.com" "<20150924210049.GG17080@mail.corp.redhat.com>" "70" "[oss-security] Pulp 2.6.4 released for CVE-2015-5263" nil nil nil "9" "2015092421:00:49" "[oss-security] Pulp 2.6.4 released for CVE-2015-5263" (number mark "        rbarlow@redh Sep 24   70/2916  " thread-indent "\"[oss-security] Pulp 2.6.4 released for CVE-2015-5263\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15779 invoked by uid 550); 24 Sep 2015 21:06:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11884 invoked from network); 24 Sep 2015 21:01:03 -0000
Message-ID: <20150924210049.GG17080@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IuhbYIxU28t+Kd57"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Thu, 24 Sep 2015 17:00:49 -0400
From: Randy Barlow <rbarlow@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Pulp 2.6.4 released for CVE-2015-5263
To: OSS Security <oss-security@lists.openwall.com>

--IuhbYIxU28t+Kd57
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Summary
=======
The Pulp[0] team has published Pulp 2.6.4 which contains a fix for
an important security vulnerability (CVE-2015-5263). Users who use the
pulp-consumer CLI to register consumers to the Pulp server should
upgrade to pulp-consumer-client>=2.6.4. All versions of
pulp-consumer-client from 2.4.0 to 2.6.3 inclusive are vulnerable and
should be upgraded.

Details
=======

A security flaw (CVE-2015-5263) was discovered in Pulp's consumer
management system. When the pulp-consumer CLI is used to register to the
Pulp server, it downloads a public key from the Pulp server and stores
it locally. Later when the Pulp server sends messages to the client via
a message broker to instruct it to perform commands, it will use the
corresponding private key to sign the messages. The client checks the
signatures before executing the instructions to ensure that the messages
came from the Pulp server and not from an attacker.

Versions of pulp-consumer-client between 2.4.0 and 2.6.3 do not check
the server's TLS certificate signatures when retrieving the server's
public key upon registration:

https://github.com/pulp/pulp/blob/aa432bf58497b5e3682333b1d5f5ae4f45788a61/client_consumer/pulp/client/consumer/cli.py#L103

This allows a man in the middle to inject their own message signing
key and to then perform administrative actions on the machine, if they
are able to send messages through the message broker.

Austin Macdonald fixed this issue in this commit by using our
pulp.bindings library as the rest of our CLI does:

https://github.com/pulp/pulp/commit/b542d7465f7e6e02e1ea1aec059ac607a65cefe7#diff-17110211f89c042a9267e2167dedd754

Users who do not use pulp-consumer are not affected by this issue.

Thanks to Austin Macdonald for writing the fix, to Dennis Kliban for making
our beta and release builds, and to Preethi Thomas for testing our
releases!

[0] http://www.pulpproject.org/

--IuhbYIxU28t+Kd57
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWBGSBAAoJEIyFaKUJtmpiaR4QAJiF/wCZQ7QI7PC6lb73+yRO
b7Z5J3TYfntNGnmR/kVZd4IWXOfDzMnb50vZomio1XNOaEqgNGaSFRbLCOp4qipN
upce9+KJYcFcdiN8qzTrTM7OcBsY/NsepYVbuEdeOGForF9sAIKOP1QISto55sqa
3HFTdt6pyGkGOboIgxPsPuhgG4PMP1VoSPqTV9O7Itwu6jdt03xOTNnkbIis80F6
1oRaEj+5dSNJKiUMNcq9JyXflAzpJ81ny3278HTTkE1Nw6gPWbPGcTc3STTLhCx7
T7zfLXgIr+tYhB+7ZqR6p8wZ3ibYS/0WamVRGOeCgaUCiDu9eB4k3Ui1prB3uO+e
Cn/GKu6Kmk2uEcEmjI8+NmZID/BtFZ0z1+ya8aK0REiyBARRG9Rp+XWW+b4fvtaK
r9/ElJ/Rgo6lXBHaltqtPOYc2NWE7j5BdqcCmei4EJKgeVLbyxdTthYbe0YdQOk7
PqLtR8mQi8/hio8N5/JdLrrQwwBcGtWXDgH/Gn0TdFnQBnRkeQ7oZK5+KTAwaeOG
Mang3rBw/GscuyqmuwMyyWU/T/giwwxHPjJrGaWR3wsr6wyrMhdBZIu62d0xcxK9
Rm91pH+eyX9/H0JLKB54y1P1EA6cDGtXujMXwb2MXB3XxJ0HF17FbCxuEaeLTatn
Nuq/UdbEzYiCDzGLmJrk
=W569
-----END PGP SIGNATURE-----

--IuhbYIxU28t+Kd57--
