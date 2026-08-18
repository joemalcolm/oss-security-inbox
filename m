X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/18/3
Message-ID: <aa27ea9c-e836-41c9-8e14-1a81ff03b0e5@oracle.com>
Date: Tue, 18 Aug 2026 09:15:40 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-15806] urllib.request.HTTPPasswordMgr credentials for one URL scheme sent over another scheme
Content-Type: text/plain; charset=utf-8

-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-15806] urllib.request.HTTPPasswordMgr credentials for one URL scheme sent over another scheme
Date: 	Tue, 18 Aug 2026 15:38:30 +0000
From: 	Kirill Podoprigora via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Kirill Podoprigora <kirill.bast@...il.com>


There is a MEDIUM severity vulnerability affecting CPython.

   The HTTPPasswordMgr class in the urllib.request module, along with its
subclasses HTTPPasswordMgrWithDefaultRealm and HTTPPasswordMgrWithPriorAuth,
did not take the URL scheme into account when matching stored credentials
against a requested URL. Credentials added for an https:// URL were also used
for requests to the same host over http://, so an attacker able to redirect or
downgrade a client to plain HTTP (for example, via an HTTPS-to-HTTP redirect
or an on-path position) could capture credentials in cleartext. Credentials
added for http:// URLs could likewise be sent over https://.

   Credential matching is now scoped by URL scheme. Credentials registered with
a URL that includes a scheme are only used for requests with the same scheme.
Credentials registered with a bare authority (such as example.com or
example.com:8080) continue to match any scheme, preserving compatibility with
existing code, including proxy authentication.

   Users who cannot upgrade immediately can mitigate by ensuring that
applications never make plain http:// requests to hosts for which credentials
are registered, for example by not following redirects to http:// URLs.

Please see the linked CVE ID for the latest information on affected versions:
- https://www.cve.org/CVERecord?id=CVE-2026-15806
- https://github.com/python/cpython/pull/155696

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


