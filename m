Received: (qmail 24145 invoked by uid 550); 5 Feb 2025 08:21:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24121 invoked from network); 5 Feb 2025 08:21:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1738743695; bh=yLSHaEHys866sMerSwgZ0VAZl9K3tPNZuQpwE2VLZwg=;
	h=Date:From:To:Subject:From;
	b=gb83N0PzmTHQruvmFjcOyKKorrVeFaf8EIPFzO+9PNkQHFrvF5egWMdnTTcm79tMi
	 gqY/9YRXQbNE+9gow/i5a318OTJlzu3UyLNiGq1f2CEBF9n7i2SZpBthC1p0ZlveoX
	 0+66q0rwHdsaEeLhlytP3/+CSPZnV8FWY3DjPdQ4s6EQlLBLFkqwH0ByUBBbZUEb1y
	 tJT5fItuRwQ6O2WIgN6UnIM1ICzw1TY3sXSFq0o6Wy5hSiKFLVgCT3AV/uNfD5+qav
	 09qePgBEDeKJixaderD8lcw0hpg6mr1CxnbKdWDDYNbWaMBTfzh1OQ/dSqs6MbNtAf
	 bRs0CLCbVyCww==
Date: Wed, 5 Feb 2025 09:21:35 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <136r5447-qs76-r869-0o1n-5188nr17961s@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0167: netrc and default credential
 leak

netrc and default credential leak
==================================

Project curl Security Advisory, February 5th 2025 -
[Permalink](https://curl.se/docs/CVE-2025-0167.html)

VULNERABILITY
-------------

When asked to use a `.netrc` file for credentials **and** to follow HTTP
redirects, curl could leak the password used for the first host to the
followed-to host under certain circumstances.

This flaw only manifests itself if the netrc file has a `default` entry that
omits both login and password. A rare circumstance.

INFO
----

A curl transfer with `nn.tld` that redirects to `zz.tld`, using a `.netrc`
file with an *empty* `default` entry like below, would make curl pass on
`maryspassword` as password even in the transfer to the second and separate
host `zz.tld`.

~~~
machine nn.tld
   login mary
   password maryspassword

default
~~~

This bug is **not** considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

This flaw is similar, but not identical, to
[CVE-2024-11053](https://curl.se/docs/CVE-2024-11053.html).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-0167 to this issue.

CWE-200: Exposure of Sensitive Information to an Unauthorized Actor

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.76.0 to and including 8.11.1
- Not affected versions: curl < 7.76.0 and >= 8.12.0
- Introduced-in: https://github.com/curl/curl/commit/46620b97431e19c53ce82e5

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

- Fixed-in: https://github.com/curl/curl/commit/0e120c5b925e8ca75d5319e

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.12.0

  B - Apply the patch to your version and rebuild

  C - Avoid using netrc together with redirects

TIMELINE
---------

This issue was reported to the curl project on December 30, 2024. We contacted
distros@openwall on January 28, 2025.

curl 8.12.0 was released on February 5 2025 around 08:00 UTC, coordinated with
the publication of this advisory.

CREDITS
-------

- Reported-by: Yihang Zhou
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
