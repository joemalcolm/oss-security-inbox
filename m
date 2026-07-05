X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/16
Message-ID: <ac5f5b63-1097-6439-017d-6e939f9a4a64@apache.org>
Date: Sun, 05 Jul 2026 11:55:57 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46726: Apache Camel: Camel-Vertx-Websocket: The inbound consumer maps externally-supplied WebSocket query and path parameters into the Exchange without a HeaderFilterStrategy, allowing injection of Camel control headers - enabling server-side request forgery and disclosure of 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel (org.apache.camel:camel-vertx-websocket) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-vertx-websocket) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-vertx-websocket) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Exposure of Sensitive Information to an Unauthorized Actor, Server-Side Request Forgery (SSRF) vulnerability in Apache Camel in Vertx Websocket component.

The camel-vertx-websocket consumer mapped inbound WebSocket query and path parameters into the Camel Exchange header map without applying any HeaderFilterStrategy (VertxWebsocketConsumer.populateExchangeHeaders()). Because nothing blocked the Camel header namespace, a client connecting to the WebSocket endpoint could set Camel-internal control headers - including CamelHttpUri (Exchange.HTTP_URI) - simply by supplying them as query parameters. In a route where the WebSocket consumer feeds a downstream HTTP producer, the injected CamelHttpUri redirects the server-side HTTP request to an attacker-chosen destination (server-side request forgery - for example to an internal service or a cloud metadata endpoint). In addition, the HTTP producer resolves Camel property placeholders on the resulting (attacker-controlled) URI, so placeholders embedded in the injected value - such as an environment-variable reference, an application property, or a vault reference - are resolved to their real values and sent to the attacker, disclosing environment variables, application properties and vault secrets. When the WebSocket endpoint is exposed without authentication, this is reachable by an unauthenticated remote attacker.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. The fix makes the affected consumers apply a HeaderFilterStrategy that filters the Camel header namespace case-insensitively on inbound mapping, so externally-supplied Camel* / camel* headers are no longer copied into the Exchange. For deployments that cannot upgrade immediately, strip the Camel control headers from the inbound message before they reach any downstream producer (for example removeHeaders('Camel*') and removeHeaders('camel*') at the start of the route), require authentication on the WebSocket endpoint, and avoid bridging an untrusted consumer directly into an HTTP producer whose target URI can be driven from message headers.

Credit:

Kamalpreet Singh (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-46726.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46726

