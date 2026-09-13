X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/18
Message-ID: <2d0b8309-a01b-385b-e44b-3f4a6e0ed5a4@apache.org>
Date: Sun, 13 Sep 2026 05:48:14 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82439: Apache Storm DRPC: Unauthenticated Unbounded Memory Growth in DRPC 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm DRPC (org.apache.storm:storm-server) 3.0.0 before 3.1.0

Description:

Description

The DRPC server kept a map from function name to request queue and created an entry the first time a
function name was seen. No code path ever removed an entry: request cleanup removed the request from its
queue, and the shutdown path drained queues, but the queue object and its map entry remained for the life of
the process.

Function names come from the client and are not constrained to functions any topology has registered, so the
number of retained entries is bounded only by the number of distinct names an attacker chooses to send, and
each retained entry holds the name itself. `drpc.authorizer` is unset by default, so no credentials are
required to reach the endpoint.

The retained state is permanent rather than a transient load spike, so the effect accumulates until the DRPC
server exhausts its heap.

Mitigation

Upgrade to 3.1.0, where a function's queue is removed once nothing is waiting in it.

Users who cannot upgrade immediately should configure `drpc.authorizer` so that only trusted principals can
reach the DRPC endpoints, and should ensure the DRPC ports are not reachable from untrusted networks.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82439

