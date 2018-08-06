X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/06/2
Message-Id: <5FB834CA-30CF-4B8F-AA12-C1CFE2A7C145@apache.org>
Date: Mon, 6 Aug 2018 10:29:26 +0100
From: Ash Berlin-Taylor <ash@...che.org>
To: Apache Security Team <security@...che.org>, dev@...flow.incubator.apache.org, Seth Long <seth.long@...ditkarma.com>, oss-security@...ts.openwall.com
Subject: CVE-2017-12614 XSS Vulnerability in Airflow < 1.9
Content-Type: text/plain; charset=utf-8

CVE-2017-12614: Apache Reflected Reflected XSS Vulnerability

Vendor: The Apache Software Foundation:

Versions Affected: < 1.9

Description:
It was noticed an XSS in certain 404 pages that could be exploited to perform an XSS attack. Chrome will detect this as a reflected XSS attempt and prevent the page from loading. Firefox and other browsers don't, and are vulnerable to this attack.

Mitigation:
The fix for this is to upgrade to Apache Airflow 1.9.0 or above

Credit:
This issue was discovered by Seth Long at Credit Karma
