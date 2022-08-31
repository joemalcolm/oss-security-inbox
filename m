Received: (qmail 13505 invoked by uid 550); 31 Aug 2022 06:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13487 invoked from network); 31 Aug 2022 06:31:56 -0000
Date: Wed, 31 Aug 2022 08:31:44 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <8r186sn8-2orp-3n38-nno4-9o8n23n6s069@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] CVE-2022-35252: control code in cookie denial
 of service (curl)

CVE-2022-35252: control code in cookie denial of service
========================================================

Project curl Security Advisory, August 31 2022 -
[Permalink](https://curl.se/docs/CVE-2022-35252.html)

VULNERABILITY
-------------

When curl retrieves and parses cookies from an HTTP(S) server, it accepts
cookies using control codes (byte values below 32). When cookies that contain
such control codes are later sent back to an HTTP(S) server, it might make the
server return a 400 response. Effectively allowing a "sister site" to deny
service to siblings.

We are not aware of any exploit of this flaw.

INFO
----

This flaw in the code was initially introduced in curl 4.9 but HTTP(S) servers
back then did not generally reject requests using control codes so this
mistake did not actually cause problems until HTTP(S) servers started doing
this much later. Different server implementations of course doing it at
different times (with some also still accepting them just fine).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-35252 to this issue.

CWE-1286: Improper Validation of Syntactic Correctness of Input

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 4.9 to and including 7.84.0
- Not affected versions: curl < 4.9 and curl >= 7.85.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

[fix for CVE-2022-35252](https://github.com/curl/curl/commit/8dfc93e573ca740544a2d79ebb)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.85.0

  B - Apply the patch to your local version

  C - Do not enable the cookie engine

TIMELINE
--------

This issue was reported to the curl project on June 26, 2022. We contacted
distros@openwall on August 22.

libcurl 7.85.0 was released on August 31 2022, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Axel Chong
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
