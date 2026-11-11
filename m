X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/5
Message-ID: <14bcc13f-ca20-1432-c2c4-d090c459f633@apache.org>
Date: Wed, 11 Nov 2026 02:08:44 +0000
From: Rui Abreu <rabreu@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124496: Apache Storm: DRPC HTTP doAsUser bypasses the impersonation authorizer 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Storm (org.apache.storm:storm-server) 3.0.0 before 3.2.0

Description:

The DRPC HTTP endpoint lets an authenticated client act as another user without applying the configured impersonation authorizer. An authenticated user can execute DRPC functions that are restricted to another user. Users are recommended to upgrade to version 3.2.0, which fixes the issue.

Credit:

Javier García Herrera (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-124496

