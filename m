X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3028" "Wednesday" "20" "July" "2016" "15:53:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160720195331.65E75332026@smtpvbsrv1.mitre.org>" "61" "[oss-security] Re: libupnp write files via POST" nil nil nil "7" "2016072019:53:31" "[oss-security] Re: libupnp write files via POST" (number mark "U       cve-assign@m Jul 20   61/3028  " thread-indent "\"[oss-security] Re: libupnp write files via POST\"\n") "<20160718205351.658cc486@pc1>" ("<20160718205351.658cc486@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15416 invoked by uid 550); 20 Jul 2016 19:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15360 invoked from network); 20 Jul 2016 19:53:43 -0000
From: cve-assign@mitre.org
To: hanno@hboeck.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160718205351.658cc486@pc1>
Message-Id: <20160720195331.65E75332026@smtpvbsrv1.mitre.org>
Date: Wed, 20 Jul 2016 15:53:31 -0400 (EDT)
Subject: [oss-security] Re: libupnp write files via POST

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://twitter.com/mjg59/status/755062278513319936
> https://github.com/mjg59/pupnp-code/commit/be0a01bdb83395d9f3a5ea09c1308a4f1a972cbd

This can have a CVE ID: from our perspective the product is exposing
unnecessary functionality, end users typically would consider the
functionality unwanted and unsafe, the behavior violates the
expectations of users familiar with similar products, the behavior
isn't (as far as we know) required or suggested by any protocol or
specification, and the behavior is implemented in a confusing way.

Use CVE-2016-6255.

Another observation is that it is not necessary for a user to write a
libupnp-based application in order to encounter the vulnerability.
(One might conceivably argue that, if exploitation required a custom
application, the application author would be responsible for verifying
that the code met expectations as far as whether a web server should
exist and what types of read and write access should be allowed.)
Instead, anyone can build the unpatched code from GitHub, go to the
upnp/sample directory, and execute the tv_device script with no
arguments. This apparently starts the web server on port 49152 by
default. The web server accepts unauthenticated POST requests and
stores the data to the client-specified filename within the
upnp/sample/web directory. It also accepts unauthenticated GET
requests for those files.

Common user expectations, based on experience with any popular
general-purpose web server, are that defaulting to unauthenticated
POSTs with readable uploads should not happen unless specifically
called out in the documentation. This is the main reason for the CVE.
Also, if the POST behavior were important, the web server should at
least follow RFC 2616 section 9.5 and return a 201 status when it
creates a file in the upnp/sample/web directory. It currently returns
200, which makes it somewhat harder for a person auditing an
application to notice that the POSTs are actually successful.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXj9YtAAoJEHb/MwWLVhi2nu4QAIIcgm14o54j2URjIQ7GD1+k
1s1NQKsZJVGtTjiVtUgHoMmnkfRw1no2k4kHLF/FuJYzGj6mjzyH7czgAruFvNFs
SPuZtGH38LaQdjZ9DFXhdmTNR/i8eIyQozdXc8XPefxW327o5vlXMdh/LvrcBeCN
RZff98ZH1pizCBQXk8bWRgMEdSfXvI816eCeme2zoJ+69UKJVxs68mHbt0kJdnPc
vrawWBDSLxIIFLEY0Rj0qq6dQqmrirst5rYoLrGelZdEyZU4AKV6f2YzOgQCWze5
7HW6Cjpl69mXF86DcQ1+zaPITPga0iE3dQnVjvBp/x8Zm/gRd0lia3ewhZAp5NjQ
faE8YgVOEI/JCyPm/1xqV1Ol952ebb6fM6s5nkpug0Ejt5EZdFFbHggUKl6njUsm
5+CyQHfXNe4s6xmevW+QIX23Rmx0Ox/ZcXTJ2kKDrLuxVxWyXceo7hcSNz4PaP/T
BUSqJN2PessLWB8FRG0idF9+vQNrOMdsHxM6cG4VDWgOmN45RRnqvVLjaqOQbtL4
EH6TfvQynAvOobpiHmKT3E4yUlJU9nto1j5AyA6jgez7J2aO+x4dGmFziS3kkEJo
B2+T2aOlD8xI5lIfimy6wKNUUtCVLBhX666G3QCZ40JwzqVCyaInXuUSgTJNLk6s
xrXrtoajVVmMZ/mUOlLC
=Aj9J
-----END PGP SIGNATURE-----
