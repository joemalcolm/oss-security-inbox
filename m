X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2381" "Wednesday" "14" "June" "2017" "08:20:27" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1706140819140.16652@tvnag.unkk.fr>" "87" "[oss-security] [SECURITY ADVISORY] curl: URL file scheme drive letter buffer overflow" "^Date:" nil nil "6" "2017061406:20:27" "[oss-security] [SECURITY ADVISORY] curl: URL file scheme drive letter buffer overflow" (number mark "U       daniel@haxx. Jun 14   87/2381  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: URL file scheme drive letter buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19883 invoked by uid 550); 14 Jun 2017 06:20:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19838 invoked from network); 14 Jun 2017 06:20:40 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1706140819140.16652@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 14 Jun 2017 08:20:27 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: URL file scheme drive letter buffer
 overflow
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

URL file scheme drive letter buffer overflow
============================================

Project curl Security Advisory, June 14th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_20170614.html)

VULNERABILITY
-------------

When libcurl is given either

  1. a file: URL that doesn't use two slashes following the colon, or
  2. is told that file is the default scheme to use for URLs without scheme

... and the given path starts with a drive letter and libcurl is built for
Windows or DOS, then libcurl would copy the path with a wrong offset, so that
the end of the given path would write beyond the malloc buffer. Up to seven
bytes too much.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool. It was introduced in commit
[1d4202ade602](https://github.com/curl/curl/commit/1d4202ade602), discussed in
[issue #1124](https://github.com/curl/curl/pull/1124).

HTTP redirects to file: URLs are not affected.

For version 7.54.1, the function that cleans up the file: URLs is fixed to not
copy things out of the buffer!

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-9502 to this issue.

AFFECTED VERSIONS
-----------------

This bug is present on libcurl builds that accept drive letters in file names,
which is limited to Windows and DOS builds, including cygwin.

- Affected versions: libcurl 7.53.0 to and including 7.54.0
- Not affected versions: libcurl < 7.53.0 and >= 7.54.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

The function now takes better care to allocate memory enough to store what's
copied and to copy the strings to the correct output offsets.

A [patch for CVE-2017-9502](https://curl.haxx.se/CVE-2017-9502.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.54.1

  B - Apply the patch to your version and rebuild

  C - Do not use file URLs on Windows

TIME LINE
---------

It was reported to the curl project on June 4, 2017.  We contacted MITRE on
June 7.

libcurl 7.54.1 was released on June 14 2017, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Marcel Raad. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
