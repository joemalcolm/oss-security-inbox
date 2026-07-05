X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/11
Message-ID: <6daf5168-33fb-64d7-8189-4c0bfae1dddc@apache.org>
Date: Sun, 05 Jul 2026 12:00:01 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46584: Apache Camel: Camel-Mail: The mail producer applied attacker-supplied mail.smtp.* / mail.smtps.* message headers as JavaMail session properties, allowing an attacker to weaken the SMTP transport security and, on releases before 4.19.0, redirect the connection and steal 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-mail) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-mail) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-mail) 4.19.0 before r

Description:

Improper Input Validation, Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache Camel Mail Component.

The camel-mail producer (MailProducer.getSender) scanned the outgoing Exchange for message headers in the mail.smtp. / mail.smtps. namespace and, when any were present, built a per-message JavaMail sender with those values applied as JavaMail session properties, overriding the endpoint configuration. This namespace is Camel-internal - only MailProducer interprets it - and was not blocked by any HeaderFilterStrategy, so the values could originate from any inbound protocol (for example platform-http query parameters or request headers, or JMS / Kafka messages from untrusted producers) that feeds a route ending in an smtp / smtps producer without an intervening removeHeaders. The maximal impact is version-dependent: on releases before 4.19.0, setting mail.smtp.host redirects the SMTP connection to a server under the attacker's control, and because the producer then authenticates with the endpoint's configured username and password those credentials are transmitted to the attacker; on 4.19.0 and later the producer connects to the endpoint's configured host explicitly, so the reachable impact is limited to weakening transport security (for example mail.smtp.ssl.trust, mail.smtp.starttls.enable or mail.smtp.socks.host) and interception of the outgoing message rather than host redirect. Exploitation requires a route that channels untrusted input into the mail producer without stripping the namespace.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. After upgrading, the per-message override is disabled by default; enable it only on trusted endpoints with useJavaMailSessionPropertiesFromHeaders=true. For deployments that cannot upgrade immediately, strip the namespace before the mail producer with removeHeaders('mail.smtp.*') and removeHeaders('mail.smtps.*') between any untrusted ingress and the smtp / smtps producer. Even with the opt-in enabled, route authors should still strip the namespace on any path that carries untrusted input.

Credit:

Yu Bao from PayPal (finder)

References:

https://camel.apache.org/security/CVE-2026-46584.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46584

