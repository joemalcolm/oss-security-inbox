X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/05/2
Message-ID: <CAAqbB_dr90dmdxrVpG-cznaPrtPEQwtViaYgB2EA43efhRgRiA@mail.gmail.com>
Date: Wed, 5 Jan 2022 18:30:38 -0500
From: Neil Griffin <asfgriff@...che.org>
To: general@...tals.apache.org, pluto-user@...tals.apache.org,  announce@...che.org, jetspeed-user@...tals.apache.org, security@...che.org,  oss-security@...ts.openwall.com
Subject: CVE-2021-36737: Apache Portals: XSS in V3 Demo Portlet
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

The input fields of the Apache Pluto UrlTestPortlet are vulnerable to
Cross-Site Scripting (XSS) attacks.  Users should migrate to version 3.1.1
of the v3-demo-portlet.war artifact

Mitigation:

* Uninstall the v3-demo-portlet.war artifact
   -or-
* Migrate to version 3.1.1 of the v3-demo-portlet.war artifact

Credit:

Thanks to Dhiraj Mishra for reporting.

