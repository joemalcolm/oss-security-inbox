Received: (qmail 17437 invoked by uid 550); 29 Apr 2026 06:01:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17415 invoked from network); 29 Apr 2026 06:01:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442470; bh=H6gMb9O1U6R8+5eM6Yl6v6AuR9kbj0pZbljULn7Gf20=;
	h=Date:From:To:Subject:From;
	b=Mo4RhEKW9DuHreZiV6HuPNalzsX0cmbBs0MQ3uv92JWfZbQ9Skm6ceJ6NxEfcJ6iC
	 JclP1SBnBSocVxe0FUxppVLIO8SpKxFzJmw7tJOYC2xwsDDeqUNWi4bJD/oalqbc/3
	 PHrVc0nKHfweOQM7uuAy0MZ4Ex83DJb8bRN+4tzfiqqmhgzH5fpRcnPupuQXMR3FCm
	 wyKvLVPD8VXOkTitSSsVWbL58OePiMIgOBhhb9mc9PYIeUKVfOLgDJbW5NidKp8pzE
	 e2+zAQnPY2aXo5VqNw3wAAMJONtwqHx7zcpdKdXTN2E4JdSNWZA3ehJdm243H64zS2
	 IEfN+yrzeXNNg==
Date: Wed, 29 Apr 2026 08:01:10 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <rn98r54r-0s36-117o-685s-921n16spr1p1@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-6253: proxy credentials leak over redirect-to
 proxy

proxy credentials leak over redirect-to proxy
=============================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-6253.html)

VULNERABILITY
-------------

curl might erroneously pass on credentials for a first proxy to a second
proxy.

This can happen when the following conditions are true:

1. curl is setup to use specific different proxies for different URL schemes
2. the first proxy needs credentials
3. the second proxy uses no credentials
4. while using the first proxy (using say `http://`), curl is asked to follow
    a redirect to a URL using another scheme (say `https://`), accessed using a
    second, different, proxy

INFO
----

The credentials are passed on base64 encoded. The receiving proxy gets no hint
as for where or how the credentials are valid.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-6253 to this issue.

CWE-522: Insufficiently Protected Credentials

Severity: Medium

AFFECTED VERSIONS
-----------------

This flaw has existed since curl added support for credentials in proxy
strings.

- Affected versions: from curl 7.14.1 to and including 8.19.0
- Not affected versions: curl < 7.14.1 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/3b60bb725913ce

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **also** affects the curl command line tool.

SOLUTION
--------

- Fixed-in: https://github.com/curl/curl/commit/188c2f166a20fa97c2325

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.20.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using proxies with credentials

TIMELINE
---------

It was reported to the curl project on April 13th 2026. We contacted
distros@openwall on April 23.

libcurl 8.20.0 was released on April 29th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Dwij Mehta
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
