X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/25
Message-ID: <1f3a6917-b1e0-4646-a21f-6034d338b868@apache.org>
Date: Sun, 05 Jul 2026 11:49:45 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49365: Apache Camel: Camel-Netty-HTTP: The muteException consumer option defaulted to false, so a processing error returned the full Java stack trace in the HTTP response body, disclosing sensitive internal information to unauthenticated clients 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-netty-http) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-netty-http) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-netty-http) 4.19.0 before 4.21.0

Description:

Generation of Error Message Containing Sensitive Information vulnerability in Apache Camel Netty HTTP component.

The camel-netty-http HTTP server consumer exposes a muteException option that controls what is returned to the client when a route processing error occurs. This option defaulted to false because the backing field was an uninitialised primitive boolean (Java's default of false), whereas the other Camel HTTP server components (camel-http / camel-jetty / camel-servlet and camel-platform-http) default it to true. With muteException=false, when a request triggers an exception during route processing the consumer writes the full Throwable stack trace into the HTTP response body as text/plain (via DefaultNettyHttpBinding) instead of returning an empty body. Any unauthenticated client that can reach the endpoint and cause a processing error - for example by sending a malformed request body, an invalid parameter, or otherwise triggering a route-internal failure - therefore receives a complete Java stack trace. Such a stack trace can disclose sensitive internal information, including credentials embedded in exception messages, internal host names and IP addresses, filesystem paths, dependency and version details, database and class names, and the application's internal structure, which an attacker can use to plan further attacks.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. For deployments that cannot upgrade immediately, set muteException=true explicitly on the camel-netty-http consumer (for example netty-http: http://0.0.0.0:8080/api?muteException=true , or globally via the camel.component.netty-http.configuration.mute-exception=true property), so that processing errors no longer return the stack trace to the client.

Credit:

Yu Bao from PayPal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-49365.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49365

