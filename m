X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/21/2
Message-ID: <22af59a3-7ad6-cb3d-4622-db73c8f48539@apache.org>
Date: Thu, 21 Oct 2021 03:03:02 +0000
From: Derek Dagit <dagit@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-40865: Apache Storm: Unsafe Pre-Authentication Deserialization In Workers 
Content-Type: text/plain; charset=utf-8

Severity: high

Description:

An Unsafe Deserialization vulnerability exists in the worker services of the Apache Storm supervisor server allowing pre-auth Remote Code Execution (RCE).  Apache Storm 2.2.x users should upgrade to version 2.2.1 or 2.3.0. Apache Storm 2.1.x users should upgrade to version 2.1.1. Apache Storm 1.x users should upgrade to version 1.2.4

Mitigation:

Apache Storm 2.2.x users should upgrade to version 2.2.1 or 2.3.0
Apache Storm 2.1.x users should upgrade to version 2.1.1
Apache Storm 1.x users should upgrade to version 1.2.4

Credit:

Apache Storm would like to thank @pwntester Alvaro Muñoz of the GitHub Security Lab team for reporting this issue.

