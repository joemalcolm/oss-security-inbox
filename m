X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2222" "Wednesday" "7" "September" "2016" "13:39:36" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1609071338210.787@tvnag.unkk.fr>" "75" "[oss-security] [SECURITY ADVISORY] curl: Incorrect reuse of client certificates" nil nil nil "9" "2016090711:39:36" "[oss-security] [SECURITY ADVISORY] curl: Incorrect reuse of client certificates" (number mark "U       daniel@haxx. Sep  7   75/2222  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Incorrect reuse of client certificates\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28379 invoked by uid 550); 7 Sep 2016 11:40:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28259 invoked from network); 7 Sep 2016 11:39:49 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 7 Sep 2016 13:39:36 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1609071338210.787@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: Incorrect reuse of client certificates

Incorrect reuse of client certificates 
======================================

Project cURL Security Advisory, September 7th 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20160907.html)

VULNERABILITY
-------------

libcurl built on top of NSS (Network Security Services) incorrectly re-used
client certificates if a certificate from file was used for one TLS connection
but no certificate set for a subsequent TLS connection.

While the symptoms are similar to CVE-2016-5420 (Re-using connection with wrong
client cert), this vulnerability was caused by an implementation detail of the
NSS backend in libcurl, which is orthogonal to the cause of CVE-2016-5420.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-7141 to this issue.

AFFECTED VERSIONS
-----------------

This flaw is present in curl and libcurl only if they are built with the
support for NSS and only if the libnsspem.so library is available at run-time.

- Affected versions: libcurl 7.19.6 to and including 7.50.1
- Not affected versions: libcurl >= 7.50.2

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A fix for this flaw is included in libcurl 7.50.2 via
[commit `curl-7_50_2~32`](https://github.com/curl/curl/commit/curl-7_50_2~32).
For older releases of libcurl there is a
[patch for CVE-2016-7141](https://curl.haxx.se/CVE-2016-7141.patch).

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Apply the patch on the source code of libcurl and rebuild.

  B - Configure libcurl to use a different TLS backend and rebuild.

  C - Use certificates from NSS database instead of loading them from files.

TIME LINE
---------

This flaw was reported by Red Hat on August 22nd.  The patch fixing the flaw
was published on September 5th.  CVE-2016-7141 was assigned to this flaw on
September 6th.  This advisory was published on September 7th.

CREDITS
-------

Reported by Red Hat.  Security advisory coordinated by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
