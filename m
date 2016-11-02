X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1973" "Wednesday" "2" "November" "2016" "08:11:41" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020811110.375@tvnag.unkk.fr>" "74" "[oss-security] [SECURITY ADVISORY] curl URL unescape heap overflow via integer truncation" nil nil nil "11" "2016110207:11:41" "[oss-security] [SECURITY ADVISORY] curl URL unescape heap overflow via integer truncation" (number mark "U       daniel@haxx. Nov  2   74/1973  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl URL unescape heap overflow via integer truncation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17844 invoked by uid 550); 2 Nov 2016 07:11:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17809 invoked from network); 2 Nov 2016 07:11:54 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:11:41 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020811110.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl URL unescape heap overflow via integer
 truncation

URL unescape heap overflow via integer truncation
=================================================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102H.html)

VULNERABILITY
-------------

The URL percent-encoding decode function in libcurl is called
`curl_easy_unescape`. Internally, even if this function would be made to
allocate a unscape destination buffer larger than 2GB, it would return that
new length in a signed 32 bit integer variable, thus the length would get
either just truncated or both truncated and turned negative. That could then
lead to libcurl writing outside of its heap based buffer.

This can be triggered by a user on a 64bit system if the user can send in a
custom (very large) URL to a libcurl using program.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8622 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions

- Affected versions: curl 7.24.0 to and including 7.50.3
- Not affected versions: curl < 7.24.0 and curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the parser function is fixed.

A [patch for CVE-2016-8622](https://curl.haxx.se/CVE-2016-8622.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was first reported to the curl project on September 23 by Cure53.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

his vulnerability was found during a Secure Open Source audit performed by
Cure53.

-- 

  / daniel.haxx.se
