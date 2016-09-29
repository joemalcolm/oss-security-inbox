X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1924" "Thursday" "29" "September" "2016" "16:02:10" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>" "72" "[oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write" "^Date:" nil nil "9" "2016092914:02:10" "[oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write" (number mark "        daniel@haxx. Sep 29   72/1924  " thread-indent "\"[oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1700 invoked by uid 550); 29 Sep 2016 14:02:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1660 invoked from network); 29 Sep 2016 14:02:23 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Thu, 29 Sep 2016 16:02:10 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write
To: c-ares development <c-ares@cool.haxx.se>, oss-security@lists.openwall.com

`ares_create_query` single byte out of buffer write
=================================================

Project c-ares Security Advisory, September 29, 2016 -
[Permalink](https://c-ares.haxx.se/adv_20160929.html)

VULNERABILITY
-------------

When a string is passed in to `ares_create_query` or `ares_mkquery` and uses
an escaped trailing dot, like "hello\.", c-ares calculates the string length
wrong and subsequently writes outside of the the allocated buffer with one
byte. The wrongly written byte is the least significant byte of the 'dnsclass'
argument; most commonly 1.

We have been seen proof of concept code showing how this can be exploited in a
real-world system, but we are not aware of any such instances having actually
happened in the wild.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-5180 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following c-ares versions.

- Affected versions: libcurl 1.0.0 to and including 1.11.0
- Not affected versions: c-ares >= 1.12.0

THE SOLUTION
------------

In version 1.12.0, the function has been corrected and a test case have been
added to verify.

A [patch for CVE-2016-5180](https://c-ares.haxx.se/CVE-2016-5180.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade c-ares to version 1.12.0

  B - Apply the patch to your version and rebuild

  C - Make *really* sure you don't pass in strings to either of these functions
      that use escaped trailing dots.

TIME LINE
---------

It was reported to the c-ares project on September 22 by Gzob Qq.

c-ares 1.12.0 was released on September 29 2016, coordinated with the
publication of this advisory.

CREDITS
-------

Thanks to Gzob Qq for the report and to Mattias Nissler for code reviews of
the patch.

-- 

  / daniel.haxx.se
