X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2508" "Wednesday" "24" "January" "2018" "08:11:30" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1801240021400.4042@tvnag.unkk.fr>" "88" "[oss-security] [SECURITY ADVISORY] curl: HTTP/2 trailer out-of-bounds read" nil nil nil "1" "2018012407:11:30" "[oss-security] [SECURITY ADVISORY] curl: HTTP/2 trailer out-of-bounds read" (number mark "U       daniel@haxx. Jan 24   88/2508  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: HTTP/2 trailer out-of-bounds read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7591 invoked by uid 550); 24 Jan 2018 07:11:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7550 invoked from network); 24 Jan 2018 07:11:43 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 24 Jan 2018 08:11:30 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1801240021400.4042@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: HTTP/2 trailer out-of-bounds read

HTTP/2 trailer out-of-bounds read
=================================

Project curl Security Advisory, January 24th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-824a.html)

VULNERABILITY
-------------

libcurl contains an out bounds read in code handling HTTP/2 trailers.

It was [reported](https://github.com/curl/curl/pull/2231) that reading an
HTTP/2 trailer could mess up future trailers since the stored size was one
byte less than required.

The problem is that the code that creates HTTP/1-like headers from the HTTP/2
trailer data once appended a string like `":"` to the target buffer, while
this was recently changed to `": "` (a space was added after the colon) but
the associated math wasn't updated correspondingly.

When accessed, the data is read out of bounds and causes either a crash or
that the (too large) data gets passed to the libcurl callback. This might lead
to a denial-of-service situation or an information disclosure if someone has a
service that echoes back or uses the trailers for something.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in commit
[0761a51ee0551ad9e5](https://github.com/curl/curl/commit/0761a51ee0551ad9e5),
May 11 2016.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000005 to this issue.

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.49.0 to and including 7.57.0
- Not affected versions: libcurl < 7.49.0 and >= 7.58.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In libcurl version 7.58.0, the allocation size is corrected.

A [patch for
CVE-2018-1000005](https://github.com/curl/curl/commit/fa3dbb9a147488a294.patch)
is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.58.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was publicly [reported to the curl
project](https://github.com/curl/curl/issues/2231) on January 10, 2018.

The security impact was realized and assessed on January 11. The fix was
merged publicly in git on the same day, not mentioning the security impact.

We contacted distros@openwall on January 17.

curl 7.58.0 was released on January 24 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported and patched by Zhouyihai Ding. Researched by Ray Satiro.

Thanks a lot!

-- 

  / daniel.haxx.se
