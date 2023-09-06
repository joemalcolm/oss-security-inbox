X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/1
Message-ID: <05416913-f79b-38c9-5d5d-d49c42106a2c@apache.org>
Date: Wed, 06 Sep 2023 09:06:31 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-36387: Apache Superset: Improper API permission for low privilege users 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

An improper default REST API permission for Gamma users in Apache Superset up to and including 2.1.0 allows for an authenticated Gamma user to test database connections.

Credit:

Miguel Segovia Gil (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-36387

