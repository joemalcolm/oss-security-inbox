Received: (qmail 13984 invoked by uid 550); 29 Apr 2026 06:01:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13954 invoked from network); 29 Apr 2026 06:01:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442460; bh=2EViZtPnPurKKOtRJD/PscJWR6wbXVHYEnRnd5SVAdU=;
	h=Date:From:To:Subject:From;
	b=w8ia74ROP+1/k2oRyu0G7YtDp93pHKylLN2oKal9mzA/81Jf6UX4SUz0nJkSBE03Y
	 FQZBNPy6BKI3EH7W7j4DbeMtx5AIuTchJlplPvMkTwn51/q3wjlSiN8x8IO8X39QXG
	 VbF5UKAyNvD+zbbAJvSWuOiLEqXvnETMR+psF7+IyKlh0Tka8gd01KdUv4qpVqPX/B
	 YvDl2Fe7V8eXxJCLgJ1nyf0rUSOBKyEVA0dHpKWriTbk+zoMkRUhGp//Sc6e18YDH3
	 ieySGne5Ks7hQYmFzkT6a+7jIhJ9vr6VIMIWntDLpC/25GIhpFdkjfdUnZ8ryDtscs
	 UrLLP0Q5VS+VA==
Date: Wed, 29 Apr 2026 08:01:00 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <so5274qn-sr20-5854-822r-8spr9po06819@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-5545: wrong reuse of HTTP Negotiate
 connection

wrong reuse of HTTP Negotiate connection
========================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-5545.html)

VULNERABILITY
-------------

libcurl might in some circumstances reuse the wrong connection when asked to
do an authenticated HTTP(S) request after a Negotiate-authenticated one, when
both use the same host.

libcurl features a pool of recent connections so that subsequent requests can
reuse an existing connection to avoid overhead.

When reusing a connection a range of criteria must be met. Due to a logical
error in the code, a request that was issued by an application could
wrongfully reuse an existing connection to the same server that was
authenticated using different credentials.

An application that first uses Negotiate authentication to a server with
`user1:password1` and then does another operation to the same server asking
for any authentication method but for `user2:password2` (while the previous
connection is still alive) - the second request gets confused and wrongly
reuses the same connection and sends the new request over that connection
thinking it uses a mix of user1's and user2's credentials when it is in fact
still using the connection authenticated for user1...

INFO
----

The set of authentication methods to use is set with `CURLOPT_HTTPAUTH`.

Applications can disable libcurl's reuse of connections and thus mitigate this
problem, by using one of the following libcurl options to alter how
connections are or are not reused: `CURLOPT_FRESH_CONNECT`,
`CURLOPT_MAXCONNECTS` and `CURLMOPT_MAX_HOST_CONNECTIONS` (if using the
curl_multi API).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-5545 to this issue.

This flaw is similar to [CVE-2026-1965](CVE-2026-1965.md).

CWE-305: Authentication Bypass by Primary Weakness

Severity: Medium

AFFECTED VERSIONS
-----------------

This flaw has existed since curl started to support Negotiate.

- Affected versions: from curl 7.10.6 to and including 8.19.0
- Not affected versions: curl < 7.10.6 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/e56ae1426c

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **also** affects the curl command line tool.

SOLUTION
--------

curl 8.20.0 makes sure that connections using Negotiate are not wrongly
reused.

- Fixed-in: https://github.com/curl/curl/commit/33e43985b8f3b9e6669

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.20.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using HTTP Negotiate in your application

TIMELINE
---------

It was reported to the curl project on April 1st 2026. We contacted
distros@openwall on April 23.

libcurl 8.20.0 was released on April 29th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Quac Tran and Ngoc Hieu
- Patched-by: Stefan Eissing

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
