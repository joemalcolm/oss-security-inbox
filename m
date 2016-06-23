X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2226" "Thursday" "23" "June" "2016" "08:59:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160623125926.22C04B2E154@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" nil nil nil "6" "2016062312:59:26" "[oss-security] Re: CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" (number mark "U       cve-assign@m Jun 23   49/2226  " thread-indent "\"[oss-security] Re: CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client\"\n") "<20160623121432.GH26237@suse.de>" ("<20160623121432.GH26237@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17480 invoked by uid 550); 23 Jun 2016 12:59:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17459 invoked from network); 23 Jun 2016 12:59:37 -0000
From: cve-assign@mitre.org
To: meissner@suse.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160623121432.GH26237@suse.de>
Message-Id: <20160623125926.22C04B2E154@smtpvbsrv1.mitre.org>
Date: Thu, 23 Jun 2016 08:59:26 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://sourceware.org/bugzilla/show_bug.cgi?id=20018

When we looked at this last week, we concluded that it was intentional
glibc behavior and therefore a glibc CVE ID should not exist.

https://bugzilla.redhat.com/show_bug.cgi?id=1303699 Comment 4 is a
private comment, but there is apparently a copy of it in the public
https://bugzilla.redhat.com/show_bug.cgi?id=1347549 Comment 3:

   This flexible behaviour is allowed because it makes parsing
   space-separated lists of addresses (as C strings) easier to manage.
   You advance the pointer between the address blocks and call
   inet_aton. In this case getaddrinfo uses inet_aton to determine the
   validity of the input string, and so considers "127.0.0.1\r\nspam"
   a valid name parameter and it is immediately converted into the
   address structure for 127.0.0.1.

The remaining concern is that there's a potentially important
enhancement to glibc in which functionality would be added that is
similar to the current inet_addr/inet_aton behavior but with
"127.0.0.1\r\nspam" rejected as an invalid address. The current
behavior possibly belongs on a list of glibc oddities but, we think,
not on the CVE list.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXa9zNAAoJEHb/MwWLVhi2GWgP/ih9d8dC9pwcQfZ7pSBMkJdI
r91yFb1D4VcJsxT7cVAnQjAXW8hgz9i27Olm3E3djuoBob68DBKE+0UKSQVy1j7P
mbVT+sGgXFnYE1cv3HWXSIWowc4+AQVwQfqOJaXwS5wP8+CPx6CCvfOP3SYSrki0
Eo4MVK/3Ea3FlNwGcXjB9QgNSPm+hHFzK86Ln4JaKNhoD9iQk3skK1q5IclLqm43
nw1Tg9/778awoWcdvOy6s1I3zz6oUKOc9UnSEzDF8DZDQNBl2+f+IsAiPulggxcG
dIIcJwGjaqOUNhRtTc9ZlnmfeEDaOKmFzDvY6sAz3CRU9bIHOrx+DBwbQuNpZ5O3
xU49+NZr1eiS3s16e02QCdh6j9WVZynpXrfNkRoWRaRvb8P3xUOSkqfNVAYIwg1Y
VaJ090zphhc3K7L8rnmnm0LwJkPlg0yUgv5baQ2RYZ/VneZY7p0HogknBNwxLyUR
NiJAwyYJAOu/WJNreBdOFRh2pqwATxmFyfaqOPv+Lk/9zDGqH1rVHVQyxvWJoz0k
6DpzYI7QVzFPVkKl+EItJiE3wsZNPl6q6+E8i/4cAnfj6XK9CrFVHBP4v3RURm7l
1+2bk/9QZpldSFypHEzSC3QfNr3GDoTJZOSEAZfomiA7ovcj2yC7+3c17nuUmqvj
axI4BNa4v14fnvU6J7S5
=2hPX
-----END PGP SIGNATURE-----
