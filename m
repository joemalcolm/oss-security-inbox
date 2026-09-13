X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/16
Message-ID: <d323c926-de59-ca14-1c9a-5226da26bd57@apache.org>
Date: Sun, 13 Sep 2026 05:48:00 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82437: Apache Storm Logviewer: Log Access Controls Not Enforced by Logviewer 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Logviewer (org.apache.storm:storm-webapp) 3.0.0 before 3.1.0

Description:

Description

The Logviewer offers `logs.users` and `logs.groups` so operators can control who may read log content. For
daemon logs those settings were not applied: the access decision combined the "this is a daemon log" flag
with the authorizer result in a way that discarded the authorizer's answer whenever the flag was set, and
the daemon log page and download endpoints reached the handler without consulting an authorizer at all. Any
user able to pass the configured servlet filter could therefore read `nimbus.log`, `supervisor.log` and the
other daemon logs on every reachable node, which contain other tenants' topology names, owners and
configuration fragments.

The same advisory covers the log listing endpoints, which accepted a user argument and never applied it, so
`/listLogs` and `/searchLogs` returned every tenant's topology and worker log file names regardless of the
caller. That part is metadata only.

There was no configuration that closed either behaviour.

Mitigation

Upgrade to 3.1.0, where the daemon log paths evaluate the same configured user and group lists that the
worker log paths already used, and the listing endpoints filter by the requesting user.

Users who cannot upgrade immediately should place the Logviewer behind a reverse proxy that restricts the
daemon log endpoints, and should treat daemon log content as readable by any filter-authenticated user.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82437

