X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/23
Message-ID: <f2a70ce8-b7a8-45f7-a924-103afc105096@gmail.com>
Date: Sun, 13 Sep 2026 21:39:29 +0200
From: Gabriel Ravier <gabravier@...il.com>
To: oss-security@...ts.openwall.com, Richard Zowalla <rzo1@...che.org>
Subject: Re: CVE-2026-82434: Apache Storm Nimbus, Apache Storm Client: Disclosure of the Topology ZooKeeper Credential to Read-Only Users and to Logs
Content-Type: text/plain; charset=utf-8

On 9/13/26 7:46 AM, Richard Zowalla wrote:
> Severity:


This vulnerability was filed without a severity? Or is it missing from here?

>
> Affected versions:
>
> - Apache Storm Nimbus (org.apache.storm:storm-server) 3.0.0 before 3.1.0
> - Apache Storm Client (org.apache.storm:storm-client) 3.0.0 before 3.1.0
>
> Description:
>
> Description
>
> When ZooKeeper authentication is configured, Storm deliberately retains
> `storm.zookeeper.topology.auth.payload` in the topology configuration, because workers need it. Nimbus then
> served that configuration verbatim to any caller holding read-only topology permissions, so a user whose
> only grant was the ability to view a topology received its ZooKeeper credential.
>
> That credential is not read-only. The cluster state implementation uses write-capable ACLs for worker
> heartbeats, backpressure and error state, so a recipient can forge or remove that state for the topology
> concerned. It is not a write credential on assignments.
>
> The same advisory covers the submission client, which logged the generated payload at INFO on every
> submission that generated one, and the SASL handlers, which logged it at DEBUG. The credential therefore
> also reached any log aggregation or support bundle collected from the cluster.
>
> Mitigation
>
> Upgrade to 3.1.0, where the payload is removed from the configuration served to read-only callers and is no
> longer written to logs.
>
> Users who cannot upgrade immediately should rotate `storm.zookeeper.topology.auth.payload` for existing
> topologies, review retained logs and support bundles for the value, and restrict read-only topology
> permissions to trusted principals.
>
> Credit
>
> The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.
>
> Credit:
>
> The ASF using Claude Agents (finder)
>
> References:
>
> https://storm.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2026-82434
>

