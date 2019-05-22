X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2439" "Wednesday" "22" "May" "2019" "09:24:16" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "87" nil "^Date:" nil nil "5" nil nil (number mark "        daniel@haxx. May 22   87/2439  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TFTP receive buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: TFTP receive buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9478 invoked by uid 550); 22 May 2019 07:24:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9406 invoked from network); 22 May 2019 07:24:29 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1905201533410.21193@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 22 May 2019 09:24:16 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: TFTP receive buffer overflow
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

TFTP receive buffer overflow
============================

Project curl Security Advisory, May 22nd 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-5436.html)

VULNERABILITY
-------------

libcurl contains a heap buffer overflow in the function
(`tftp_receive_packet()`) that recevives data from a TFTP server. It calls
`recvfrom()` with the default size for the buffer rather than with the size
that was used to allocate it. Thus, the content that might overwrite the heap
memory is entirely controlled by the server.

The flaw exists if the user selects to use a "blksize" of 504 or smaller
(default is 512). The smaller size that is used, the larger the possible
overflow becomes.

Users chosing a smaller size than default should be rare as the primary use
case for changing the size is to make it larger.

It is rare for users to use TFTP across the Internet. It is most commonly used
within local networks.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in January 2009 in 
[commit 0516ce7786e95](https://github.com/curl/curl/commit/0516ce7786e95).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-5436 to this issue.

CWE-122: Heap-based Buffer Overflow

Severity: 1.8 (Low)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.19.4 to and including 7.64.1
- Not affected versions: libcurl < 7.19.4 and >= libcurl 7.65.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [fix for CVE-2019-5436](https://github.com/curl/curl/commit/2576003415625d7b5f0e390902f8097830b82275)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.65.0

  B - Apply the patch to your version and rebuild

  C - do not use TFTP with curl

TIMELINE
--------

The issue was reported to the curl project on April 29, 2019. The patch was
communicated to the reporter on April 29, 2019. We contacted distros@openwall
on May 15.

curl 7.65.0 was released on May 22 2019, coordinated with the publication of
this advisory.

CREDITS
-------

Reported by l00p3r. Patch by Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se | Get the best commercial curl support there is - from me
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
