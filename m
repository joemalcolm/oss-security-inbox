Received: (qmail 5985 invoked by uid 550); 11 May 2022 06:37:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5899 invoked from network); 11 May 2022 06:37:48 -0000
Date: Wed, 11 May 2022 08:37:37 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <qq67po5s-55n3-25r-n716-p9696o74n88r@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: cookie for trailing dot TLD

cookie for trailing dot TLD
===========================

Project curl Security Advisory, May 11 2022 -
[Permalink](https://curl.se/docs/CVE-2022-27779.html)

VULNERABILITY
-------------

libcurl wrongly allows HTTP cookies to be set for Top Level Domains (TLDs) if
the host name is provided with a trailing dot.

curl can be told to receive and send cookies when communicating using
HTTP(S). curl's "cookie engine" can be built with or without [Public Suffix
List](https://publicsuffix.org/) awareness. If PSL support not provided, a
more rudimentary check exists to at least prevent cookies from being set on
TLDs. This check was broken if the host name in the URL uses a trailing dot.

This can allow arbitrary sites to set cookies that then would get sent to a
different and unrelated site or domain.

We are not aware of any exploit of this flaw.

INFO
----

This vulnerability only exists when curl is built without
[libpsl](https://rockdaboot.github.io/libpsl/). Without this PSL support
built-in, curl is also destined to possibly leak cookies cross sites simply
due to how public suffixes work.

This flaw was introduced in [commit
b27ad8e1d3e68e](https://github.com/curl/curl/commit/b27ad8e1d3e68e), shipped
in curl 7.82.0 when the treatment of trailing dot host names was changed.

This flaw is similar to
[CVE-2014-3620](https://curl.se/docs/CVE-2014-3620.html), although in 2014
curl did not have PSL support.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-27779 to this issue.

CWE-201: Information Exposure Through Sent Data

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.82.0 to and including curl 7.83.0
- Not affected versions: curl < 7.82.0 and curl >= 7.83.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2022-27779](https://github.com/curl/curl/commit/7e92d12b4e6911f)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.83.1

  B - Apply the patch to your local version

  C - Build libcurl with libpsl support

  D - Do not use cookies

TIMELINE
--------

This issue was reported to the curl project on April 28, 2022. We contacted
distros@openwall on May 5.

libcurl 7.83.1 was released on May 11 2022, coordinated with the publication
of this advisory.

CREDITS
-------

This issue was reported by Axel Chong. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
