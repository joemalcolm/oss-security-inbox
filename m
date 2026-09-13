X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/12
Message-ID: <fcdf1f20-5e42-ab28-b27d-12b5ba2cff72@apache.org>
Date: Sun, 13 Sep 2026 05:46:16 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82432: Apache Storm Nimbus: Blobstore Authorization Bypass via Rebalance Configuration Overrides 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Nimbus (org.apache.storm:storm-server) 3.0.0 before 3.1.0

Description:

Description

Nimbus validated `topology.blobstore.map` against the calling subject at submission time only. The rebalance
operation accepts configuration overrides and stripped a small set of keys from them, but never re-ran that
validation, so a caller authorised to rebalance a topology could introduce a blobstore map entry naming a
blob whose ACL does not grant them access. Supervisors localise whatever key the map names, placing the
blob's contents into the topology's working directory.

The same advisory covers `listBlobs`, which performed no authorization check and passed no subject, unlike
the neighbouring `getBlobMeta` and `beginBlobDownload` operations. It therefore returned every key in the
blobstore to any caller able to reach the Nimbus Thrift port, which provides the key names that make the
above practical. On its own the disclosure is metadata only.

Mitigation

Upgrade to 3.1.0, where rebalance configuration overrides are validated exactly as submission-time
configuration is, against the rebalancing caller, and where `listBlobs` applies the configured
authorization.

Users who cannot upgrade immediately should restrict rebalance rights to trusted principals, keeping in mind
that membership of a topology's `topology.users` or `topology.groups` confers them.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82432

