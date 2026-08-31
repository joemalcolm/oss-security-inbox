X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/12
Message-ID: <b53486d7-5da8-4266-9be3-7654f62ea260@plone.org>
Date: Mon, 31 Aug 2026 17:19:40 +0200
From: "Maurits van Rees (Plone)" <maurits@...ne.org>
To: oss-security@...ts.openwall.com
Subject: Plone security advisory 20260831
Content-Type: text/plain; charset=utf-8

On behalf of the Plone/Zope Security Team I announce two vulnerability 
fixes in plone.restapi.

* Unauthenticated Reflective Method Invocation via the REST API @search 
metadata_fields Parameter, 
https://github.com/plone/plone.restapi/security/advisories/GHSA-r3g9-vgf8-vv35, 
severity 6.5 moderate
* Information disclosure due to wrong permission check, 
https://github.com/plone/plone.restapi/security/advisories/GHSA-qp9m-v45c-4g3p, 
severity 5.3 moderate

CVE numbers have been requested, but have not yet been assigned.

Related to the second one is a fix in plone.autoform, but this is not 
really a security fix, as there is no known exploit. It is just 
hardening against possible programmer error. I will add it to the 
version numbers below and recommend it, but it is optional.

You should update your Plone sites to the following versions (formatted 
as pip constraints here):

For Plone 6.2:

plone.autoform==3.0.1
plone.restapi==10.0.4

For Plone 6.0 and 6.1:

plone.autoform==2.0.5
plone.restapi==9.15.7

(If you are still on Plone 5.2 with Python 3.8, you can also upgrade to 
plone.restapi 9.15.7.)

If you think a security issue was incompletely solved, please contact 
the Plone/Zope Security Team via email at security@...ne.org.

If these versions cause other problems, you can open an issue in the 
Products.CMFPlone tracker at 
https://github.com/plone/Products.CMFPlone/issues/. Please check if 
anything was reported already.

Maurits van Rees
Plone/Zope Security Team


