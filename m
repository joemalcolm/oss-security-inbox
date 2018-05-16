X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2730" "Wednesday" "16" "May" "2018" "08:26:01" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1805140831040.16381@tvnag.unkk.fr>" "92" "[oss-security] [SECURITY AVISORY] curl: RTSP bad headers buffer over-read" nil nil nil "5" "2018051606:26:01" "[oss-security] [SECURITY AVISORY] curl: RTSP bad headers buffer over-read" (number mark "U       daniel@haxx. May 16   92/2730  " thread-indent "\"[oss-security] [SECURITY AVISORY] curl: RTSP bad headers buffer over-read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27837 invoked by uid 550); 16 May 2018 06:26:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26581 invoked from network); 16 May 2018 06:26:13 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 16 May 2018 08:26:01 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1805140831040.16381@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY AVISORY] curl: RTSP bad headers buffer over-read

RTSP bad headers buffer over-read
=================================

Project curl Security Advisory, May 16th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-b138.html)

VULNERABILITY
-------------

curl can be tricked into reading data beyond the end of a heap based buffer
used to store downloaded content.

When servers send RTSP responses back to curl, the data starts out with a set
of headers. curl parses that data to separate it into a number of headers to
deal with those appropriately and to find the end of the headers that signal
the start of the "body" part.

The function that splits up the response into headers is called
`Curl_http_readwrite_headers()` and in situations where it can't find a single
header in the buffer, it might end up leaving a pointer pointing into the
buffer instead of to the start of the buffer which then later on may lead to
an out of buffer read when code assumes that pointer points to a full buffer
size worth of memory to use.

This could potentially lead to information leakage but most likely a
crash/denial of service for applications if a server triggers this flaw.

We are not aware of any exploit of this flaw.

INFO
----

This bug was originally introduced in May 2003 in [this
commit](https://github.com/curl/curl/commit/b2ef79ef3d47b37) but it didn't
become a problem until we added RTSP in January 2010 in [this
commit](https://github.com/curl/curl/commit/bc4582b68a673d3).

We have only proven this to trigger with RTSP traffic even though this is code
shared with HTTP. We believe this is not a problem for HTTP transfers.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000301 to this issue.

CWE-126: Buffer Over-read

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.20.0 to and including curl 7.59.0
- Not affected versions: curl < 7.20.0 and curl >= 7.60.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In curl version 7.60.0, curl makes sure to restore the pointer back to where
its supposed to point.

A [patch for CVE-2018-1000301](https://curl.haxx.se/CVE-2018-1000301.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.60.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was reported to the curl project on March 24, 2018

We contacted distros@openwall on May 7, 2018.

curl 7.60.0 was released on May 16 2018, coordinated with the publication of
this advisory.

CREDITS
-------

Detected by OSS-fuzz. Assisted by Max Dymond. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
