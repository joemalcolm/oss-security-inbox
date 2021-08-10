X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2238" "Tuesday" "10" "August" "2021" "08:19:32" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "90" "[oss-security] [SECURITY ADVISORY] c-ares: Missing input validation on hostnames returned by DNS servers" nil nil nil "8" nil nil (number mark "U       daniel@haxx. Aug 10   90/2238  " thread-indent "\"[oss-security] [SECURITY ADVISORY] c-ares: Missing input validation on hostnames returned by DNS servers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] c-ares: Missing input validation on hostnames returned by DNS servers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28582 invoked by uid 550); 10 Aug 2021 06:19:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28552 invoked from network); 10 Aug 2021 06:19:43 -0000
Date: Tue, 10 Aug 2021 08:19:32 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: c-ares development <c-ares@cool.haxx.se>, oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2108100817550.28722@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] c-ares: Missing input validation on hostnames
 returned by DNS servers

Missing input validation on hostnames returned by DNS servers
=============================================================

Project c-ares Security Advisory, August 10, 2021 -
[Permalink](https://c-ares.haxx.se/adv_20210810.html)

VULNERABILITY
-------------

Missing input validation of host names returned by Domain Name Servers in
the c-ares library can lead to output of wrong hostnames (leading to Domain
Hijacking).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-3672 to this issue.


STEPS TO REPRODUCE
------------------

An example domain which has a cname including a zero byte:

```
$ adig cnamezero.test2.xdi-attack.net

Answers:
      cnamezero.test2.xdi-attack.net. 0 CNAME 
victim.test2.xdi-attack.net\000.test2.xdi-attack.net.
      victim.test2.xdi-attack.net\000.test2.xdi-attack.net. 0 A 141.12.174.88
```

When resolved via a vulnerable implementation, the CNAME alias and name of the
A record will seem to be `victim.test2.xdi-attack.net` instead of
`victim.test2.xdi-attack.net\000.test2.xdi-attack.net`, a totally different
domain.

This is a clear error in zero-byte handling and can potentially lead to
DNS-cache injections in case an application implements a cache based on the
library.


AFFECTED VERSIONS
-----------------

This flaw exists in the following c-ares versions.

- Affected versions: c-ares 1.0.0 to and including 1.17.1
- Not affected versions: c-ares >= 1.17.2


THE SOLUTION
------------

In version 1.17.2, the function has been corrected and a test case have been
added to verify.

A [patch for
CVE-2021-3672](https://github.com/c-ares/c-ares/compare/809d5e8..44c009b.patch)
is available.


RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

   A - Upgrade c-ares to version 1.17.2

   B - Apply the patch to your version and rebuild


TIME LINE
---------

It was reported to the c-ares project on June 11, 2021 by Philipp Jeitner and
Haya Shulman, Fraunhofer SIT.

c-ares 1.17.2 was released on August 10 2021, coordinated with the publication
of this advisory.


CREDITS
-------

Thanks to Philipp Jeitner and Haya Shulman, Fraunhofer SIT for the report.

-- 

  / daniel.haxx.se
