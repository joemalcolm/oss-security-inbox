Received: (qmail 7883 invoked by uid 550); 6 Dec 2023 07:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7853 invoked from network); 6 Dec 2023 07:29:18 -0000
Date: Wed, 6 Dec 2023 08:29:10 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <44rno294-n080-r594-2r8n-1146rr47nr5r@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: cookie mixed case PSL bypass

cookie mixed case PSL bypass
============================

Project curl Security Advisory, December 6 2023 -
[Permalink](https://curl.se/docs/CVE-2023-46218.html)

VULNERABILITY
-------------

This flaw allows a malicious HTTP server to set "super cookies" in curl that
are then passed back to more origins than what is otherwise allowed or
possible. This allows a site to set cookies that then would get sent to
different and unrelated sites and domains.

It could do this by exploiting a mixed case flaw in curl's function that
verifies a given cookie domain against the Public Suffix List (PSL). For
example a cookie could be set with `domain=co.UK` when the URL used a
lowercase hostname `curl.co.uk`, even though `co.uk` is listed as a PSL
domain.

INFO
----

When curl is built without PSL support, it cannot protect against this problem
but it is expected to not allow "too wide" cookies when PSL support is
enabled.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2023-46218 to this issue.

CWE-201: Information Exposure Through Sent Data

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.46.0 to and including 8.4.0
- Not affected versions: curl < 7.46.0 and >= 8.5.0
- Introduced-in: https://github.com/curl/curl/commit/e77b5b7453c1e8c

libcurl is used by many applications, but not always advertised as such!

This flaw is also accessible using the curl command line tool.

SOLUTION
------------

Starting in curl 8.5.0, the code lowercases both strings before checks.

- Fixed-in: https://github.com/curl/curl/commit/2b0994c29a721c91c57

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.5.0

  B - Apply the patch to your local version

  C - Do not use cookies

TIMELINE
--------

This issue was reported to the curl project on October 16, 2023. We contacted
distros@openwall on November 28, 2023.

curl 8.5.0 was released on December 6 2023, coordinated with the publication
of this advisory.

CREDITS
-------

- Reported-by: Harry Sintonen
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
