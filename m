X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2757" "Wednesday" "11" "September" "2019" "08:01:09" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1909102024100.29885@tvnag.unkk.fr>" "91" "[oss-security] [SECURITY ADVISORY] curl: TFTP small blocksize heap buffer overflow" nil nil nil "9" "2019091106:01:09" "[oss-security] [SECURITY ADVISORY] curl: TFTP small blocksize heap buffer overflow" (number mark "U       daniel@haxx. Sep 11   91/2757  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TFTP small blocksize heap buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: TFTP small blocksize heap buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1075 invoked by uid 550); 11 Sep 2019 06:01:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32734 invoked from network); 11 Sep 2019 06:01:23 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 11 Sep 2019 08:01:09 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1909102024100.29885@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TFTP small blocksize heap buffer
 overflow

TFTP small blocksize heap buffer overflow
=========================================

Project curl Security Advisory, September 11th 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-5482.html)

VULNERABILITY
-------------

libcurl contains a heap buffer overflow in the function
(`tftp_receive_packet()`) that receives data from a TFTP server. It can call
`recvfrom()` with the default size for the buffer rather than with the size
that was used to allocate it. Thus, the content that might overwrite the heap
memory is controlled by the server.

This flaw is only triggered if the TFTP server sends an OACK without the BLKSIZE
option, when a BLKSIZE smaller than 512 bytes was requested by the TFTP client.
OACK is a TFTP extension and is not used by all TFTP servers.

Users choosing a smaller block size than default should be rare as the primary
use case for changing the size is to make it larger.

It is rare for users to use TFTP across the Internet. It is most commonly used
within local networks. TFTP as a protocol is always inherently insecure.

This issue was introduced by the add of the TFTP BLKSIZE option handling. It
was previously incompletely fixed by an almost identical issue called
CVE-2019-5436.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in January 2009 in [commit
0516ce7786e9500c2e44](https://github.com/curl/curl/commit/0516ce7786e9500c2e44).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-5482 to this issue.

CWE-122: Heap-based Buffer Overflow

Severity: 5.2 (Medium)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl >= 7.19.4 to and including 7.65.3
- Not affected versions: libcurl < 7.19.4

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [fix for CVE-2019-5482](https://github.com/curl/curl/commit/facb0e4662415b5f28163e853dc6742ac5fafb3d)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.66.0

  B - Apply the patch to your version and rebuild

  C - do not use TFTP with curl with smaller than the default BLKSIZE

TIMELINE
--------

The issue was reported to the curl project on August 29, 2019. The fix was done,
verified and communicated with the reporter on September 2, 2019.

We contacted distros@openwall on September 5.

This advisory was posted on September 11th 2019.

CREDITS
-------

Reported and patched by Thomas Vegas.

Thanks a lot!

-- 

  / daniel.haxx.se | Get the best commercial curl support there is - from me
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
