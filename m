X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/6
Message-ID: <79c11a20-86f9-5a8d-711e-48257ff5a83e@apache.org>
Date: Tue, 15 Sep 2026 17:22:17 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-84439: Apache ZooKeeper: Audit log injection via unsanitized output from multiple sources 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.5
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.6

Description:

When audit logging is enabled (zookeeper.audit.enable=true), an unauthenticated attacker can inject arbitrary fields into Apache ZooKeeper's audit log by sending a digest authentication request with tab characters (\t) embedded in the username. Because the audit log uses tab-separated key=value format, the injected tabs are parsed as legitimate field separators, allowing the attacker to spoof audit results (e.g., injecting result=success), forge operation types, and corrupt forensic evidence.

A log injection vulnerability in Apache ZooKeeper allows a client that can call setACL to inject forged key-value fields into zookeeper_audit.log. When audit logging is enabled, the server serializes attacker-controlled digest ACL ids into the acl= audit field without escaping tab characters. Because audit events are emitted as tab-separated key=value records, a crafted ACL id can make one successful setAcl event appear to contain forged fields such as operation=delete and znode=/forged. This undermines the integrity of downstream audit parsing, alerting, and incident response.

This issue affects Apache ZooKeeper: from 3.9.0 through 3.9.5, from 3.8.0 through 3.8.6.

Users are recommended to upgrade to version 3.9.6 or 3.8.7, which fixes the issue.

Credit:

Youlong Chen Institute of Computing Technology <chenyoulong20g@....ac.cn> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-84439

