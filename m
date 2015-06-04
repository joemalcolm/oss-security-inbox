X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1825" "Thursday" "4" "June" "2015" "17:56:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150604215609.811EC42E102@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution" nil nil nil "6" "2015060421:56:09" "[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution" (number mark "        cve-assign@m Jun  4   41/1825  " thread-indent "\"[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution\"\n") "<20150604134618.GA1613@kronk.local>" ("<20150604134618.GA1613@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21713 invoked by uid 550); 4 Jun 2015 21:56:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21689 invoked from network); 4 Jun 2015 21:56:21 -0000
In-Reply-To: <20150604134618.GA1613@kronk.local>
Message-Id: <20150604215609.811EC42E102@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  4 Jun 2015 17:56:09 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution
To: alessandro@ghedini.me

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> redis 3.0.2 and 2.8.21 have been released

> https://groups.google.com/forum/#!msg/redis-db/4Y6OqK8gEyk/Dg-5cejl-eUJ
> http://benmmurphy.github.io/blog/2015/06/04/redis-eval-lua-sandbox-escape/
> https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6ea21e25411

The Ben Murphy advisory has a long discussion of many software and
deployment issues. Do you have a specific viewpoint about what the CVE
ID should be for? In particular, is the essence of the request that
the Redis upstream vendor believes that loading Lua bytecode was, by
itself, inherently an implementation mistake in Redis, and is now
fixed by the
https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6ea21e25411
change?

By way of background: we have previously tried to gather information
for assigning CVE IDs to the underlying bytecode security concerns in
Lua (see the http://openwall.com/lists/oss-security/2014/08/27/2
post), but this was unsuccessful. If the currently needed CVE ID should
be only about Redis, as mentioned in the above paragraph, then we will
not be revisiting those Lua issues now.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVcMkAAAoJEKllVAevmvmshgoH/0d6gd3qhLrK615YkgfLRCnU
bAuBrbBRf3aCO4qQWfdvdluSDb4pf8Uc2ECC9c1eHJfqRNIvkWgq+9MYWV0S1Jgz
O1WjYgJ5QbamqgECPUluj3yrZdefLwIVNxKRjfzIa5uZS/e4zbWyYcWPEuXsU6YD
7PiFDRx0S6k1OUpw1/051uV9p/Q06PZcPKtQq4qIH2gjcZO1MQn/C8T0y+tNVNKq
iUyG84esvBK04AjakUNppHSYTiBcW7dGEWhwd7cvdvXWnF+g3s/PBZNve3B5czIZ
klk0DqXHtTaYvSF4ERY2cjMKU3GBJWq4dQ2kkfXBDjm28oqG2Nit8APETMWpNHU=
=J2bY
-----END PGP SIGNATURE-----
