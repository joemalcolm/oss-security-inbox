X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/7
Message-ID: <ad4c1c6a-a293-5cdc-3361-87bcbf063146@apache.org>
Date: Sun, 05 Jul 2026 12:02:40 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46454: Apache Camel: Camel-Cometd: Inbound Bayeux message headers are mapped into the Exchange without a HeaderFilterStrategy, allowing unauthenticated clients to inject Camel control headers 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-cometd) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-cometd) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-cometd) 4.19.0 before 4.21.0

Description:

Improper Input Validation vulnerability in Apache Camel Cometd Component.

The camel-cometd component maps inbound Bayeux (CometD) message headers into the Camel Exchange without applying a HeaderFilterStrategy. CometdBinding.populateExchangeFromMessage copies the entire ext.CamelHeaders map supplied by the CometD client directly onto the Camel message (message.setHeaders), so any header name - including Camel-internal control headers such as CamelHttpUri, CamelFileName or CamelJmsDestinationName - is accepted unmodified. Because a CometdComponent installs no Bayeux SecurityPolicy by default, any client that can complete the Bayeux handshake against the CometD endpoint can publish such a message without authentication. An attacker can therefore inject arbitrary Camel control headers that influence the behaviour of downstream producers in the route (for example redirecting an HTTP producer, changing a file name, or overriding a JMS destination); the injected headers also persist across internal direct, seda and vm hops. The concrete downstream impact depends on which producers the route uses.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. The fix implements a HeaderFilterStrategy in the camel-cometd binding (a long-standing TODO in the code) that filters the Camel header namespace case-insensitively on inbound mapping, so client-supplied Camel* / camel* headers are no longer copied into the Exchange. For deployments that cannot upgrade immediately, strip the Camel control headers from inbound CometD messages before they reach any downstream producer (for example removeHeaders('Camel*') and removeHeaders('camel*') at the start of the route), and install an explicit Bayeux SecurityPolicy on the CometdComponent so that only authenticated clients can publish.

Credit:

Yu Bao from Paypal (finder)

References:

https://camel.apache.org/security/CVE-2026-46454.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46454

