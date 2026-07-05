X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/10
Message-ID: <6f5ded35-a455-3ea0-465f-d2ad7d0e92c9@apache.org>
Date: Sun, 05 Jul 2026 12:00:47 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46457: Apache Camel: Camel-NATS: Inbound NATS message headers are mapped into the Exchange without a configured HeaderFilterStrategy, allowing a client that can publish to the subject to inject Camel control headers 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-nats) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-nats) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-nats) 4.19.0 before 4.21.0

Description:

Improper Input Validation vulnerability in Apache Camel NATS component.

The camel-nats component maps inbound NATS message headers into the Camel Exchange but defaulted its headerFilterStrategy to a bare new DefaultHeaderFilterStrategy() with no inbound rules configured (NatsConfiguration). With no inFilter, inFilterPattern or inFilterStartsWith set, DefaultHeaderFilterStrategy.applyFilterToExternalHeaders returns not filtered for every header name, so NatsConsumer copies every NATS message header - including Camel-internal control headers such as CamelHttpUri, CamelFileName or CamelSqlQuery - unmodified onto the Camel message. A client able to publish to the consumed NATS subject can therefore inject arbitrary Camel control headers that influence the behaviour of downstream producers in the route (for example redirecting an HTTP producer, changing a file name, or overriding a query); the injected headers also persist across internal direct, seda and vm hops. The concrete downstream impact depends on which producers the route uses. NATS message headers require NATS 2.2 or later, and the issue is reachable without credentials when the NATS server is configured without authentication (the NATS server default).
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. The fix makes camel-nats default to a dedicated NatsHeaderFilterStrategy that filters the Camel header namespace case-insensitively on inbound mapping, so client-supplied Camel* / camel* headers are no longer copied into the Exchange. For deployments that cannot upgrade immediately, strip the Camel control headers from inbound NATS messages before they reach any downstream producer (for example removeHeaders('Camel*') and removeHeaders('camel*') at the start of the route), and enable authentication on the NATS server so that only trusted clients can publish to the consumed subject.

Credit:

Yu Bao from PayPal (finder)

References:

https://camel.apache.org/security/CVE-2026-46457.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46457

