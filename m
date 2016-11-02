X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2608" "Wednesday" "2" "November" "2016" "08:10:38" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020810030.375@tvnag.unkk.fr>" "89" "[oss-security] [SECURITY ADVISORY] curl glob parser write/read out of bounds" nil nil nil "11" "2016110207:10:38" "[oss-security] [SECURITY ADVISORY] curl glob parser write/read out of bounds" (number mark "U       daniel@haxx. Nov  2   89/2608  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl glob parser write/read out of bounds\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11568 invoked by uid 550); 2 Nov 2016 07:10:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11453 invoked from network); 2 Nov 2016 07:10:51 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:10:38 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020810030.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-1500688241-1478070638=:375"
Subject: [oss-security] [SECURITY ADVISORY] curl glob parser write/read out of bounds

--1129329158-1500688241-1478070638=:375
Content-Type: text/plain; format=flowed; charset=VISCII
Content-Transfer-Encoding: 8BIT

glob parser write/read out of bounds
====================================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102F.html)

VULNERABILITY
-------------

The curl tool's "globbing" feature allows a user to specify a numerical range
through which curl will iterate. It is typically specified as [1-5],
specifying the first and the last numbers in the range. Or with [a-z], using
letters.

1. The curl code for parsing the second *unsigned* number did not check for a
leading minus character, which allowed a user to specify `[1--1]` with no
complaints and have the latter `-1` number get turned into the largest
unsigned long value the system can handle. This would ultimately cause curl to
write outside the dedicated malloced buffer after no less than 100,000
iterations, since it would have room for 5 digits but not 6.

2. When the range is specified with letters, and the ending letter is left out
`[L-]`, the code would still advance its read pointer 5 bytes even if the
string was just 4 bytes and end up reading outside the given buffer.

This flaw exists only in the curl tool, not in the libcurl library.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8620 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions.

- Affected versions: curl 7.34.0 to and including 7.50.3
- Not affected versions: curl < 7.34.0 and curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the function reading data will consider reading a zero size
to be an error and bail out.

A [patch for CVE-2016-8620](https://curl.haxx.se/CVE-2016-8620.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

  C - Switch off globbing or make sure you have all ranges in use verified!

TIME LINE
---------

It was first reported to the curl project on October 2 by Lu§t Nguy­n.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Thanks to Lu§t Nguy­n.

-- 

  / daniel.haxx.se
--1129329158-1500688241-1478070638=:375--
