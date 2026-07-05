X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/19
Message-ID: <c70dec44-4d0f-f447-bdf7-addf8cf35567@apache.org>
Date: Sun, 05 Jul 2026 11:53:41 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48205: Apache Camel: Camel-DNS: The dns.* and term Exchange header constants used non-Camel-prefixed names that bypass the HTTP header filter, allowing an HTTP client to redirect DNS queries to an attacker-controlled server (server-side request forgery) and enumerate internal 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-dns) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-dns) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-dns) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Server-Side Request Forgery (SSRF) vulnerability in Apache Camel DNS component.

The camel-dns producers read DNS operation parameters - the resolver to query, the name or domain to look up, the record type and class, and the search term - from Exchange message headers whose constant values (DnsConstants.DNS_SERVER, DNS_NAME, DNS_DOMAIN, DNS_TYPE, DNS_CLASS, TERM) were the plain strings dns.server, dns.name, dns.domain, dns.type, dns.class and term. Because these names do not start with the Camel / camel prefix, HttpHeaderFilterStrategy - which blocks only the Camel header namespace on the HTTP boundary - let them pass from an inbound HTTP request straight into the Exchange. In a route that bridges an HTTP consumer (for example platform-http) into a dns: producer, any HTTP client could therefore set the dns.server header to make the dig producer build a SimpleResolver pointing at an attacker-controlled DNS server - a server-side request forgery via DNS, through which the attacker observes the queried name and can return poisoned responses - and set the dns.name / dns.domain headers to resolve arbitrary internal hostnames, disclosing whether they exist (internal network reconnaissance). No credentials are required when the bridging consumer is unauthenticated.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. After upgrading, routes that drive DNS operations via the raw header names must use CamelDnsServer / CamelDnsName / CamelDnsDomain / CamelDnsType / CamelDnsClass / CamelDnsTerm instead of the dns.* / term names. For deployments that cannot upgrade immediately, strip the dns.* and term headers from any untrusted ingress before the dns: producer, and set the DNS server and lookup parameters from a trusted source in the route.

Credit:

Yu Bao from PayPal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-48205.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48205

