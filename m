X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2906" "Tuesday" "4" "April" "2017" "17:09:25" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1704041708210.28052@tvnag.unkk.fr>" "90" "[oss-security] [SECURITY ADVISORY] curl: --write-out out of buffer read" "^Date:" nil nil "4" "2017040415:09:25" "[oss-security] [SECURITY ADVISORY] curl: --write-out out of buffer read" (number mark "        daniel@haxx. Apr  4   90/2906  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: --write-out out of buffer read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22325 invoked by uid 550); 4 Apr 2017 15:09:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22296 invoked from network); 4 Apr 2017 15:09:38 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1704041708210.28052@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Tue, 4 Apr 2017 17:09:25 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: --write-out out of buffer read
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

--write-out out of buffer read
==============================

Project curl Security Advisory, April 3, 2017 -
[Permalink](https://curl.haxx.se/docs/adv_20170403.html)

VULNERABILITY
-------------

There were two bugs in curl's parser for the command line option `--write-out`
(or `-w` for short) that would skip the end of string zero byte if the string
ended in a `%` (percent) or `\` (backslash), and it would read beyond that
buffer in the heap memory and it could then potentially output pieces of that
memory to the terminal or the target file etc.

The curl security team did not report this as a security vulnerability due to
the minimal risk: the memory this would output comes from the process the user
itself invokes and that runs with the same privileges as the user. We could
not come up with a likely scenario where this could leak other users' data or
memory contents.

An external party registered this as a [CVE with
mitre.org](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-7407) and
we feel a responsibility to clarify what this flaw is about. The CVE-2017-7407
issue is specifically only about the `%` part of this flaw.

This flaw only exists in the command line tool.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-7407 to this issue.

AFFECTED VERSIONS
-----------------

curl has supported this option since version 6.5 (released March 13, 2000).

This flaw exists in the following curl versions.

- Affected versions: 6.5 to and including 7.53.1
- Not affected versions: < 6.5 and >= 7.54.0

THE SOLUTION
------------

In version 7.54.0, the end of the buffer is properly acknowledged and we have
added tests that verify this functionality.

The curl project has (as of this writing) not yet released a version with this
problem fixed. It is however already fixed in curl's git repository, commits
[1890d59905414ab](https://github.com/curl/curl/commit/1890d59905414ab84a) and
[8e65877870c1](https://github.com/curl/curl/commit/8e65877870c1). The fix is
also available as a [stand-alone
patch](https://curl.haxx.se/CVE-2017-7407.patch).

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.54.0

  B - Apply the patch to your version and rebuild

  C - Do not use the `--write-out` feature with unchecked input

TIME LINE
---------

It was first reported to the curl project on March 10. The Mitre CVE
registration was [brought to our
attention](https://github.com/curl/curl/commit/1890d59905414ab84a35892b2e45833654aa5c13#commitc
omment-21618166) on April 4, 2017. The first commit to fix this was made
public on March 11.

curl 7.54.0 is to be released on April 19 2017

CREDITS
-------

Reported to the curl project by Brian Carpenter

-- 

  / daniel.haxx.se
