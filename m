X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/18/5
Message-ID: <f9eae471-1b6b-c840-0039-74cf3674db57@apache.org>
Date: Tue, 18 Jan 2022 14:42:56 +0000
From: Ralph Goers <rgoers@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-23307: Apache Log4j 1.x:  A deserialization flaw in the Chainsaw component of Log4j 1 can lead to malicious code execution. 
Content-Type: text/plain; charset=utf-8

Severity: Critical

Description:

CVE-2020-9493 identified a deserialization issue that was present in Apache Chainsaw. Prior to Chainsaw V2.0 Chainsaw was a component of Apache Log4j 1.2.x where the same issue exists.

Mitigation:

Upgrade to Apache Log4j 2 and Apache Chainsaw 2.1.0.

Credit:

@kingkk

