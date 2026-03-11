Received: (qmail 11463 invoked by uid 550); 11 Mar 2026 06:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11427 invoked from network); 11 Mar 2026 06:55:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1773212090; bh=9vGTsv19Ecs/LyKJTMfXi8HpE4WKE4qoRkVC5CnWp+w=;
	h=Date:From:To:Subject:From;
	b=mBn+r7JarirChwj9aGMAV/clxKOZwDGzNckGMXl7X3nd/wfkNRLnLpS0W+D0sMSAA
	 2VypPqYJF5Ob23dJgy8QvoAZGLrpOHzAT4i0wTV/OJ5KjMJE7oX+6DTkbe2DtB2wVR
	 wMLTJ6m2AHmoIUxRKOSOVsnfFD/YgJHQCdYFY+NnNfx1/tJg428N5KhgG9Lo1hBxHy
	 NAoTyjcObEKsUvLqG+lOIoCd0hHzkm0zkTyDpEGWqm4aDZ7p8jjWJVYvZI8mxQbs+4
	 mXz9Yjyrmo7nhTm5T+LXWRXs5PEz3qhYzpfVwoj/Q2b/USZVaBlfiVzXxJOj5AKwWL
	 0GDmaOzWqdh4g==
Date: Wed, 11 Mar 2026 07:54:50 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <rq2n27r2-25s1-p567-ps6q-5396rn1p50q8@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-3805: use after free in SMB connection
 reuse

use after free in SMB connection reuse
======================================

Project curl Security Advisory, March 11th 2026
[Permalink](https://curl.se/docs/CVE-2026-3805.html)

VULNERABILITY
-------------

When doing a second SMB request to the same host again, curl would wrongly use
a data pointer pointing into already freed memory.

INFO
----

When the bad code hits, curl first makes a `strlen()` on the (freed) memory
pointer, then checks that the size is less than or equal than 1024 for it to
do something.

Then it copies that string to the the outgoing package which then potentially
could leak sensitive data if the application happened to put it there in the
mean time since the previous transfer.

This seems extremely hard for an attacker to willingly abuse or to massage the
application into leaking specific information. It also seems highly unlikely
that any application ever did this sequence without getting a crash or another
issue that would indicate there is a problem in curl. The risk here is
therefore minimal.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-3805 to this issue.

CWE-416: Use After Free

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 8.13.0 to and including 8.18.0
- Not affected versions: curl < 8.13.0 and >= 8.19.0
- Introduced-in: https://github.com/curl/curl/commit/f4831daa9b2a97e8a29

libcurl is used by many applications, but not always advertised as such!

This bug is considered a *C mistake*. It is likely to have been avoided had we
not been using C.

This flaw also affects the curl command line tool.

SOLUTION
--------

curl 8.19.0 fixes this flaw

- Fixed-in: https://github.com/curl/curl/commit/e090be9f73a7a71459ef678c

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.19.0

  B - Apply the patch and rebuild libcurl

  C - Do not use SMB transfers

TIMELINE
---------

It was reported to the curl project on March 8th 2026. We contacted
distros@openwall on March 8.

libcurl 8.19.0 was released on March 11th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Daniel Wade
- Patched-by: Stefan Eissing

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
