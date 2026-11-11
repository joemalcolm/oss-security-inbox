X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/4
Message-ID: <33cefc56-be44-1a91-f673-9354ac3ec3ca@apache.org>
Date: Wed, 11 Nov 2026 02:08:31 +0000
From: Rui Abreu <rabreu@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124495: Apache Storm: Logviewer follows worker symlinks across topology ACLs 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Storm (org.apache.storm:storm-webapp) 3.0.0 before 3.2.0

Description:

When workers run as the topology owner, the Logviewer serves files that a worker has placed in its own log directory as links to other files. A user who is allowed to submit topologies can read the worker logs of other users' topologies, and other files the Logviewer process can read. Users are recommended to upgrade to version 3.2.0, which fixes the issue.

Credit:

Javier García Herrera (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-124495

