X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/15
Message-ID: <722129c3-7702-9ce4-0353-af1b9b4a8f8d@apache.org>
Date: Sun, 13 Sep 2026 05:47:02 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82435: Apache Storm Worker: Unauthenticated Remote Memory Exhaustion in the Worker Messaging Decoder 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Worker (org.apache.storm:storm-client) 3.0.0 before 3.1.0

Description:

Description

The worker's Netty message decoder is installed ahead of the SASL authentication handlers in the pipeline
and acts on frames before any authentication has taken place. It allocated buffers sized from a
length field carried in the frame, so a single frame from an unauthenticated peer able to reach a worker
slot port could drive a large allocation.

`storm.messaging.netty.authentication` defaults to false, and the decoder runs before the handler that
enforces it in any case, so no credentials are required. The attacker needs only TCP reachability to a
worker port.

The effect of a single frame at the default 768 MB worker heap has not been measured to distinguish
sustained worker loss from transient garbage-collection pressure. The severity assigned to this advisory
reflects the more conservative reading; consumers who require a precise figure should test against their own
worker heap configuration.

Mitigation

Upgrade to 3.1.0, where frames are decoded only after the handshake completes.

Users who cannot upgrade immediately should ensure that worker slot ports are reachable only from within the
cluster, as the security model already recommends, and should enable
`storm.messaging.netty.authentication` where the deployment permits it.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82435

