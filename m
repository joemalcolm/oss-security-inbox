X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1792" "Wednesday" "31" "October" "2018" "07:55:42" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1810310753500.4385@tvnag.unkk.fr>" "76" "[oss-security] [SECURITY ADVISORY] curl - use-after-free in handle close" nil nil nil "10" "2018103106:55:42" "[oss-security] [SECURITY ADVISORY] curl - use-after-free in handle close" (number mark "U       daniel@haxx. Oct 31   76/1792  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl - use-after-free in handle close\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23811 invoked by uid 550); 31 Oct 2018 06:55:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23735 invoked from network); 31 Oct 2018 06:55:56 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 31 Oct 2018 07:55:42 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1810310753500.4385@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl - use-after-free in handle close

use-after-free in handle close
==============================

Project curl Security Advisory, October 31st 2018 -
[Permalink](https://curl.haxx.se/docs/CVE-2018-16840.html)

VULNERABILITY
-------------

libcurl contains a heap use-after-free flaw in code related to closing an easy
handle.

When closing and cleaning up an "easy" handle in the `Curl_close()` function,
the library code first frees a struct (without nulling the pointer) and might
then subsequently erroneously write to a struct field within that already
freed struct.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in [commit
b46cfbc068](https://github.com/curl/curl/commit/b46cfbc068), February 2018.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-16840 to this issue.

CWE-416: Use After Free

Severity: 2.3 (Low)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.59.0 to and including 7.61.1
- Not affected versions: libcurl < 7.59.0 and >= 7.62.0

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [patch for
CVE-2018-16840](https://github.com/curl/curl/commit/81d135d67155c5295b1033679c606165d4e28f3f)
is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.62.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was reported to the curl project on October 14, 2018.  We contacted
distros@openwall on October 22.

curl 7.62.0 was released on October 31 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Brian Carpenter, Geeknik Labs. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
