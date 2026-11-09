X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/1
Message-ID: <564e8b47-c722-48a7-e8d3-6feac92f2ed8@apache.org>
Date: Mon, 09 Nov 2026 05:02:05 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82436: Apache Storm Client: Deserialization of Untrusted Data from the State Store 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Client (org.apache.storm:storm-client) 3.0.0 before 3.1.0

Description:

Description

`DefaultStateSerializer`, used to persist and restore stateful bolt checkpoints, configured Kryo with class
registration disabled and an instantiation strategy that constructs objects without invoking their
constructors, then deserialized whatever bytes the state store returned. A party able to write to the
topology's keyspace in the state store, for example a co-tenant of a shared Redis instance or anyone with
network access to it, could therefore place a serialized object graph that executes code inside the worker
JVM when the state is restored.

This requires the Redis-backed state provider, which is not the default. Write access to a state-store key
is a data-plane privilege; code execution in the worker JVM is not, so the two are not equivalent.

Mitigation

Upgrade to 3.1.0, where the state serializer requires registered classes.

Note that this is a behaviour change for existing state: checkpoints written by an affected version may fail
to restore, and a migration step may be required. Users who cannot upgrade immediately should restrict
network and credential access to the state store to the cluster itself.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82436

