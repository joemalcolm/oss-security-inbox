X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/17/2
Message-ID: <6282612b-66b8-b813-22e3-d656807f4a44@apache.org>
Date: Wed, 17 Nov 2021 14:59:19 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-42250: Apache Superset: Possible log injection 
Content-Type: text/plain; charset=utf-8

Description:

Improper output neutralization for Logs. A specific Apache Superset HTTP endpoint allowed for an authenticated user to forge log entries or inject malicious content into logs.

Mitigation:

Upgrade to Apache Superset 1.3.2 or higher

Credit:

Found and reported by Duxiaoman Financial Security Team

