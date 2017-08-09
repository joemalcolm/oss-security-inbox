X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2503" "Wednesday" "9" "August" "2017" "08:05:47" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1708090803120.7715@tvnag.unkk.fr>" "85" "[oss-security] [SECURITY ADVISORY] curl: TFTP sends more than buffer size" nil nil nil "8" "2017080906:05:47" "[oss-security] [SECURITY ADVISORY] curl: TFTP sends more than buffer size" (number mark "U       daniel@haxx. Aug  9   85/2503  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TFTP sends more than buffer size\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11954 invoked by uid 550); 9 Aug 2017 06:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11761 invoked from network); 9 Aug 2017 06:06:00 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 9 Aug 2017 08:05:47 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1708090803120.7715@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TFTP sends more than buffer size

TFTP sends more than buffer size
================================

Project curl Security Advisory, August 9th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_20170809B.html)

VULNERABILITY
-------------

When doing a TFTP transfer and curl/libcurl is given a URL that contains a
very long file name (longer than about 515 bytes), the file name is truncated
to fit within the buffer boundaries, but the buffer size is still wrongly
updated to use the untruncated length. This too large value is then used in
the `sendto()` call, making curl attempt to send more data than what is
actually put into the buffer. The `sendto()` function will then read beyond
the end of the heap based buffer.

A malicious HTTP(S) server could redirect a vulnerable libcurl-using client to
a crafted TFTP URL (if the client hasn't restricted which protocols it allows
redirects to) and trick it to send private memory contents to a remote server
over UDP. Limit curl's redirect protocols with `--proto-redir` and libcurl's
with `CURLOPT_REDIR_PROTOCOLS`.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-1000100 to this issue.

AFFECTED VERSIONS
-----------------

This bug has been present in curl since TFTP support was added, in September
2005 (commit [56d9624b566](https://github.com/curl/curl/commit/56d9624b566)).

- Affected versions: libcurl 7.15.0 to and including 7.54.1
- Not affected versions: libcurl < 7.15.0 and >= 7.55.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

The function now returns error if attempting to send a file name that is too
long to fit in the TFTP packet.

A [patch for CVE-2017-1000100](https://curl.haxx.se/CVE-2017-1000100.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.55.0

  B - Apply the patch to your version and rebuild

  C - Disable TFTP or otherwise restrict TFTP transfers

TIME LINE
---------

It was reported to the curl project on July 11, 2017. We contacted
distros@openwall on August 1.

libcurl 7.55.0 was released on August 9 2017, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Even Rouault. Discovery: credit to OSS-Fuzz. Patch by Daniel
Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
