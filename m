Received: (qmail 17615 invoked by uid 550); 29 Apr 2026 06:01:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17584 invoked from network); 29 Apr 2026 06:01:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442483; bh=FPg/Pua7XtgmxeWEhBJ5c0j9z1bCTjCdoBGrAqV3xPo=;
	h=Date:From:To:Subject:From;
	b=aV2XdhXAnQ/J8EagAUgRVM6vli+et/6FgWhVCIY/cxqGI0bykzhBmd8BCQPT+9YUl
	 C8csFltdRX4LrCkkk115fhiQTrxt8/rytloiciEfwwAKodKlu0rJjKM9WsSge8RPaN
	 hNwCDTJ8n0yjCXFPQUTCLfhb+KC4IN2vLL8jb4hsMe4nHJL1nUsYaI0k3yyyB1KL6a
	 nk5Ty4zMSl+SgTpUDA+W+uJxypzaScpR3fsTJjnvL/JCRHZx+gwTdj8mSMQGcv+LNp
	 NN0yDzM+TrLbbKT6VrIE9bh6hHKDz2KeiIsHXUBi7JCTNgmvfbuIyR3zbbJvH0aSOu
	 AT14gtun1JN+w==
Date: Wed, 29 Apr 2026 08:01:23 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <0371p402-5rs4-0669-n235-988np52r3550@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-7009: OCSP stapling bypass with Apple
 SecTrust

OCSP stapling bypass with Apple SecTrust
========================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-7009.html)

VULNERABILITY
-------------

When curl is told to use the Certificate Status Request TLS extension, often
referred to as *OCSP stapling*, to verify that the server certificate is
valid, it fails to detect OCSP problems and instead wrongly consider the
response as fine.

INFO
----

This vulnerability only occurs when the curl meets two specific conditions:

* **Backend:** It is built using an **OpenSSL-based backend** (including forks
   like BoringSSL, AWS-LC, LibreSSL, or QuicTLS).

* **Trust Store:** It is used with **Apple SecTrust**, the feature that allows
   curl to access the native CA certificate store on Apple operating systems
   (macOS, iOS, iPadOS, tvOS, and watchOS).

In short, the flaw requires an OpenSSL-linked curl running on an Apple
platform using the system's native certificate store.

OCSP stapling is not a widely used feature on the open web, perhaps partly
because so many big name sites do not support it.

This bug is **not** considered a *C mistake* (likely to have been avoided had
we not been using C).

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-7009 to this issue.

CWE-295: Improper Certificate Validation

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 8.17.0 to and including 8.19.0
- Not affected versions: curl < 8.17.0 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/eefd03c572996e5d

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

- Fixed-in: https://github.com/curl/curl/commit/51905671e07f087e28e57

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.20.0

  B - Apply the patch to your version and rebuild

  C - Avoid the combination OSCP stapling + Apple SecTrust

TIMELINE
---------

This issue was reported to the curl project on April 25, 2026.

curl 8.20.0 was released on April 29 2026, coordinated with the publication of
this advisory.

CREDITS
-------

- Reported-by: Carlos Carrillo
- Patched-by: Stefan Eissing

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
