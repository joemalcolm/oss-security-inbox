Received: (qmail 7893 invoked by uid 550); 11 Mar 2026 06:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7872 invoked from network); 11 Mar 2026 06:54:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1773212078; bh=nPFHKLUQGgC0xPpEovcs2m4YY9Ho21HX2ZWrmBfvSZA=;
	h=Date:From:To:Subject:From;
	b=M9Smsd6Y9hpoc6vJcvWmNSZQh1/d8tT9llAZdSFogynN/swXBop8XHvA8psLtCQRk
	 hfjRwUp1Dh1wraYwvldcX8oXsLsbjP+cMSF/yNp08Pk9UymC25HjQCFe7/exRu2YZE
	 a3xCvw9jb1HvuCLzISXRUBN+neeTIqvbRwijTT8li0AJNQ1aNDxjyobQTkxHQquPRV
	 YvGOV/qElLxwgmUc/h2a4fCoG3LI5TdMLE5BcLr45LiQgBRpBRir8z2ZQSS9cqcUPQ
	 DADo9Af0fGzOUN00buESujvNgyMws74BsmvriQ1mwDFftBGVSc95GLjoSPRExADWyq
	 r5+ceoABoly9g==
Date: Wed, 11 Mar 2026 07:54:38 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <4q225499-5soo-2310-4q77-p7rq4814p6n9@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-1965: bad reuse of HTTP Negotiate
 connection

bad reuse of HTTP Negotiate connection
======================================

Project curl Security Advisory, March 11th 2026
[Permalink](https://curl.se/docs/CVE-2026-1965.html)

VULNERABILITY
-------------

libcurl can in some circumstances reuse the wrong connection when asked to do
an Negotiate-authenticated HTTP or HTTPS request.

libcurl features a pool of recent connections so that subsequent requests can
reuse an existing connection to avoid overhead.

When reusing a connection a range of criterion must first be met. Due to a
logical error in the code, a request that was issued by an application could
wrongfully reuse an existing connection to the same server that was
authenticated using different credentials. One underlying reason being that
Negotiate sometimes authenticates *connections* and not *requests*, contrary
to how HTTP is designed to work.

An application that allows Negotiate authentication to a server (that responds
wanting Negotiate) with `user1:password1` and then does another operation to
the same server also using Negotiate but with `user2:password2` (while the
previous connection is still alive) - the second request wrongly reused the
same connection and since it then sees that the Negotiate negotiation is
already made, it just sends the request over that connection thinking it uses
the user2 credentials when it is in fact still using the connection
authenticated for user1...

The set of authentication methods to use is set with `CURLOPT_HTTPAUTH`.

Applications can disable libcurl's reuse of connections and thus mitigate this
problem, by using one of the following libcurl options to alter how
connections are or are not reused: `CURLOPT_FRESH_CONNECT`,
`CURLOPT_MAXCONNECTS` and `CURLMOPT_MAX_HOST_CONNECTIONS` (if using the
curl_multi API).

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-1965 to this issue.

This flaw is similar to [CVE-2014-0015](CVE-2014-0015.md), but that flaw was
for NTLM.

CWE-305: Authentication Bypass by Primary Weakness

Severity: Medium

AFFECTED VERSIONS
-----------------

This flaw has existed since curl started to support Negotiate.

- Affected versions: from curl 7.10.6 to and including 8.18.0
- Not affected versions: curl < 7.10.6 and >= 8.19.0
- Introduced-in: https://github.com/curl/curl/commit/e56ae1426c

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **also** affects the curl command line tool.

SOLUTION
--------

curl 8.19.0 makes sure that connections that may use Negotiate cannot reuse
another Negotiate-using connection unless the credentials match.

- Fixed-in: https://github.com/curl/curl/commit/34fa034d9a390c4bd6
- Fixed-in: https://github.com/curl/curl/commit/f1a39f221d57354990

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.19.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using HTTP Negotiate in your application

TIMELINE
---------

It was reported to the curl project on February 4th 2026. We contacted
distros@openwall on March 8.

libcurl 8.19.0 was released on March 11th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Zhicheng Chen
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
