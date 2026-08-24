X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/14
Message-ID: <d82bc254-01de-44a3-7b9b-b6c0336222e9@apache.org>
Date: Mon, 24 Aug 2026 14:09:03 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78329: Apache Camel: Camel-Undertow: the endpoint discarded the undertow-specific header filter strategy in favour of the base HTTP one, so the undertow filtering never ran on endpoint-configured routes 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-undertow) 4.11.0 before 4.14.9
- Apache Camel (org.apache.camel:camel-undertow) 4.15.0 before 4.18.4
- Apache Camel (org.apache.camel:camel-undertow) 4.19.0 before 4.22.0

Description:

Improper input validation vulnerability in Apache Camel Undertow component.



This issue affects Apache Camel: from 4.11.0 before 4.14.9, from 4.15.0 before 4.18.4, from 4.19.0 before 4.22.0.



UndertowEndpoint defaulted its headerFilterStrategy field to the base HttpHeaderFilterStrategy and pushed that instance into the UndertowHttpBinding it creates lazily, overwriting the UndertowHeaderFilterStrategy that DefaultUndertowHttpBinding installs in its own constructor. Unless a deployment supplied a custom binding or an explicit headerFilterStrategy, the undertow-specific filtering therefore never executed on endpoint-configured routes: the strategy object was constructed and immediately replaced before it could be consulted. The consequence is that the legacy websocket. Exchange-header prefix was not filtered at the undertow transport boundary in either direction, so an undertow HTTP consumer mapped inbound wire headers of that form onto the Exchange, where an undertow WebSocket producer reads them as dispatch directives and can be made to deliver to a peer other than the one the route selected; and header names that undertow itself does not accept were mapped onto the Exchange rather than being skipped. Rest DSL consumers were never affected, because UndertowComponent assigns UndertowRestHeaderFilterStrategy explicitly, which extends the undertow strategy. This is not a regression of CVE-2025-30177: the base HttpHeaderFilterStrategy configures the inbound Camel-prefix filter itself, so the protection introduced by that advisory continued to work through the base class and was never lost. What the change did was leave the undertow strategy orphaned on the endpoint path, with the effect that two subsequent corrections written into it - one skipping header names undertow rejects, one filtering the legacy websocket. prefix in both directions - were applied to a class the endpoint no longer used and never took effect in the releases that shipped them.



Users are recommended to upgrade to version 4.22.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.9. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.4. For deployments that cannot upgrade immediately, configure the strategy explicitly rather than relying on the default, for example by binding an UndertowHeaderFilterStrategy in the registry and referencing it on the endpoint as undertow:http://0.0.0.0:8080/foo?headerFilterStrategy=#myStrategy, and additionally strip the dispatch headers at the trust boundary with removeHeaders(“websocket.*”). Note a residual limitation that upgrading does not remove: the undertow component deliberately keeps the websocket. values as part of its externally visible API contract, and UndertowProducer reads them with in.getHeader, which does not consult a HeaderFilterStrategy at all. The restored filtering is therefore defence in depth at the undertow transport boundary only. A route that carries an untrusted message from a non-undertow consumer into an undertow producer is not protected by this fix and must strip those headers itself.

Credit:

Andrea Cosentino from Apache Software Foundation (finder)
Barak Srour from Apiiro (finder)
Andrea Cosentino from Apache Software Foundation (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-78329.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-78329

