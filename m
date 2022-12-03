X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/03/1
Message-ID: <323ccb5e-ee71-ee85-6c6a-c9d5a5171411@apache.org>
Date: Sat, 03 Dec 2022 14:39:09 +0000
From: "Gary D. Gregory" <ggregory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-37533: Apache Commons Net's FTP client trusts the host from PASV response by default 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Prior to Apache Commons Net 3.9.0, Net's FTP client trusts the host from PASV response by default. A malicious server can redirect the Commons Net code to use a different host, but the user has to connect to the malicious server in the first place. This may lead to leakage of information about services running on the private network of the client.
The default in version 3.9.0 is now false to ignore such hosts, as cURL does. See https://issues.apache.org/jira/browse/NET-711.


This issue is being tracked as NET-711

Credit:

Apache Commons would like to thank ZeddYu Lu for reporting this issue.

