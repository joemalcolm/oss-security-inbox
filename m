Received: (qmail 24339 invoked by uid 550); 7 Jan 2026 07:09:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24312 invoked from network); 7 Jan 2026 07:09:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1767769780; bh=hJzs/+A9XJbLBYTDmcHZf2qHfHna403SUOCDIRS7vi0=;
	h=Date:From:To:Subject:From;
	b=tNU4wmsz3QiXTCFhp9MA3+JnbkpT37GpJeP3wbK3F4j8xGafhFLpKg6/I+CFPPUuW
	 sHdxkp2OY41nxknCs721ORD4q8N57Cn7qMRcVv5rRW3oJpsRNzW9bXnh14CnScNIk7
	 3yDT2G4frVD4cB6D1aLikSfPQmc6gx6wz0HDWedMNFlrJqrqXOnG1JZ0o1o15h/stp
	 6FmPoht1xZezIAR9iCNvqs4se7qelyEdW7hzZV7qV3gO8SwB7pIcWXtNBVcuK4M4bR
	 KtzGwAbWX5FH+TLE7YWqv2Nh3qheevr4qKwFiFZ4XMSoWsAuG4peyUwDzM5wOo4rC7
	 IdxHfK4rEVV4g==
Date: Wed, 7 Jan 2026 08:09:40 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <p1728624-2s9n-4689-8128-387qpn026q5o@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl CVE-2025-15079: libssh global knownhost override

libssh global knownhost override
================================

Project curl Security Advisory, January 7 2026 -
[Permalink](https://curl.se/docs/CVE-2025-15079.html)

VULNERABILITY
-------------

When doing SSH-based transfers using either SCP or SFTP, and setting the
knownhosts file, libcurl could still mistakenly accept connecting to hosts
*not present* in the specified file if they were added as recognized in the
libssh *global* knownhosts file.

INFO
----

This flaw only exists when libcurl is built to use the libssh backend, not the
libssh2 based one. This problem happened because libssh has a somewhat
surprising API choice where they fall back to a built-in *global* knownhosts
file if the host was not found in the specified one. The global file that was
used as a fallback gets its set path at build time.

The fix now makes libcurl set *both* knownhost files to the same path.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-15079 to this issue.

CWE-297: Improper Validation of Certificate with Host Mismatch

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

- Fixed-in: https://github.com/curl/curl/commit/adca486c125d9a6d9565b9607a19dce803

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.18.0

  B - Build curl with the libssh2 backend

  C - Avoid using SFTP or SCP

TIMELINE
--------

This issue was reported to the curl project on December 24, 2025. We contacted
distros@openwall on December 30, 2025.

curl 8.18.0 was released on January 7 2026 around 07:00 UTC, coordinated with
the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Harry Sintonen
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
