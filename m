X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/25/3
Message-ID: <3a6e7252-aa72-5c9b-8f85-87761a86c7bd@apache.org>
Date: Sat, 25 Apr 2026 16:59:41 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41081: Apache Storm Client: Anonymous principal assigned on TLS client certificate verification failure 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Client (org.apache.storm:storm-client) before 2.8.7

Description:

Improper Handling of TLS Client Authentication Failure Leading to Anonymous Principal Assignment in Apache Storm

Versions Affected: up to 2.8.7

Description: When TLS transport is enabled in Apache Storm without requiring client certificate authentication (the default configuration), the TlsTransportPlugin assigns a fallback principal (CN=ANONYMOUS) if no client certificate is presented or if certificate verification fails. The underlying SSLPeerUnverifiedException is caught and suppressed rather than rejecting the connection.

This fail-open behavior means an unauthenticated client can establish a TLS connection and receive a valid principal identity. If the configured authorizer (e.g., SimpleACLAuthorizer) does not explicitly deny access to CN=ANONYMOUS, this may result in unauthorized access to Storm services. The condition is logged at debug level only, reducing visibility in production.

Impact: Unauthenticated clients may be assigned a principal identity, potentially bypassing authorization in permissive or misconfigured environments.

Mitigation: Users should upgrade to 2.8.7 in which TLS authentication failures are handled in a fail-closed manner.

Users who cannot upgrade immediately should:
- Enable mandatory client certificate authentication (nimbus.thrift.tls.client.auth.required: true)
- Ensure authorization rules explicitly deny access to CN=ANONYMOUS
- Review all ACL configurations for implicit default-allow behavior

Credit:

K (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41081

