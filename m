X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1667" "Friday" "15" "April" "2016" "15:56:45" "-0400" "Randy Barlow" "rbarlow@redhat.com" "<1850328.TsBv7S8R4o@ohm.usersys.redhat.com>" "42" "[oss-security] CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users" nil nil nil "4" "2016041519:56:45" "[oss-security] CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users" (number mark "U       rbarlow@redh Apr 15   42/1667  " thread-indent "\"[oss-security] CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13934 invoked by uid 550); 15 Apr 2016 19:57:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13907 invoked from network); 15 Apr 2016 19:57:04 -0000
From: Randy Barlow <rbarlow@redhat.com>
To: OSS Security <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Date: Fri, 15 Apr 2016 15:56:45 -0400
Message-ID: <1850328.TsBv7S8R4o@ohm.usersys.redhat.com>
User-Agent: KMail/5.1.3 (Linux/4.5.0-302.fc24.x86_64; KDE/5.21.0; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1937929.ozCV6FegGN"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 15 Apr 2016 19:56:52 +0000 (UTC)
Subject: [oss-security] CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users

--nextPart1937929.ozCV6FegGN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello!

It was raised to my attention that a security issues that was resolved in 
Pulp 3 years ago should have had a CVE assigned to it:

https://bugzilla.redhat.com/show_bug.cgi?id=1003326

To summarize, all Pulp users used the same internal CA key and cert for 
versions of Pulp < 2.3.0. This CA is used to generate a client certificate 
during the /login API call, and is trusted by httpd to authenticate users.

Though the issue is now long resolved, we would like a CVE number 
assigned to it for reference. Thanks!
--nextPart1937929.ozCV6FegGN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXEUd9AAoJEIyFaKUJtmpikGwP/1b9d8v6lIrYaqimuPdEjPdp
s95c3ogo8UpcfbQIqmEqtJgFbIkMxyHEBQgCrpERn9apPLIHFAjODWBI7hErq4mS
zpyJ7Xi6P33x7qRVNLWsCzP9Cv88tE2PDaYibco0hhu94Ga40yQzC6FCImIW3HJg
fG6/uN/OrAGzeq5GH1bb8FtbF/17bnVt1A2gXCH0pDrYT6nPwxz2/m6myLeOlDac
Ej+peFevrwzD0RbieNoD2TFA3vKbPXvPbqyuRENd9gJDGvQlWJOpUWgun7QESfMn
tQyHUW75cA2JxAwntSVrIwCllVk+bcDNj6TRDVwpa0rQ5BBvP2TycZVsGMByml83
x2WUgb8P4n6zCbMtmR87IBrGdM2Hxfu2Ht1wXdfJw+TUd2eCqSXE6WSkX2Oxg4YR
+0mUNEWM8yNqwzRpbVRpdzYMvqC5W9NjmeUg6bdbUV90IvhgFO6EbXqoHdXmZYUW
FHodS2zH5cWa3LKnM+VK1sA2yGGvO5Du+IsCZsGXCd6QkxG3lnq17cWvMkSxX2oO
iZwqysVs9CnwRoZiFwr3YoDyVj8nsUTFOvmAt//5ATeJOVZ8YAihkgMlEOtcIqF4
aVABw4t+X8tU9SAGzZ3pxXYm2wJkFUp+Ci5KcsfOXeLjhxQCj7VbINZPheZ5hl95
u4MI0tptqMPNkQ+Avjsm
=/ORI
-----END PGP SIGNATURE-----

--nextPart1937929.ozCV6FegGN--

