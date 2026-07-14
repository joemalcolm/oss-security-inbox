X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/10
Message-ID: <dc22ef28-b13e-2a49-aa24-defe06f8de8c@apache.org>
Date: Tue, 14 Jul 2026 09:48:36 +0000
From: Maxim Solodovnik <solomax@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49488: Apache OpenMeetings: Arbitrary File Read 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache OpenMeetings 5.0.0 before 9.1.0

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') vulnerability in Apache OpenMeetings.

This issue affects Apache OpenMeetings: from 5.0.0 before 9.1.0.
An attacker with moderator rights in any room can read arbitrary files accessible to the OS account running the OM server, including credentials and secrets, via a crafted download request.

Users are recommended to upgrade to version 9.1.0, which fixes the issue.

This issue is being tracked as OPENMEETINGS-2821 

Credit:

follycat and Y0n3er (finder)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49488
https://issues.apache.org/jira/browse/OPENMEETINGS-2821

