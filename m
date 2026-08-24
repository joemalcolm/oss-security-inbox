X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/9
Message-ID: <e2197fcb-b1d2-c5f1-7fa3-422e03e7de33@apache.org>
Date: Mon, 24 Aug 2026 14:06:18 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63621: Apache Camel: Camel-Knative: CloudEvent extension fields received in structured content mode were mapped onto message headers without applying any header filter strategy 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-knative) 3.15.0 before 4.14.9
- Apache Camel (org.apache.camel:camel-knative) 4.15.0 before 4.18.4
- Apache Camel (org.apache.camel:camel-knative) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Improper Neutralization of Special Elements in Output Used by a Downstream Component ('Injection') vulnerability in Apache Camel Knative component

The Knative consumer in camel-knative maps inbound CloudEvent attributes onto Camel message headers. In binary content mode the HTTP-header path filters Camel-internal headers through KnativeHttpHeaderFilterStrategy, but in structured content mode (Content-Type application/cloudevents+json) the CloudEvent extension fields are read directly from the JSON body and every extension key is copied into the Exchange headers without applying any HeaderFilterStrategy (CloudEventProcessors, spec versions 1.0, 1.0.1 and 1.0.2). As a result, an unauthenticated attacker can inject Camel-internal headers (e.g. CamelHttpUri, CamelHttpPath, CamelFileName) via a structured-mode CloudEvent request, matched case-insensitively against Camel's header map. When a route forwards messages from a Knative consumer to a header-driven component such as camel-http or camel-file, the injected headers override configured values, enabling server-side request forgery (SSRF), path traversal or message-dispatch redirection depending on the route. This is an incomplete fix of the inbound header filtering previously added for the binary content-mode path, and is the same pattern addressed in camel-cxf/camel-knative (CVE-2026-47323), camel-undertow (CVE-2025-30177), the broader incoming-header filter (CVE-2025-27636 and CVE-2025-29891), and the non-HTTP strategies (CVE-2026-40453).


This issue affects Apache Camel: from 3.15.0 before 4.14.9, from 4.15.0 before 4.18.4, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.22.0, which fixes the issue. If users are on the 4.18.x LTS releases stream, then they are suggested to upgrade to 4.18.4. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.9. The non-LTS releases 4.15.0 through 4.17.0 and 4.19.0 through 4.21.0 are affected but do not receive a maintenance fix; users on those versions should upgrade to 4.18.4 or 4.22.0.

Credit:

Andrea Cosentino (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-63621.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63621

