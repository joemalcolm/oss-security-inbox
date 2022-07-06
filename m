X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/06/4
Message-ID: <f99b360a-192e-5c4e-1832-ee26121ae0bf@apache.org>
Date: Wed, 06 Jul 2022 12:13:10 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-37839: Apache Superset: Improper access to dataset metadata information  
Content-Type: text/plain; charset=utf-8

Description:

Apache Superset up to 1.5.1 allowed for authenticated users to access metadata information related to datasets they have no permission on. This metadata included the dataset name, columns and metrics.

Mitigation:

Upgrade to 1.5.1 or higher

Credit:

Apache Superset would like to thank Dinesh for reporting this issue

