X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2357" "Wednesday" "16" "May" "2018" "08:25:56" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1805140829220.16381@tvnag.unkk.fr>" "87" "[oss-security] [SECURITY AVISORY] curl: FTP shutdown response buffer overflow" nil nil nil "5" "2018051606:25:56" "[oss-security] [SECURITY AVISORY] curl: FTP shutdown response buffer overflow" (number mark "U       daniel@haxx. May 16   87/2357  " thread-indent "\"[oss-security] [SECURITY AVISORY] curl: FTP shutdown response buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26341 invoked by uid 550); 16 May 2018 06:26:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26319 invoked from network); 16 May 2018 06:26:09 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 16 May 2018 08:25:56 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1805140829220.16381@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY AVISORY] curl: FTP shutdown response buffer overflow

FTP shutdown response buffer overflow
=====================================

Project curl Security Advisory, May 16th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-82c2.html)

VULNERABILITY
-------------

curl might overflow a heap based memory buffer when closing down an FTP
connection with very long server command replies.

When doing FTP transfers, curl keeps a spare "closure handle" around
internally that will be used when an FTP connection gets shut down since the
original curl easy handle is then already removed.

FTP server response data that gets cached from the original transfer might
then be larger than the default buffer size (16 KB) allocated in the "closure
handle", which can lead to a buffer overwrite. The contents and size of that
overwrite is controllable by the server.

This situation was detected by an assert() in the code, but that was of course
only preventing bad stuff in debug builds. This bug is very unlikely to
trigger with non-malicious servers.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in April 2017 in [this
commit](https://github.com/curl/curl/commit/e40e9d7f0decc79) when we
introduced the use of increased buffer sizes for FTP.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000300 to this issue.

CWE-122: Heap-based Buffer Overflow

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.54.1 to and including curl 7.59.0
- Not affected versions: curl < 7.54.1 and curl >= 7.60.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In curl version 7.60.0, curl will return an error if this situation happens.

A [patch for CVE-2018-1000300](https://curl.haxx.se/CVE-2018-1000300.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.60.0

  B - Apply the patch to your version and rebuild

  C - Avoing using FTP

TIME LINE
---------

It was reported to the curl project on March 22, 2018

We contacted distros@openwall on May 7, 2018.

curl 7.60.0 was released on May 16 2018, coordinated with the publication of
this advisory.

CREDITS
-------

Detected by Dario Weisser. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
