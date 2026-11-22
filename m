X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/8
Message-ID: <953591ce-d520-8b2f-031d-24c69fc0bf6e@apache.org>
Date: Sun, 22 Nov 2026 21:55:22 +0000
From: Jan Høydahl <janhoy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53672: Apache Solr: Zookeeper endpoint authorization bypass discloses security.json 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 6.5 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N

Affected versions:

- Apache Solr (org.apache.solr:solr-core) 8.11.1 before 9.11.0
- Apache Solr (org.apache.solr:solr-core) 10.0.0

Description:

A bug related to the Zookeeper HTTP endpoints in Apache Solr allows an authenticated attacker with zk-read permission to read /security.json, bypassing the security-read authorization check. This may cause unauthorized read of credential hashes and authorization configuration.

For this attack to be successful, the following must be true
  *  The system is secured with Solr's Basic Auth plugin
  *  The attacker has gained direct network access to the Solr cluster
  *  The attacker has obtained credentials for a user account with zk-read permission (which is recommended assigned to trusted admins only)


Users are recommended to upgrade to 9.11.0, 10.1.0 or a newer release.
Users who cannot upgrade immediately are recommended to assign the zk-read permission only to users who they entrust reading security.json.

This issue is being tracked as SOLR-18282 SOLR-18420 

Credit:

secuholic (finder)
William Wallace (phyr3wall) (finder)
rea1mindx, Wenqiaor1ing (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-53672
https://issues.apache.org/jira/browse/SOLR-18282
https://issues.apache.org/jira/browse/SOLR-18420

