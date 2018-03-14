X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2140" "Wednesday" "14" "March" "2018" "07:55:11" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1803132310150.29869@tvnag.unkk.fr>" "80" "[oss-security] [SECURITY ADVISORY] curl: RTSP RTP buffer over-read" nil nil nil "3" "2018031406:55:11" "[oss-security] [SECURITY ADVISORY] curl: RTSP RTP buffer over-read" (number mark "U       daniel@haxx. Mar 14   80/2140  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: RTSP RTP buffer over-read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1682 invoked by uid 550); 14 Mar 2018 06:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1481 invoked from network); 14 Mar 2018 06:55:24 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 14 Mar 2018 07:55:11 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1803132310150.29869@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: RTSP RTP buffer over-read

RTSP RTP buffer over-read
=========================

Project curl Security Advisory, March 14th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-b047.html)

VULNERABILITY
-------------

curl can be tricked into copying data beyond end of its heap based buffer.

When asked to transfer an RTSP URL, curl could calculate a wrong data length
to copy from the read buffer. The memcpy call would copy data from the heap
following the buffer to a storage area that would subsequently be delivered to
the application (if it didn't cause a crash). We've managed to get it to reach
several hundreds bytes out of range.

This could lead to information leakage or a denial of service for the
application if the server offering the RTSP data can trigger this.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in January 2010 in [this
commit](https://github.com/curl/curl/commit/bc4582b68a673d3) when RTSP support
was first added.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000122 to this issue.

CWE-126: Buffer Over-read

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.20.0 to and including curl 7.58.0
- Not affected versions: curl < 7.20.0 and curl >= 7.59.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In curl version 7.59.0, curl makes sure that this code never gets told to copy
more data than it is allowed to read from the buffer.

A [patch for CVE-2018-1000122](https://curl.haxx.se/CVE-2018-1000122.patch) is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.59.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was reported to the curl project on February 20, 2018

We contacted distros@openwall on March 8, 2018.

curl 7.59.0 was released on March 14 2018, coordinated with the publication of
this advisory.

CREDITS
-------

Detected by OSS-fuzz. Assisted by Max Dymond. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
