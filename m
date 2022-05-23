X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/23/3
Message-ID: <4cd86c45-ac7c-3867-cae3-7f1f28a598eb@apache.org>
Date: Mon, 23 May 2022 09:52:20 +0000
From: Slawomir Jaranowski <sjaranowski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-29599: Apache Maven: Commandline class shell injection vulnerabilities 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Maven maven-shared-utils prior to version 3.3.3, the Commandline class can emit double-quoted strings without proper escaping, allowing shell injection attacks.

This issue is being tracked as MSHARED-297

References:

https://issues.apache.org/jira/browse/MSHARED-297
https://github.com/apache/maven-shared-utils/pull/40

