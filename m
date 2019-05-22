X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2410" "Wednesday" "22" "May" "2019" "09:23:51" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "85" nil "^Date:" nil nil "5" nil nil (number mark "        daniel@haxx. May 22   85/2410  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Integer overflows in curl_url_set\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: Integer overflows in curl_url_set" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5245 invoked by uid 550); 22 May 2019 07:24:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5227 invoked from network); 22 May 2019 07:24:04 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1905201533020.21193@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 22 May 2019 09:23:51 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: Integer overflows in curl_url_set
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

Integer overflows in `curl_url_set()`
=====================================

Project curl Security Advisory, May 22nd 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-5435.html)

VULNERABILITY
-------------

libcurl contains two integer overflows in the `curl_url_set()` function that
if triggered, can lead to a too small buffer allocation and a subsequent heap
buffer overflow.

The flaws only exist on 32 bit architectures and require excessive string
input lengths.

We are not aware of any exploit of this flaw.

INFO
----

There are two entry points to this issue, on 32 bit architectures.

By asking libcurl to parse a string, passing in a string longer than 2GB to
this API: `curl_url_set(uh, CURLUPART_URL, "string", 0);` triggers the bug.

Asking libcurl to update a URL with a new string, and URL encoded it in the
process, by passing in a string longer than 1.33GB to this API:
`curl_url_set(uh, CURLUPART_*, "string", CURLU_URLENCODE);` triggers the bug.

This bug was introduced in August 2018 in
[commit fb30ac5a2d](https://github.com/curl/curl/commit/fb30ac5a2d63773c52).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-5435 to this issue.

CWE-131: Incorrect Calculation of Buffer Size

Severity: 3.7 (Low)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.62.0 to and including 7.64.1
- Not affected versions: libcurl < 7.62.0 and >= libcurl 7.65.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [fix for CVE-2019-5435](https://github.com/curl/curl/commit/5fc28510a4664f4) is already merged.

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.65.0

  B - Apply the patch to your version and rebuild

TIMELINE
--------

The issue was reported to the curl project on April 24, 2019. The patch was
communicated to the reporter on April 25, 2019. We contacted distros@openwall
on May 15.

curl 7.65.0 was released on May 22 2019, coordinated with the publication of
this advisory.

CREDITS
-------

Reported by Wenchao Li. Patch by Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se | Get the best commercial curl support there is - from me
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
