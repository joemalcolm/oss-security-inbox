X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/12
Message-ID: <254f06d3-d734-73ee-211c-8ee1cd9bbd7e@apache.org>
Date: Tue, 03 Nov 2026 17:27:37 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-100302: Apache ZooKeeper: Denial of service through unbounded memory allocation in multiRead request handling 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 7.1 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache ZooKeeper 3.9.0 through 3.9.6
- Apache ZooKeeper 3.8.0 through 3.8.7

Description:

Allocation of Resources Without Limits or Throttling in the multiRead request handler of Apache ZooKeeper allows a remote attacker to crash the server (denial of service) with a single small request.

The multiRead handler places no limit on the number of bundled read operations or on the cumulative size of the response it builds in memory. Because each operation's result is fully materialized and retained before serialization, a request that is small on the wire — within the jute.maxbuffer limit — but that references a large znode many times can force the server to allocate far more heap than the request size implies, exhausting the JVM heap and terminating the server with an OutOfMemoryError. Neither jute.maxbuffer nor largeRequestMaxBytes prevents this, as both bound only the inbound request, not the response.

This issue affects Apache ZooKeeper from 3.7.0 through 3.9.6. Users are recommended to upgrade to version 3.9.7, which enforces configurable limits on the multiRead operation count and cumulative response size.

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-100302

