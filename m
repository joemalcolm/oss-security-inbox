X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/02/2
Message-ID: <2df8d282-af76-f504-2dea-89e86f846706@apache.org>
Date: Sat, 2 May 2020 14:30:27 +0200
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1959] Apache Syncope: Multiple Remote Code Execution Vulnerabilities
Content-Type: text/plain; charset=utf-8

Description:
A Server-Side Template Injection was identified in Syncope enabling attackers to inject arbitrary Java EL expressions, leading to an
unauthenticated Remote Code Execution (RCE) vulnerability.
Apache Syncope uses Java Bean Validation (JSR 380) custom constraint validators. When building custom constraint violation error messages, they
support different types of interpolation, including Java EL expressions.
Therefore, if an attacker can inject arbitrary data in the error message template being passed, they will be able to run arbitrary Java code.

Severity: Important

Vendor: The Apache Software Foundation

Affects:
2.1.X releases prior to 2.1.6

Solution:
Upgrade to 2.1.6

Credit:
This issue was discovered by GitHub Security Labs team member Alvaro Muñoz - https//github.com/pwntester.

References:
https://syncope.apache.org/security


