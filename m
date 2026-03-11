Received: (qmail 10080 invoked by uid 550); 11 Mar 2026 06:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10036 invoked from network); 11 Mar 2026 06:55:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1773212087; bh=Q0trA+PN6tj+HriJ3Og2eHDVJF4yF1d+1KoVcrbDypI=;
	h=Date:From:To:Subject:From;
	b=PzEMXn/kwbpLPU9PaZcyIymyfsvje6SA5Eeea3RT1G7nDhgmSmF4CHub+9slPQSUv
	 k38K0J9gdl+Ke6kop7hDgwLZwNey2eIbFLtTshtrgO3iS072EQZDjFvzm5dNT+U1gJ
	 OO0MaEU5OFgzMI+bzRCMsxoC9b95WgXn+qg5mBd8k85USrO1Hil7yWOPBx+ZPsxIyw
	 4DSbypcnxwfJWyyEEf/PZx3SGAY2d0kasXskr8G4CH5mFfGFhDeQwzYLI/Q5ObPGxB
	 Js7caFfAtG0t0DIE7o2lY/2D0owThqX1aKwRiGx5DbDiHhhkyKybTtW61jS3iqOFe9
	 FxlHPLB9kn64w==
Date: Wed, 11 Mar 2026 07:54:47 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <n8rpp77p-p9on-rr66-16ro-3q062qoq809r@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-3784: wrong proxy connection reuse with
 credentials

wrong proxy connection reuse with credentials
=============================================

Project curl Security Advisory, March 11th 2026
[Permalink](https://curl.se/docs/CVE-2026-3784.html)

VULNERABILITY
-------------

curl would wrongly reuse an existing HTTP proxy connection doing CONNECT to a
server, even if the new request uses different credentials for the HTTP proxy.
The proper behavior is to create or use a separate connection.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-3784 to this issue.

CWE-305: Authentication Bypass by Primary Weakness

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.7 to and including 8.18.0
- Not affected versions: curl < 7.7 and >= 8.19.0
- Introduced-in: https://github.com/curl/curl/commit/a1d6ad26100bc493c7b

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
--------

curl 8.19.0 fixes this flaw

- Fixed-in: https://github.com/curl/curl/commit/5f13a7645e565c5c1a06f3

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.19.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using HTTP proxy with alternating credentials

TIMELINE
---------

It was reported to the curl project on March 4th 2026. We contacted
distros@openwall on March 8.

libcurl 8.19.0 was released on March 11th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Muhamad Arga Reksapati (HackerOne: nobcoder)
- Patched-by: Stefan Eissing

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
