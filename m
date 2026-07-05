X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/9
Message-ID: <5c5effee-410f-6676-b1cd-a499fe0e488f@apache.org>
Date: Sun, 05 Jul 2026 12:01:29 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46456: Apache Camel: Camel-AWS2-SQS: Inbound message attributes are mapped into the Exchange without an inbound HeaderFilterStrategy, allowing a message sender to inject Camel control headers 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-aws2-sqs) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-aws2-sqs) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-aws2-sqs) 4.19.0 before 4.21.0

Description:

Improper Input Validation vulnerability in Apache Camel AWS2-SQS Component.


The camel-aws2-sqs component map inbound message attributes into the Camel Exchange through a component-specific HeaderFilterStrategy. Sqs2HeaderFilterStrategy configured only an outbound filter (setOutFilterPattern, which blocks Camel*, breadcrumbId and org.apache.camel.* headers being written to the broker) but did not configure an inbound filter. As a result, when Sqs2Consumer copies each SQS MessageAttribute into the Exchange via HeaderFilterStrategy.applyFilterToExternalHeaders, DefaultHeaderFilterStrategy applied no inbound rule and treated every header name as not filtered - including Camel-internal control headers such as CamelHttpUri, CamelFileName or CamelSqlQuery - copying them unmodified onto the Camel message. Any principal able to send messages to the consumed SQS queue (for example a cross-account sender or a lower-privileged in-account component holding sqs:SendMessage) could therefore set arbitrary Camel control headers that influence the behaviour of downstream producers in the route (for example redirecting an HTTP producer, changing a file name, or overriding a query); the injected headers also persist across internal direct, seda and vm hops. The concrete downstream impact depends on which producers the route uses.


This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. The fix adds an inbound HeaderFilterStrategy rule to Sqs2HeaderFilterStrategy that filters the Camel header namespace case-insensitively on inbound mapping, so sender-supplied Camel* / camel* headers are no longer copied into the Exchange. For deployments that cannot upgrade immediately, strip the Camel control headers from inbound messages before they reach any downstream producer (for example removeHeaders('Camel*') and removeHeaders('camel*') at the start of the route), and restrict who may send to the consumed SQS queue by applying least-privilege sqs:SendMessage permissions on the queue resource policy.

Credit:

Yu Bao from Paypal (finder)

References:

https://camel.apache.org/security/CVE-2026-46456.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46456

