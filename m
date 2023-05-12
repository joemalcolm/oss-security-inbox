X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/12/3
Message-ID: <0841cfb9-4068-f742-37ae-1428aff994fe@apache.org>
Date: Fri, 12 May 2023 01:20:05 +0000
From: Maxim Solodovnik <solomax@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-29246: Apache OpenMeetings: allows null-byte Injection 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache OpenMeetings 2.0.0 before 7.1.0

Description:

An attacker who has gained access to an admin account can perform RCE via null-byte injection

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings from 2.0.0 before 7.1.0

This issue is being tracked as OPENMEETINGS-2765 

Credit:

Stefan Schiller (reporter)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-29246
https://issues.apache.org/jira/browse/OPENMEETINGS-2765

