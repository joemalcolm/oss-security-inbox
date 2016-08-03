X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2300" "Wednesday" "3" "August" "2016" "09:05:22" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1608030900410.2418@tvnag.unkk.fr>" "82" "[oss-security] [SECURITY VULNERABILITY] curl: TLS session resumption client cert bypass " nil nil nil "8" "2016080307:05:22" "[oss-security] [SECURITY VULNERABILITY] curl: TLS session resumption client cert bypass" (number mark "U       daniel@haxx. Aug  3   82/2300  " thread-indent "\"[oss-security] [SECURITY VULNERABILITY] curl: TLS session resumption client cert bypass \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5710 invoked by uid 550); 3 Aug 2016 07:05:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5692 invoked from network); 3 Aug 2016 07:05:35 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 3 Aug 2016 09:05:22 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1608030900410.2418@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY VULNERABILITY] curl: TLS session resumption client cert
 bypass 

TLS session resumption client cert bypass
=========================================

Project cURL Security Advisory, August 3rd 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20160803A.html)

VULNERABILITY
-------------

libcurl would attempt to resume a TLS session even if the client certificate
had changed. That is unacceptable since a server by specification is allowed
to skip the client certificate check on resume, and may instead use the old
identity which was established by the previous certificate (or no
certificate).

libcurl supports by default the use of TLS session id/ticket to resume
previous TLS sessions to speed up subsequent TLS handshakes. They are used
when for any reason an existing TLS connection couldn't be kept alive to make
the next handshake faster.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-5419 to this issue.

AFFECTED VERSIONS
-----------------

This flaw is relevant for all versions of curl and libcurl that support TLS
and client certificates.

- Affected versions: libcurl 7.1 to and including 7.50.0
- Not affected versions: libcurl >= 7.50.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.50.1, TLS session resumption is disabled when a client certificate
is used so that a subsequent connection attempt to the same server cannot risk
getting a previously authenticated session resumed.

A [patch for CVE-2016-5419](https://curl.haxx.se/CVE-2016-5419.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.50.1

  B - Apply the patch to your version and rebuild

  C - Set `CURLOPT_SSL_SESSIONID_CACHE` to 0L when using client certificates

TIME LINE
---------

It was first reported to the curl project in April 2016 by Bru Rom. We
contacted distros@openwall on July 31.

libcurl 7.50.1 was released on August 3 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Contributions by Eric Rescorla and Ray Satiro. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
