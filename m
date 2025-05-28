Received: (qmail 22256 invoked by uid 550); 28 May 2025 05:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22213 invoked from network); 28 May 2025 05:49:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1748411384; bh=Quq/sZziNMPy5xHmB1MiiD+YmPF8HmIPbJYS5aTRlKI=;
	h=Date:From:To:Subject:From;
	b=PVyBo07OmMmqZTsLPWLrWLIYItsgoreBkB//un8mJdR/zt7BYGiM+FqfJZNXE+4zH
	 sMlAzfCc/zuJO7uDZOuzKQTmQOpBW7BGTTur76qUh8qad/s5Nihv/pPM6rsbl+qTzA
	 /Fn+BLWkTKFynlAM69Z7LxJeCP/2/YEZ0d1KXli6x+HuU52YmTGPGCSXmEAqvPkQUi
	 kbyfwtH0w8km74T7r/IUQ6jJfuUBBCCaMAW2MftNVAGvQxqPWhetypI4FgekUy6LPI
	 j5Z/nDw5kN0XbdvvvekhZr+5DHjO67oOnB2etMRQBvU/I4LqHXal5D5ZZGVkNglSIi
	 vRE4qZjOdrSiQ==
Date: Wed, 28 May 2025 07:49:44 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <89242r01-767o-4733-op49-24r002r3217r@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: No QUIC certificate pinning with wolfSSL

No QUIC certificate pinning with wolfSSL
========================================

Project curl Security Advisory, May 28 2025 -
[Permalink](https://curl.se/docs/CVE-2025-5025.html)

VULNERABILITY
-------------

libcurl supports *pinning* of the server certificate public key for HTTPS
transfers. Due to an omission, this check is not performed when connecting
with QUIC for HTTP/3, when the TLS backend is wolfSSL.

Documentation says the option works with wolfSSL, failing to specify that it
does not for QUIC and HTTP/3.

Since pinning makes the transfer succeed if the pin is fine, users could
unwittingly connect to an impostor server without noticing.

INFO
----

curl can get built to use one out of twelve different TLS libraries. The
selection is done both at build-time and also optionallt at run-time. This
vulnerability only affects curl made to use this specific TLS backend.

This flaw requires wolfSSL to be used as the TLS backend for QUIC to trigger.

The pinning option still works fine with wolfSSL for TCP-based TLS, meaning
for HTTP/1 and HTTP/2.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-5025 to this issue.

CWE-295: Improper Certificate Validation

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 8.5.0 to and including 8.13.0
- Not affected versions: curl < 8.5.0 and >= 8.14.0
- Introduced-in: https://github.com/curl/curl/commit/5f78cf503c786a1d48d1352

Beware that while curl versions before 8.5.0 are not strictly considered
vulnerable to this flaw, certificate pinning for QUIC with wolfSSL did not
work correctly then either but before then HTTP/3 support was labeled
experimental and not presumed to work 100%.

libcurl is used by many applications, but not always advertised as such!

This bug is **not** considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
------------

Starting in curl 8.14.0, this mistake is fixed.

- Fixed-in: https://github.com/curl/curl/commit/e1f65937a96a451292e92313396

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.14.0

  B - Apply the patch to your local version

  C - Avoid using HTTP/3 or certificate pinning with curl built to use wolfSSL

TIMELINE
--------

This issue was reported to the curl project on May 19, 2025. We contacted
distros@openwall on May 22, 2025.

curl 8.14.0 was released on May 28 2025 around 07:00 UTC, coordinated with the
publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Hiroki Kurosawa
- Patched-by: Stefan Eissing

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
