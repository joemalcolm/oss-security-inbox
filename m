X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2592" "Wednesday" "5" "September" "2018" "07:55:21" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1809041916060.14115@tvnag.unkk.fr>" "89" "[oss-security] [SECURITY ADVISORY] curl: NTLM password overflow via integer overflow" "^Date:" nil nil "9" "2018090505:55:21" "[oss-security] [SECURITY ADVISORY] curl: NTLM password overflow via integer overflow" (number mark "        daniel@haxx. Sep  5   89/2592  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: NTLM password overflow via integer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15726 invoked by uid 550); 5 Sep 2018 05:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15708 invoked from network); 5 Sep 2018 05:55:34 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1809041916060.14115@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 5 Sep 2018 07:55:21 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: NTLM password overflow via integer
 overflow
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

NTLM password overflow via integer overflow
===========================================

Project curl Security Advisory, September 5th 2018 -
[Permalink](https://curl.haxx.se/docs/CVE-2018-14618.html)

VULNERABILITY
-------------

libcurl contains a buffer overrun in the NTLM authentication code.

The internal function `Curl_ntlm_core_mk_nt_hash` multiplies the `length` of
the password by two (SUM) to figure out how large temporary storage area to
allocate from the heap.

The `length` value is then subsequently used to iterate over the password and
generate output into the allocated storage buffer. On systems with a 32 bit
`size_t`, the math to calculate SUM triggers an integer overflow when the
password length exceeds 2GB (2^31 bytes). This integer overflow usually causes
a very small buffer to actually get allocated instead of the intended very
huge one, making the use of that buffer end up in a heap buffer overflow.

(This bug is almost identical to
[CVE-2017-8816](https://curl.haxx.se/docs/CVE-2017-8816.html).)

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in commit
[be285cde3f](https://github.com/curl/curl/commit/be285cde3f), April 2006.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-14618 to this issue.

CWE-131: Incorrect Calculation of Buffer Size

AFFECTED VERSIONS
-----------------

This issue is only present on 32 bit systems. It also requires the password
field to use more than 2GB of memory, which should be rare.

- Affected versions: libcurl 7.15.4 to and including 7.61.0
- Not affected versions: libcurl < 7.15.4 and >= 7.61.1

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In libcurl version 7.61.1, the integer overflow is avoided.

A [patch for
CVE-2018-14618](https://github.com/curl/curl/commit/57d299a499155d4b327e341c6024e293b0418243.patch)
is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.61.1

  B - Apply the patch to your version and rebuild

  C - Put length restrictions on the password you can pass to libcurl

TIME LINE
---------

It was [publicly reported](https://github.com/curl/curl/issues/2756) to the
curl project on July 18, 2018.  We contacted distros@openwall on August 27.

curl 7.61.1 was released on September 5 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Zhaoyang Wu. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
