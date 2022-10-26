Received: (qmail 13500 invoked by uid 550); 26 Oct 2022 06:26:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13441 invoked from network); 26 Oct 2022 06:26:54 -0000
Date: Wed, 26 Oct 2022 08:26:39 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <p640o2q7-363s-36q2-1n4q-7q204o9qnp5n@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] CVE-2022-35260: .netrc parser out-of-bounds
 access (curl)

CVE-2022-35260: .netrc parser out-of-bounds access
==================================================

Project curl Security Advisory, October 26 2022 -
[Permalink](https://curl.se/docs/CVE-2022-35260.html)

VULNERABILITY
-------------

curl can be told to parse a `.netrc` file for credentials. If that file ends
in a line with consecutive non-white space letters and no newline, curl could
read past the end of the stack-based buffer, and if the read works, write a
zero byte possibly beyond its boundary.

This will in most cases cause a segfault or similar, but circumstances might
also cause different outcomes.

If a malicious user can provide a custom netrc file to an application or
otherwise affect its contents, this flaw could be used as denial-of-service.

We are not aware of any exploit of this flaw.

INFO
----

The flaw was introduced in curl with [this
commit](https://github.com/curl/curl/commit/eeaae10c0fb27aa06), first shipped
in curl 7.84.0.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-35260 to this issue.

CWE-121: Stack-based Buffer Overflow

Severity: low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.84.0 to and including 7.85.0
- Not affected versions: curl < 7.84.0 and >= 7.86.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

[The fix for CVE-2022-35260](https://github.com/curl/curl/commit/c97ec984fb2bc919a3aa86)

RECOMMENDATIONS
---------------

  A - Upgrade curl to version 7.86.0

  B - Apply the patch to your local version

  C - Do not use `.netrc` files

TIMELINE
--------

This issue was reported to the curl project on October 3, 2022. We contacted
distros@openwall on October 18, 2022.

libcurl 7.86.0 was released on October 26 2022, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Hiroki Kurosawa
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
