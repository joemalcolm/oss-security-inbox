X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1664" "Tuesday" "20" "June" "2017" "08:09:39" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1706200808380.17390@tvnag.unkk.fr>" "68" "[oss-security] [SECURITY ADVISORY] c-ares NAPTR parser out of bounds access" nil nil nil "6" "2017062006:09:39" "[oss-security] [SECURITY ADVISORY] c-ares NAPTR parser out of bounds access" (number mark "U       daniel@haxx. Jun 20   68/1664  " thread-indent "\"[oss-security] [SECURITY ADVISORY] c-ares NAPTR parser out of bounds access\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7171 invoked by uid 550); 20 Jun 2017 06:09:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6064 invoked from network); 20 Jun 2017 06:09:52 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Tue, 20 Jun 2017 08:09:39 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: c-ares development <c-ares@cool.haxx.se>, oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1706200808380.17390@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] c-ares NAPTR parser out of bounds access

c-ares NAPTR parser out of bounds access
========================================

Project c-ares Security Advisory, June 20, 2017 -
[Permalink](https://c-ares.haxx.se/adv_20170620.html)

VULNERABILITY
-------------

The c-ares function `ares_parse_naptr_reply()`, which is used for parsing
NAPTR responses, could be triggered to read memory outside of the given input
buffer if the passed in DNS response packet was crafted in a particular way.

We are not aware of any exploits of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-1000381 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following c-ares versions.

- Affected versions: c-ares 1.8.0 to and including 1.12.0
- Not affected versions: c-ares >= 1.13.0

THE SOLUTION
------------

In version 1.13.0, the `RR_len` value gets checked properly and the function
is also added to the fuzz testing. It was previously accidentally left out
from that.

A [patch for CVE-2017-1000381](https://c-ares.haxx.se/CVE-2017-1000381.patch)
is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade c-ares to version 1.13.0

  B - Apply the patch to your version and rebuild

  C - Do not use `ares_parse_naptr_reply()`.

TIME LINE
---------

It was reported to the c-ares project on May 20. We contacted distros@openall
on June 16.

c-ares 1.13.0 was released on June 20 2017, coordinated with the publication
of this advisory.

CREDITS
-------

Thanks to LCatro for the report and to David Drysdale for the fix.

-- 

  / daniel.haxx.se
