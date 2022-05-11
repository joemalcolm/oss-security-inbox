Received: (qmail 11481 invoked by uid 550); 11 May 2022 06:38:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11406 invoked from network); 11 May 2022 06:38:30 -0000
Date: Wed, 11 May 2022 08:38:18 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <82n3o7sq-n555-q6o1-323q-7p91921s93s1@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: percent-encoded path separator in URL
 host

percent-encoded path separator in URL host
==========================================

Project curl Security Advisory, May 11 2022 -
[Permalink](https://curl.se/docs/CVE-2022-27780.html)

VULNERABILITY
-------------

The curl URL parser wrongly accepts percent-encoded URL separators like '/'
when decoding the host name part of a URL, making it a *different* URL using
the wrong host name when it is later retrieved.

For example, a URL like `http://example.com%2F10.0.0.1/`, would be allowed by
the parser and get transposed into `http://example.com/10.0.0.1/`. This flaw
can be used to circumvent filters, checks and more.

We are not aware of any exploit of this flaw.

INFO
----

This flaw was introduced in [commit
9a8564a920188e](https://github.com/curl/curl/commit/9a8564a920188e), shipped
in curl 7.80.0 when curl added support for percent-encoded host names in URLs.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-27780 to this issue.

CWE-177: Improper Handling of URL Encoding

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.80.0 to and including 7.83.0
- Not affected versions: curl < 7.83.0 and curl >= 7.83.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

The URL parser now rejects host names that percent-decode into URL separator
characters.

A [fix for CVE-2022-27780](https://github.com/curl/curl/commit/914aaab9153764e)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.83.1

  B - Apply the patch to your local version

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
