Received: (qmail 20294 invoked by uid 550); 17 May 2023 06:41:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20236 invoked from network); 17 May 2023 06:41:17 -0000
Date: Wed, 17 May 2023 08:41:05 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <9o58s92-22n-48p5-5p37-234s3r70np67@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] curl: CVE-2023-28320: siglongjmp race condition

siglongjmp race condition
=========================

Project curl Security Advisory, May 17th 2023 -
[Permalink](https://curl.se/docs/CVE-2023-28320.html)

VULNERABILITY
-------------

libcurl provides several different backends for resolving host names, selected
at build time. If it is built to use the synchronous resolver, it allows name
resolves to time-out slow operations using `alarm()` and `siglongjmp()`.

When doing this, libcurl used a global buffer that was not mutex protected and
a multi-threaded application might therefore crash or otherwise misbehave.

INFO
----

Most platforms and systems build libcurl to use the threaded resolver or with
c-ares, neither of those suffer from this flaw. Most platforms that build with
the synchronous resolver don't feature `alarm()` and `siglongjmp()` and
therefor are not vulnerable either.

Since `alarm()` uses signals, it is not advisable to use in a multi-threaded
environment (signals and threads rarely mix very well) which reduces the risk
that this flaw hurts many users.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2023-28320 to this issue.

CWE-662: Improper Synchronization

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.9.8 to and including 8.0.1
- Not affected versions: curl < 7.9.8 and curl >= 8.1.0
- Introduced-in: https://github.com/curl/curl/commit/3c49b405de4fbf1f

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

The fix is to only support this timeout ability if curl has and can properly
mutex protect the buffer.

- Fixed-in: https://github.com/curl/curl/commit/13718030ad4b3209a7583b

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.1.0

  B - Apply the patch to your local version

  C - Do not use the synchronous name resolver option

TIMELINE
--------

This issue was reported to the curl project on April 2 2023. We contacted
distros@openwall on May 9, 2023.

curl 8.1.0 was released on May 17 2023, coordinated with the publication of
this advisory.

CREDITS
-------

- Reported-by: Harry Sintonen
- Patched-by: Harry Sintonen, Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
