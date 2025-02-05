Received: (qmail 25899 invoked by uid 550); 5 Feb 2025 08:21:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25839 invoked from network); 5 Feb 2025 08:21:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1738743699; bh=poXfzVRjR5SaZ+dzj0iC5+roUc/bJAVKicW93HVvxNM=;
	h=Date:From:To:Subject:From;
	b=0tFak9sTu1nWMC/iQjAtOZ/iXi2HoRatUz0dl2e3EYuwfEkQ69H0+7AX+ClZrQwly
	 QSPGdqz6/bTc4zctOsYx8ubL+blybiPkK4i7gHx0H7BmEuJkO6lGXcN6vYePwThpBL
	 Tqpb7HkzvdFA5QKPRWCvZ8OyaTGPu9G2lQSt6gSYpp9SK5i99pbY3u5deWwI3czBSn
	 5wN3myxsoYSOlVohpA5klzb46/TOLIzLL6dS8ToySYgb4XjHwcdCJoQQUlguehsoPD
	 fJCA5evftLVHYTHhNhe7EHcqSgchGUF5GWN7iGNhKoXXalGTAMmaxbQIEsbOiIhq0X
	 /Hm9njx2THIOw==
Date: Wed, 5 Feb 2025 09:21:39 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <217qs799-s199-2990-25rr-p0385p14803o@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0665: eventfd double close

eventfd double close
====================

Project curl Security Advisory, February 5th 2025 -
[Permalink](https://curl.se/docs/CVE-2025-0665.html)

VULNERABILITY
-------------

libcurl would wrongly close the same eventfd file descriptor twice when taking
down a connection channel after having completed a threaded name resolve.

INFO
----

This flaw requires libcurl to get built with the threaded resolver

It requires that *eventfd* is used in the curl build. This feature is only
used on 64-bit architectures.

The eventfd socket is used for inter-thread messaging and since the
communication was originally written to use `socketpair()` only, there was two
`close()` calls done and the superfluous one was left accidentally used
because of an `#ifdef` mistake.

This bug was reported (and fixed) immediately after the 8.11.1 release, but
the security impact was not considered until later. This bug causes libcurl to
act unreliably which many users will have noticed and either avoided eventfd
or the vulnerable version, thus somewhat reducing the impact of this problem.

It can also be worth noting that both `close()` calls are typically called
within a few dozens of instructions, severely limiting the ability for an
external party to control which other file descriptor this can be made to
affect.

This bug is **not** considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-0665 to this issue.

CWE-1341: Multiple Releases of Same Resource or Handle

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected version: curl 8.11.1
- Not affected versions: curl < 8.11.1 and >= 8.12.0
- Introduced-in: https://github.com/curl/curl/commit/92124838c6b7e09e3f35f

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

- Fixed-in: https://github.com/curl/curl/commit/ff5091aa9f73802e894b1cbdf

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.12.0

  B - Apply the patch to your version and rebuild

  C - Disable eventfd use in your build

  D - Use the c-ares resolver backend

TIMELINE
---------

This issue was reported to the curl project on January 22, 2025. We contacted
distros@openwall on January 28, 2025.

curl 8.12.0 was released on February 5 2025 around 08:00 UTC, coordinated with
the publication of this advisory.

CREDITS
-------

- Reported-by: Ankom Coper
- Patched-by: Andy Pan

The [original bug](https://github.com/curl/curl/issues/15725) was first
reported as a "normal" bug, by:

- Reported-by: Christian Heusel

Thanks a lot!

-- 

  / daniel.haxx.se
