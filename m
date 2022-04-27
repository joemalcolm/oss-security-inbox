Received: (qmail 8044 invoked by uid 550); 27 Apr 2022 06:43:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7972 invoked from network); 27 Apr 2022 06:43:08 -0000
Date: Wed, 27 Apr 2022 08:42:57 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <827s9p32-qo7-954s-8pqr-n8p7sp55q242@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl bad local IPv6 connection reuse

Bad local IPv6 connection reuse
===============================

Project curl Security Advisory, April 27 2022 -
[Permalink](https://curl.se/docs/CVE-2022-27775.html)

VULNERABILITY
-------------

libcurl keeps previously used connections in a connection pool for subsequent
transfers to reuse, if one of them matches the setup.

Due to errors in the logic, the config matching function did not take the IPv6
address zone id into account which could lead to libcurl reusing the wrong
connection when one transfer uses a zone id and a subsequent transfer uses
another (or no) zone id.

We are not aware of any exploit of this flaw.

INFO
----

Zone ids are only used for non-global scoped IPv6 addresses and they are only
used when specifying the address numerically.

This flaw has existed in curl since commit [2d0e9b40d3237b1](https://github.com/curl/curl/commit/2d0e9b40d3237b1), shipped in libcurl 7.65.0, released on May 22 2019. Previous versions will
instead not accept URLs with zone ids.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-27775 to this issue.

CWE-200: Exposure of Sensitive Information to an Unauthorized Actor

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.65.0 to and including 7.82.0
- Not affected versions: curl < 7.65.0 and curl >= 7.83.0

Also note that libcurl is used by many applications, and not always advertised
as such.

THE SOLUTION
------------

A [fix for CVE-2022-27775](https://github.com/curl/curl/commit/058f98dc3fe595f21dc26)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.83.0

  B - Apply the patch to your local version

  C - Do not use non-global numerical IPv6 addresses in URLs to curl

TIMELINE
--------

This issue was reported to the curl project on April 21, 2022. We contacted
distros@openwall on April 21.

libcurl 7.83.0 was released on April 27 2022, coordinated with the publication
of this advisory.

CREDITS
-------

This issue was reported by Harry Sintonen. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
