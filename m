X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/17
Message-ID: <d65e5089-a707-458e-8fef-346a3650564f@oracle.com>
Date: Wed, 30 Sep 2026 09:58:23 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-19445] Use-after-free of a server-side SSLContext when sni_callback switches contexts
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-19445] Use-after-free of a server-side 
SSLContext when sni_callback switches contexts
Date: 	Wed, 30 Sep 2026 16:10:08 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a CRITICAL severity vulnerability affecting CPython.

A remote, unauthenticated TLS client can make a server crash or call through a 
freed pointer if its sni_callback assigns a different context to 
SSLSocket.context (the documented way to select a certificate per server name) 
and nothing else keeps the original ssl.SSLContext alive. Typical cases are 
servers that create an SSLContext per connection or replace it while connections 
are open; servers that wrap their listening socket with it are not affected.

Mitigation: keep a reference to every SSLContext that sets sni_callback for the 
lifetime of the server. TLS clients are not affected.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-19445
* https://github.com/python/cpython/pull/158504

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
