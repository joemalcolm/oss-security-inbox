X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/3
Message-ID: <ee7ce65b-3aaf-b1bc-5be3-969f918b62e1@apache.org>
Date: Sun, 26 Apr 2026 18:06:00 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-33453: Apache Camel: CoAP URI Query Parameter to Exchange Header Injection in camel-coap Allows Single-Packet Pre-Auth Remote Code Execution 
Content-Type: text/plain; charset=utf-8

Severity: High 

Affected versions:

- Apache Camel (org.apache.camel:camel-coap) 4.14.0 through 4.14.5
- Apache Camel (org.apache.camel:camel-coap) 4.18.0 before 4.18.1
- Apache Camel (org.apache.camel:camel-coap) 4.19.0

Description:

Improperly Controlled Modification of Dynamically-Determined Object Attributes vulnerability in Apache Camel Camel-Coap component.

Apache Camel's camel-coap component is vulnerable to Camel message header injection, leading to remote code execution when routes forward CoAP requests to header-sensitive producers (e.g. camel-exec)

The camel-coap component maps incoming CoAP request URI query parameters directly into Camel Exchange In message headers without applying any HeaderFilterStrategy.    
Specifically, CamelCoapResource.handleRequest() iterates over OptionSet.getUriQuery() and calls camelExchange.getIn().setHeader(...) for every query parameter. CoAPEndpoint extends DefaultEndpoint rather than DefaultHeaderFilterStrategyEndpoint, and CoAPComponent does not implement HeaderFilterStrategyComponent; the component contains no references to HeaderFilterStrategy at all.

As a result, an unauthenticated attacker who can send a single CoAP UDP packet to a Camel route consuming from coap:// can inject arbitrary Camel internal headers (those prefixed with Camel*) into the Exchange. When the route delivers the message to a header-sensitive producer such as camel-exec, camel-sql, camel-bean, camel-file, or template components (camel-freemarker, camel-velocity), the injected headers can alter the producer's behavior. In the case of camel-exec, the CamelExecCommandExecutable and CamelExecCommandArgs headers override the executable and arguments configured on the endpoint, resulting in arbitrary OS command execution under the privileges of the Camel process.

The producer's output is written back to the Exchange body and returned in the CoAP response payload by CamelCoapResource, giving the attacker an interactive RCE channel without any need for out-of-band exfiltration.
                                                                                                                                                                         
Exploitation prerequisites are minimal: a single unauthenticated UDP datagram to the CoAP port (default 5683). CoAP (RFC 7252) has no built-in authentication, and DTLS is optional and disabled by default. Because the protocol is UDP-based, HTTP-layer WAF/IDS controls do not apply.
This issue affects Apache Camel: from 4.14.0 through 4.14.5, from 4.18.0 before 4.18.1, 4.19.0.

Users are recommended to upgrade to version 4.18.1 or 4.19.0, fixing the issue.

This issue is being tracked as CAMEL-23222 

Credit:

Hyunwoo Kim (@v4bel) (finder)

References:

https://camel.apache.org/security/CVE-2026-33453.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-33453
https://issues.apache.org/jira/browse/CAMEL-23222

