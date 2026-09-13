X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/13
Message-ID: <eceb3663-10b0-7495-c9ff-d7dd2d870b2a@apache.org>
Date: Sun, 13 Sep 2026 05:46:22 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82433: Apache Storm Nimbus, Apache Storm UI: Disclosure of Unredacted Daemon Configuration via Nimbus and the UI 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Nimbus (org.apache.storm:storm-server) 3.0.0 before 3.1.0
- Apache Storm UI (org.apache.storm:storm-webapp) 3.0.0 before 3.1.0

Description:

Description

`getNimbusConf` returned the complete daemon configuration without redaction after only a user-level
authorization check. Where the cluster is configured with them, that response includes
`storm.zookeeper.auth.payload` and the keystore and truststore passwords for the Thrift, Netty and
ZooKeeper TLS configuration. The project masks passwords elsewhere before display, so the omission here is
inconsistent rather than intended.

The UI endpoint `/api/v1/cluster/configuration` compounded this. It carried no `@...hNimbusOp` annotation,
and the authorization filter treated a missing annotation as "no gate required" and returned immediately, so
the endpoint applied no per-user check at all and proxied the request under the UI daemon's own principal.
Any user able to pass `ui.filter` therefore received the full configuration, including principals that
Nimbus itself would have refused. 

Mitigation

Upgrade to 3.1.0, where credential-bearing values are masked before the configuration is served and where
every UI API endpoint must declare its authorization explicitly.

Users who cannot upgrade immediately should place the UI behind an authenticating reverse proxy that
restricts `/api/v1/cluster/configuration`, and should rotate the ZooKeeper authentication payload and any
TLS keystore or truststore passwords that were reachable through it.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82433

