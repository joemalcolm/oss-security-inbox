Received: (qmail 17580 invoked by uid 550); 7 Jan 2026 07:09:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17562 invoked from network); 7 Jan 2026 07:09:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1767769752; bh=rBO5acttHa5CDDXDCKLhua8uGhf+iKTB8VcBSVkKWvg=;
	h=Date:From:To:Subject:From;
	b=gDP/gv/C2xx9u8yI3wbjqfQ3Y39LReyAqqSB2YRME+GhFCPuXEfhsTKprhYamMq5m
	 Bq3SrZB4jzdXfpid9/R9YubjsTK306GT4RZfbD+VSshOzGfsM1a5iM0c3bTcCDigKZ
	 vmm//jO/Y0Qz/XZDAhpL1KJrG651qRvOsM77P7g9AuX4OZptLqUieavwmfmgf/JoK2
	 PZHzHu6u2ke5GU8p5COCfvjCafXps1zxA9CsI8lCzA/QvLiyqr6r+BsHHbT2BEb51L
	 wB8Lx2V+ex5G7U5LhscClbEEMGbVVdLq4Fz/giTNzAH1H65KJ0u3AgeWvW11RCAFb/
	 q9PR03/RbyjXg==
Date: Wed, 7 Jan 2026 08:09:12 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <325nq5nr-nr0n-6231-093r-01o942ssp5r0@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl CVE-2025-13034: No QUIC certificate pinning with
 GnuTLS

No QUIC certificate pinning with GnuTLS
=======================================

Project curl Security Advisory, January 7 2026 -
[Permalink](https://curl.se/docs/CVE-2025-13034.html)

VULNERABILITY
-------------

When using `CURLOPT_PINNEDPUBLICKEY` option with libcurl or `--pinnedpubkey`
with the curl tool, curl should check the public key of the server certificate
to verify the peer.

This check was skipped in a certain condition that would then make curl allow
the connection without performing the proper check, thus not noticing a
possible impostor. To skip this check, the connection had to be done with QUIC
with ngtcp2 built to use GnuTLS and the user had to explicitly disable the
standard certificate verifiation.

INFO
----

curl contains support for several different QUIC and TLS backends. Other QUIC
backends or the ngtcp2 backend built with another TLS library are not affected
by this flaw.

If instead connecting to a server over HTTP/1 or HTTP/2, the pinning check
works fine and does properly detect impostors.

This issue is similar to
[CVE-2025-5025](https://curl.se/docs/CVE-2025-5025.html) but for a different
TLS library.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-13034 to this issue.

CWE-295: Improper Certificate Validation

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 8.8.0 to and including 8.17.0
- Not affected versions: curl < 8.8.0 and >= 8.18.0
- Introduced-in: https://github.com/curl/curl/commit/3210101088dfa3d6a125

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
------------

Starting in curl 8.18.0, this mistake is fixed.

- Fixed-in: https://github.com/curl/curl/commit/3d91ca8cdb3b434226e743946

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.18.0

  B - Build curl with another TLS library

  C - Avoid using HTTP/3

TIMELINE
--------

This issue was reported to the curl project on November 9, 2025. We
contacted distros@openwall on December 30, 2025.

curl 8.18.0 was released on January 7 2026 around 07:00 UTC, coordinated
with the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Stanislav Fort (Aisle Research)
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
