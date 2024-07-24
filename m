Received: (qmail 9420 invoked by uid 550); 24 Jul 2024 06:35:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9380 invoked from network); 24 Jul 2024 06:35:37 -0000
Date: Wed, 24 Jul 2024 08:35:28 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <61s36630-o1op-2n3n-p8p0-1783354q5602@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2024-6874: macidn punycode buffer
 overread

macidn punycode buffer overread
===============================

Project curl Security Advisory, July 24th 2024 -
[Permalink](https://curl.se/docs/CVE-2024-6874.html)

VULNERABILITY
-------------

libcurl's URL API function
[curl_url_get()](https://curl.se/libcurl/c/curl_url_get.html) offers punycode
conversions, to and from IDN. Asking to convert a name that is exactly 256
bytes, libcurl ends up reading outside of a stack based buffer when built to
use the *macidn* IDN backend. The conversion function then fills up the
provided buffer exactly - but does not null terminate the string.

This flaw can lead to stack contents accidently getting returned as part of
the converted string.

INFO
----

This bug was introduced curl 8.8.0 release and is considered a *C mistake*
(likely to have been avoided had we not been using C).

This flaw does not affect the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2024-6874 to this issue.

CWE-126: Buffer Over-read

Severity: Low

AFFECTED VERSIONS
-----------------

The vulnerable code can only be reached when curl is built to use macidn, the
native IDN conversion library bundled with Apple's operating systems: macOS,
iOS, ipadOS etc. Builds using other IDN backends are not vulnerable.

- Affected version: curl 8.8.0
- Not affected versions: curl < 8.8.0 and >= 8.9.0
- Introduced-in: https://github.com/curl/curl/commit/add22feeef07858307be57

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

- Fixed-in: https://github.com/curl/curl/commit/686d54baf1df6e0775

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.9.0

  B - Apply the patch to your version and rebuild

  C - Build your libcurl with an unaffected IDN backend

TIMELINE
---------

This issue was reported to the curl project on July 16, 2024.

curl 8.9.0 was released on July 24 2024 around 06:00 UTC, coordinated with
the publication of this advisory.

CREDITS
-------

- Reported-by: z2_
- Patched-by: z2_

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
