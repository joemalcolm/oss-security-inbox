X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/8
Message-ID: <3657be2b-69a4-fe9b-0f7f-99d861df688f@apache.org>
Date: Sun, 13 Sep 2026 05:45:45 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82428: Apache Storm Client: Cross-Tenant Dependency Jar Substitution via Predictable Blob Keys 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Client (org.apache.storm:storm-client) 3.0.0 before 3.1.0

Description:

Description

Dependency artifacts uploaded with `storm jar --artifacts` were stored under a blob key derived only from
the Maven coordinate, for example `dep---.jar`. The key was therefore identical
for every user of the cluster and predictable in advance. When the blob already existed, the uploader
caught `KeyAlreadyExistsException` and silently reused it, with no check that the existing blob's content
or owner matched the artifact the submitter had resolved.

A user who uploaded a blob under such a key first therefore controlled the bytes that every later submitter
of the same coordinate would receive on the worker classpath, resulting in code execution inside another
tenant's topology.

This affects deployments where more than one principal may create blobs and where the `--artifacts`
dependency feature is used.

Mitigation

Upgrade to 3.1.0, where each uploaded artifact receives a key carrying a freshly generated UUID and a
pre-existing blob is no longer silently reused.

Note that the corrected key generation is on the SUBMITTING CLIENT, so upgrading the cluster alone does not
close this; every client that runs `storm jar --artifacts` must also be upgraded. Operators should audit
existing `dep-` blobs for unexpected owners before upgrading. Users who cannot upgrade immediately should
avoid the `--artifacts` mechanism in multi-tenant clusters and distribute dependencies inside the topology
jar instead.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82428

