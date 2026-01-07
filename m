Received: (qmail 25822 invoked by uid 550); 7 Jan 2026 07:09:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25786 invoked from network); 7 Jan 2026 07:09:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1767769783; bh=+9MVT/vwW3winubrFVRTVkcTzO9oF63y328QqCZTcw4=;
	h=Date:From:To:Subject:From;
	b=VaWftFu1L+ut2fIYO9Lz64FWR26eFGrPnc4dupaV1jYd5an2QzYOuQbgY3rDLf5zm
	 IzS/i573/la3GNriVg0jGsgtDeqn0OY7jqCEM87s21wBZuanJUeFp1KHzcwwZR0cES
	 tDcA1+wu1tBvSyYeP/CfHSR0Nys/tcaOtuqk3t+KqqXkXCBL9ZKlzeGRT8slbIyxdc
	 ugzcEr4TF4BBnkLr35Wco7juE4DFFC/wANSwiBh9XU6b8WKxPzlAafz+bXlyczkAv4
	 jJ5iXw6aX/BXVA/iWdZJT0MuxNAT5E+X7HTzxBX0yVlNOiscTfJJxEliGf20HCNtuL
	 6zolu5FAx9ouw==
Date: Wed, 7 Jan 2026 08:09:43 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <r1rs4967-1378-015n-0183-8239004p3o6q@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl CVE-2025-15224: libssh key passphrase bypass without
 agent set

libssh key passphrase bypass without agent set
==============================================

Project curl Security Advisory, January 7 2026 -
[Permalink](https://curl.se/docs/CVE-2025-15224.html)

VULNERABILITY
-------------

When doing SSH-based transfers using either SCP or SFTP, and asked to do
public key authentication, curl would wrongly still ask and authenticate using
a locally running SSH agent.

INFO
----

This flaw only exists when libcurl is built to use the libssh backend, not the
libssh2 based one. This problem happened because libssh has a somewhat
surprising API choice where they fall back to agent authentication.

It should be noted that the authentication still only succeeds if the local
SSH agent actually has the correct passphrase.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-15224 to this issue.

CWE-287: Improper Authentication

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.58.0 to and including 8.17.0
- Not affected versions: curl < 7.58.0 and >= 8.18.0
- Introduced-in: https://github.com/curl/curl/commit/c92d2e14cfb0db662f958effd2ac86f99

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **also** affects the curl command line tool.

SOLUTION
------------

Starting in curl 8.18.0, this mistake is fixed.

- Fixed-in: https://github.com/curl/curl/commit/16d5f2a5660c61cc27bd5f1c7f512391d1c92

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.18.0

  B - Build curl with the libssh2 backend

  C - Avoid using SFTP or SCP

TIMELINE
--------

This issue was reported to the curl project on December 28, 2025. We contacted
distros@openwall on December 30, 2025.

curl 8.18.0 was released on January 7 2026 around 07:00 UTC, coordinated with
the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Harry Sintonen
- Patched-by: Harry Sintonen

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
