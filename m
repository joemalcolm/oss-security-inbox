X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/11
Message-ID: <4fe6fe05-43ce-889d-a996-12e33880886c@apache.org>
Date: Sun, 13 Sep 2026 05:46:10 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82431: Apache Storm Client: Authorization Bypass When nimbus.groups Is Configured Without nimbus.users 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Client (org.apache.storm:storm-client) 3.0.0 before 3.1.0

Description:

Description

`SimpleACLAuthorizer` evaluated the user-level command set by returning early when `nimbus.users` was empty,
before `nimbus.groups` was considered. An operator who restricted cluster access by group alone, leaving
`nimbus.users` unset, therefore received no restriction at all: every authenticated principal was permitted
every user-level operation, including `submitTopology`, `beginFileUpload` and `getNimbusConf`.

`docs/SECURITY.md` presents `nimbus.groups` as a supported way to lock down a cluster, so a deployment
following the documentation could believe it was restricted while it was not. The failure is silent; nothing
in the logs or the configuration indicates that the group list is being ignored.

Both lists left empty continues to mean that no restriction is configured, which is the shipped default and
is unchanged.

Mitigation

Upgrade to 3.1.0, where `nimbus.groups` is evaluated whether or not `nimbus.users` is set.

Users who cannot upgrade immediately should additionally populate `nimbus.users` with the intended
principals, since a non-empty user list causes the group list to be evaluated on affected versions.
Operators should review Nimbus access logs for operations by principals outside the intended groups.

Note that after upgrading, a cluster configured with `nimbus.groups` alone becomes restrictive for the first
time. This includes `NimbusClient`, which calls `getLeader` on every connection, so clients outside the
configured groups will begin to be refused.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82431

