X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2200" "Wednesday" "2" "November" "2016" "08:08:01" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020807250.375@tvnag.unkk.fr>" "85" "[oss-security] [SECURITY ADVISORY] curl OOB write via unchecked multiplication" nil nil nil "11" "2016110207:08:01" "[oss-security] [SECURITY ADVISORY] curl OOB write via unchecked multiplication" (number mark "U       daniel@haxx. Nov  2   85/2200  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl OOB write via unchecked multiplication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27658 invoked by uid 550); 2 Nov 2016 07:08:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26537 invoked from network); 2 Nov 2016 07:08:14 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:08:01 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020807250.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl OOB write via unchecked multiplication

OOB write via unchecked multiplication
======================================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102C.html)

VULNERABILITY
-------------

In libcurl's base64 encode function, the output buffer is allocated as follows
without any checks on insize:

     malloc( insize * 4 / 3 + 4 )

On systems with 32-bit addresses in userspace (e.g. x86, ARM, x32), the
multiplication in the expression wraps around if insize is at least 1GB of
data. If this happens, an undersized output buffer will be allocated, but the
full result will be written, thus causing the memory behind the output buffer
to be overwritten.

If a username is set directly via `CURLOPT_USERNAME` (or curl's `-u, --user`
option), this vulnerability can be triggered. The name has to be at least
512MB big in a 32bit system.

Systems with 64 bit versions of the `size_t` type are not affected by this
issue.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8617 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions.

- Affected versions: curl 7.1 to and including 7.50.3
- Not affected versions: curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, these functions will deny negative string lengths from
being used.

A [patch for CVE-2016-8617](https://curl.haxx.se/CVE-2016-8617.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

  C - Do not use the `CURLOPT_USERNAME` option.

TIME LINE
---------

It was first reported to the curl project on September 23 by Cure53.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

This vulnerability was found during a Secure Open Source audit performed by
Cure53.

-- 

  / daniel.haxx.se
