X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/16
Message-ID: <16c22653-f977-4271-8b22-1f10767259cb@oracle.com>
Date: Wed, 30 Sep 2026 09:56:07 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-19553] SSLContext.wrap_bio() missing validation of server_hostname parameter
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-19553] SSLContext.wrap_bio() missing 
validation of server_hostname parameter
Date: 	Wed, 30 Sep 2026 16:08:09 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a HIGH severity vulnerability affecting CPython.

`ssl.SSLContext.wrap_bio()` didn't require the `server_hostname` argument to not 
be `None` if `ssl.SSLContext.check_hostname` was set. Due to a missing parameter 
check in `SSLObject`, if the `server_hostname` argument isn't supplied then 
hostname verification would be silently skipped.

This defect could lead to programs where certificate hostname verification 
*appeared* to be succeeding with `SSLContext.check_hostname = True` and no 
`ValueError` being raised due to misconfiguration.

If the program passes a `server_hostname` value that isn't an empty string or 
`None` to any of these APIs then certificate hostname verification proceeds as 
expected and the program is not affected by this vulnerability.

Mitigating this vulnerability doesn't require updating Python or applying the 
patch. To mitigate, pass a valid non-`None` and non-empty `server_hostname` 
value to `SSLContext.wrap_bio()`, `asyncio.create_connection()`, or 
`asyncio.loop.start_tls()` and certificate hostname verification will proceed as 
expected. Upgrading to the latest version of Python or applying the patch only 
changes the behavior from silently skipping hostname verification to raising a 
`ValueError`, similar to `SSLContext.wrap_socket()`, when `server_hostname` 
isn't supplied.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-19553
* https://github.com/python/cpython/pull/158503
_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
