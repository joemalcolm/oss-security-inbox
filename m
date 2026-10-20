X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/20
Message-ID: <40113c07-6ec1-44c7-8af0-42f3e746cfa8@oracle.com>
Date: Tue, 20 Oct 2026 09:41:05 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [GHSA-6q48-6c7w-9gw2] CRITICAL security update for certifi, removal of emSign root certificate
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][GHSA-6q48-6c7w-9gw2] CRITICAL security update for 
certifi, removal of emSign root certificate
Date: 	Tue, 20 Oct 2026 14:03:26 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a CRITICAL severity vulnerability affecting certifi.

Certifi 2026.10.19 removes root certificates from "emSign" from the root store. 
These root certificates have intermediates which have been revoked due to key 
compromise. A compromised key for a certificate authority can be used to issue 
certificates to enable MITM attacks.

Upgrade to certifi 2026.10.19 and rebuild container images to refresh CA 
certificate stores.

Please see the links for the latest information on affected versions:

* https://github.com/certifi/python-certifi/security/advisories/GHSA-6q48-6c7w-9gw2
* 
https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/0R3XLJL6FuE/m/0XofdebrAAAJ 


_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


