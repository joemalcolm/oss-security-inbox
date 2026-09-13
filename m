X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/7
Message-ID: <6167ad70-bcd0-5dd8-0884-09ed9abde68e@apache.org>
Date: Sun, 13 Sep 2026 05:45:37 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82427: Apache Storm Nimbus: Path Traversal as the Supervisor User via Unsanitised Blobstore Map Local Name 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Nimbus (org.apache.storm:storm-server) 3.0.0 before 3.1.0

Description:

Description

A topology's `topology.blobstore.map` lets the submitter choose a local name for each blob that the
supervisor localises. That name was used to build a path under the topology's working directory without
normalisation, in both `AsyncLocalizer` and `Container.createBlobstoreLinks`, and the symlink helper
force-deletes whatever already exists at the target before creating the link.

A submitter could therefore use `../` segments to direct that delete-and-symlink operation at an arbitrary
path, as the supervisor user, on every node the topology is scheduled onto. The consequences include
recursive deletion of supervisor-owned content and planting a symlink that causes a subsequent worker
launch to execute attacker-chosen code as another tenant's operating-system user, which defeats the
isolation that `supervisor.run.worker.as.user` is intended to provide.

Mitigation

Upgrade to 3.1.0, where the resolved target must lie inside the expected root at both call sites.

Users who cannot upgrade immediately should restrict topology submission to trusted principals, and may
reject submissions whose `topology.blobstore.map` entries contain path separators or `..` segments before
they reach Nimbus.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82427

