X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/21/1
Message-ID: <c61a63b1-3370-9ced-d672-d2c6a6f91c94@apache.org>
Date: Thu, 21 Oct 2021 03:02:08 +0000
From: Derek Dagit <dagit@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-38294: Apache Storm: Shell Command Injection Vulnerability in Nimbus Thrift Server 
Content-Type: text/plain; charset=utf-8

Severity: high

Description:

A Command Injection vulnerability exists in the getTopologyHistory service of the Apache Storm 2.x prior to 2.2.1 and Apache Storm 1.x prior to 1.2.4. A specially crafted thrift request to the Nimbus server allows Remote Code Execution (RCE) prior to authentication. 

Mitigation:

Apache Storm 2.2.x users should upgrade to version 2.2.1 or 2.3.0
Apache Storm 2.1.x users should upgrade to version 2.1.1
Apache Storm 1.x users should upgrade to version 1.2.4

Credit:

Apache Storm would like to thank @pwntester Alvaro Muñoz of the GitHub Security Lab team for reporting this issue.

