X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/24/2
Message-ID: <f91aa07f-0bb2-1e5f-8ba7-952fec3a1758@apache.org>
Date: Mon, 24 Apr 2023 14:37:44 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-27524: Apache Superset: Session validation vulnerability when using provided default SECRET_KEY 
Content-Type: text/plain; charset=utf-8

Description:

Session Validation attacks in Apache Superset versions up to and including 2.0.1. Installations that have not altered the default configured SECRET_KEY according to installation instructions allow for an attacker to authenticate and access unauthorized resources. This does not affect Superset administrators who have changed the default value for SECRET_KEY config.

Credit:

Naveen Sunkavally (Horizon3.ai) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-27524

