X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1550" "Thursday" "18" "June" "2015" "08:17:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150618121721.7DCB47BC098@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: various issues in PHP" nil nil nil "6" "2015061812:17:21" "[oss-security] Re: CVE Request: various issues in PHP" (number mark "        cve-assign@m Jun 18   37/1550  " thread-indent "\"[oss-security] Re: CVE Request: various issues in PHP\"\n") "<20150618110200.7c5d78b2@redhat.com>" ("<20150618110200.7c5d78b2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26498 invoked by uid 550); 18 Jun 2015 12:17:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26477 invoked from network); 18 Jun 2015 12:17:33 -0000
In-Reply-To: <20150618110200.7c5d78b2@redhat.com>
Message-Id: <20150618121721.7DCB47BC098@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, kaplanlior@gmail.com, security@php.net
Date: Thu, 18 Jun 2015 08:17:21 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: various issues in PHP
To: thoger@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> same reporter, same type, same affected (released)
> versions, and the same PHP extension

Vulnerabilities with different disclosure dates aren't merged. (This
doesn't mean that we would want to have separate CVEs for a
developer's efforts to completely fix one type of problem in a single
piece of code, before any changes were in a release, even if the
efforts took a while. However, even in the case of a single piece of
code, multiple CVEs can occur if there is a CVE assignment at a time
when development work seems finished, and then this work continues.)

> issue affecting different module of the code base
> is not a typical reason for split.

"different module" would be relevant if it were known that the code in
one module was originally introduced in one version, and this was not
the same version as for the other code.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgrW7AAoJEKllVAevmvmsUz4H/0sh6svZ2GQV4/docwDrfdZA
JVV7P8NFja6XlKMQsGDvSrsollGjA2TZf7y7D56mXIjK6hv57tS5bzTcH2ofQSfY
Au0IOyM+/MDu8pnt1pXAyBvYbwaMQOvZRFMA96imL46/KPwnKPUACrnXfu6BpXU4
u186I9Na+8RKc47yajjg3ddUjTl1aMGjXXbEXK1c9XtnKjU1zk7Gd0HCRqcMRW6b
+4ojMyyPigXNbPXb1YtFUS3BZ25p7jLVzNHvaBeKEddJuHtyyq7lHZbAYDbi0Ykb
K7h1uCtg9XpzkRvEQnJzBEFCsgEMQs9PURNhWd2S+wVSCzSL+AxgPm0a/hbpZ5o=
=QwlQ
-----END PGP SIGNATURE-----
