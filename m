X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/2
Message-ID: <5ee7cac3-e816-e6d4-dff5-ab87e00223dc@apache.org>
Date: Wed, 09 Sep 2026 20:23:33 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49363: Apache Artemis, Apache ActiveMQ Artemis: Pre-Authentication Information Disclosure in CORE Protocol Topology Subscription 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-server) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-server) 1.0.0 through 2.44.0

Description:

An unauthenticated remote attacker connecting with the CORE protocol can discover cluster node details by sending a SUBSCRIBE_TOPOLOGY request prior to authentication.



This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.0.0 through 2.44.0.



Users are recommended to upgrade to version 2.57.0, which fixes the issue.

Credit:

Domenico Francesco Bruscino (finder)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49363

