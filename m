X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/16/6
Message-ID: <79646e77-1de1-fc1e-ee4b-9937edb2b2b1@apache.org>
Date: Mon, 16 Jan 2023 09:31:37 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45438: Apache Superset: Dashboard metadata information leak 
Content-Type: text/plain; charset=utf-8

Description:

When explicitly enabling the feature flag DASHBOARD_CACHE (disabled by default), the system allowed for an unauthenticated user to access dashboard configuration metadata using a REST API Get endpoint. This issue affects Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Sunny Alexli (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-45438

