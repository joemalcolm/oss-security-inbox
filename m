Received: (qmail 12009 invoked by uid 550); 29 Apr 2026 06:01:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11982 invoked from network); 29 Apr 2026 06:01:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442452; bh=32jqBgUuXUnGQ+QHDBQxL7PQ8QEGo2bgcG3yyje55Tg=;
	h=Date:From:To:Subject:From;
	b=HT0mgIm9LMjX1wXYxar0zBYoTRsFb+PLJuzYspLJwqi+taf2ifRch8XduZq4668Ft
	 QQ/xgn+xX7SI8VjCQtS3mcvl3ezFYoKBYNaXFdOgZ6gvgk4g2ND1PaqdShSmyfKJDj
	 3ADgYrRr3NbmNgzRs87ZPUZT3x2iRU75D00OLLmlxu9T9AEljtsuZmNbakXD4YpD55
	 V8996kebVglK7ABQy7gvzEAtLV5DE3mK7tDa1ydYIT9XUXsWKJfFZ9wXcdqR/Hhu17
	 f68dyekuRhuHqQc18nbayPV05h4ULHPNKzvWJ2R07eHd4FtsDWs1TfeMHVq5v4GBIR
	 TNXJbgwG1ykgg==
Date: Wed, 29 Apr 2026 08:00:52 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <9q402657-2253-sq6n-32s8-opn6q2oop62n@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-4873: connection reuse ignores TLS
 requirement

connection reuse ignores TLS requirement
========================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-4873.html)

VULNERABILITY
-------------

A vulnerability exists where a connection requiring TLS incorrectly reuses an
existing unencrypted connection from the same connection pool. If an initial
transfer is made in clear-text (via IMAP, SMTP, or POP3), a subsequent request
to that same host will bypass the TLS requirement and instead transmit data
unencrypted.

INFO
----

This flaw requires a rather special series of events to trigger. Such a series
is unlikely to be used much in the wild.

This issue only happens for transfers done using `IMAP://`, `POP3://` or
`SMTP://` URL schemes. The initial transfer and the second transfer both need
to be done to the same host, use the same credentials and the same URL
schemes. The login and the initial transfer is done over clear-text, so the
user is obviously already accepting an insecure transmission for this. This
flaw still makes it worse as the second transfer is intended to be secured by
TLS but is not.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-4873 to this issue.

CWE-319: Cleartext Transmission of Sensitive Information

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.20.0 to and including 8.19.0
- Not affected versions: curl < 7.20.0 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/ec3bb8f727405642a

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
--------

curl 8.20.0 fixes this logical flaw

- Fixed-in: https://github.com/curl/curl/commit/507e7be573b0a76fca597b75

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.20.0

  B - Apply the patch and rebuild libcurl

  C - Do not use clear-text IMAP/POP3/SMTP transfers

TIMELINE
---------

It was reported to the curl project on March 22nd 2026. We contacted
distros@openwall on April 23.

libcurl 8.20.0 was released on April 29th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Arkadi Vainbrand
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
