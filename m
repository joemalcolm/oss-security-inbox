X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2711" "Wednesday" "4" "October" "2017" "08:06:26" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1710040802440.5528@tvnag.unkk.fr>" "89" "[oss-security] [SECURITY ADVISORY] curl: FTP PWD response parser out of bounds read" "^Date:" nil nil "10" "2017100406:06:26" "[oss-security] [SECURITY ADVISORY] curl: FTP PWD response parser out of bounds read" (number mark "U       daniel@haxx. Oct  4   89/2711  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: FTP PWD response parser out of bounds read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13847 invoked by uid 550); 4 Oct 2017 06:06:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13807 invoked from network); 4 Oct 2017 06:06:38 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1710040802440.5528@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 4 Oct 2017 08:06:26 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: FTP PWD response parser out of bounds
 read
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

FTP PWD response parser out of bounds read
==========================================

Project curl Security Advisory, October 4th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_20171004.html)

VULNERABILITY
-------------

libcurl may read outside of a heap allocated buffer when doing FTP.

When libcurl connects to an FTP server and successfully logs in (anonymous or
not), it asks the server for the current directory with the `PWD` command. The
server then responds with a 257 response containing the path, inside double
quotes. The returned path name is then kept by libcurl for subsequent uses.

Due to a flaw in the string parser for this directory name, a directory name
passed like this but without a closing double quote would lead to libcurl not
adding a trailing NUL byte to the buffer holding the name. When libcurl would
then later access the string, it could read beyond the allocated heap buffer
and crash or wrongly access data beyond the buffer, thinking it was part of
the path.

A malicious server could abuse this fact and effectively prevent libcurl-based
clients to work with it - the PWD command is always issued on new FTP
connections and the mistake has a high chance of causing a segfault.

The simple fact that this issue has remained undiscovered for this long could
suggest that malformed PWD responses are rare in benign servers.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in commit
[415d2e7cb7](https://github.com/curl/curl/commit/415d2e7cb7), March 2005.

In libcurl version 7.56.0, the parser always zero terminates the string but
also rejects it if not terminated properly with a final double quote.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-1000254 to this issue.

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.7 to and including 7.55.1
- Not affected versions: libcurl < 7.7 and >= 7.56.0

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [patch for CVE-2017-1000254](https://curl.haxx.se/CVE-2017-1000254.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.56.0

  B - Apply the patch to your version and rebuild

  C - Switch off FTP in `CURLOPT_PROTOCOLS`

TIME LINE
---------

It was reported to the curl project on September 24, 2017.  We contacted
distros@openwall on September 25.

curl 7.56.0 was released on October 4 2017, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Max Dymond. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
