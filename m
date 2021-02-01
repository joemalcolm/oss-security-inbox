X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/02/1
Message-Id: <DFF27630-BB03-4FC8-9A1D-75F16C947044@apache.org>
Date: Mon, 1 Feb 2021 23:49:20 +0000
From: Aleksey Yeschenko <aleksey@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-17516] Apache Cassandra internode encryption enforcement vulnerability 
Content-Type: text/plain; charset=utf-8

CVE-2020-17516: Apache Cassandra doesn't enforce encryption setting on inbound internode connections

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
Cassandra 2.1.0 to 2.1.22
Cassandra 2.2.0 to 2.2.19
Cassandra 3.0.0 to 3.0.23
Cassandra 3.11.0 to 3.11.9

Description:
When using ‘dc’ or ‘rack’ internode_encryption setting, a Cassandra instance allows both encrypted
and unencrypted connections. A misconfigured node or a malicious user can use the unencrypted
connection despite not being in the same rack or dc, and bypass mutual TLS requirement.

Mitigation:
Users of ALL versions should switch from ‘dc’ or ‘rack’ to ‘all’ internode_encryption setting, as they are inherently insecure
3.0.x users should additionally upgrade to 3.0.24
3.11.x users should additionally upgrade to 3.11.10

Credit:
This issue was discoverd by Jon Meredith
