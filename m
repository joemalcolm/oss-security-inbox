X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/30
Message-ID: <343d135e-f5a1-c5a2-0c60-e97539c5c0e4@apache.org>
Date: Sun, 05 Jul 2026 11:45:55 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56140: Apache Camel: Camel-AWS2-SNS: An inbound Camel-namespace filter was added to Sns2HeaderFilterStrategy to align it with sibling components; because camel-aws2-sns is producer-only (no consumer) there is no reachable inbound header-injection path, so this is a defense-in- 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Camel (org.apache.camel:camel-aws2-sns) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-aws2-sns) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-aws2-sns) 4.19.0 before 4.21.0

Description:

Improper Input Validation vulnerability in Apache Camel AWS SNS component.


The camel-aws2-sns component filters Camel headers through a component-specific HeaderFilterStrategy, Sns2HeaderFilterStrategy. Like the sibling Sqs2HeaderFilterStrategy, it originally configured only an outbound filter (setOutFilterPattern, which blocks Camel*, breadcrumbId and org.apache.camel.* headers from being written out) and did not configure an inbound filter rule. For the related camel-aws2-sqs component this inbound gap was exploitable, because the Sqs2Consumer maps inbound SQS message attributes into the Camel Exchange via HeaderFilterStrategy.applyFilterToExternalHeaders, allowing a message sender to inject Camel control headers (tracked as CVE-2026-46456). camel-aws2-sns, by contrast, is producer-only: Sns2Endpoint does not support consumers (createConsumer throws UnsupportedOperationException, 'You cannot receive messages from this endpoint'), so no externally-supplied message attributes are ever mapped inbound into a Camel Exchange through SNS, and the missing inbound filter rule on Sns2HeaderFilterStrategy was therefore not reachable by an attacker. As part of the same fix (CAMEL-23506), an inbound filter rule (setInFilterStartsWith for the Camel namespace) was added to Sns2HeaderFilterStrategy so that its configuration matches the corrected Sqs2HeaderFilterStrategy and the other sibling strategies. This is a defense-in-depth alignment with no known exploit path in camel-aws2-sns.


This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

This is a defense-in-depth hardening change with no known exploit path in camel-aws2-sns, which is producer-only, so no urgent action or workaround is required. Users who want the aligned behaviour can upgrade to version 4.21.0, or to 4.14.8 on the 4.14.x LTS releases stream, or to 4.18.3 on the 4.18.x releases stream, which contain the change. As a general best practice, operators should continue to apply least-privilege IAM permissions on their SNS topics.

Credit:

Yu Bao from PayPal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-56140.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56140

