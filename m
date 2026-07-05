X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/26
Message-ID: <a96b6092-6964-1834-ed9f-7455e1842076@apache.org>
Date: Sun, 05 Jul 2026 11:49:04 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53913: Apache Camel: Camel-Keycloak: KeycloakSecurityPolicy verifies the bearer access token only inside its role and permission checks, so in the default configuration (no required roles or permissions) the token is never verified and any non-null bearer value is accepted - a 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel (org.apache.camel:camel-keycloak) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-keycloak) 4.19.0 before 4.21.0

Description:

Improper Authentication, Missing Authentication for Critical Function, Not Failing Securely ('Failing Open') vulnerability in Apache Camel Keycloak Component.

The KeycloakSecurityPolicy of camel-keycloak guards a route by running KeycloakSecurityProcessor.beforeProcess(), which performs three checks in sequence: it rejects a request that carries no access token, then - only if requiredRoles is non-empty - validates the roles, and - only if requiredPermissions is non-empty - validates the permissions. The actual cryptographic verification of the bearer access token (signature, issuer and expiry for a local JWT, or active-state and issuer for token introspection) is performed exclusively inside those role and permission checks. KeycloakSecurityPolicy defaults requiredRoles and requiredPermissions to empty - which is the documented 'Basic Setup' - so on a route configured that way the role and permission checks are skipped and the access token is therefore never verified. The token-presence check still rejects a missing token, but an invalid token is accepted: any non-null value in the Authorization: Bearer header - including an arbitrary string or a forged, unsigned JWT - passes the policy and the request reaches the protected route, with no signature, issuer or expiry check and no request to Keycloak. The token is read from the inbound request header because allowTokenFromHeader defaults to true. Because the normal reason to place a route behind this policy is that the route performs server-side work, the bypass results in unauthenticated access to that work; where the protected route forwards to a code-execution-capable producer, it can result in unauthenticated remote code execution. This defect is independent of CVE-2026-23552: that issue concerned the issuer claim and was fixed by adding a check inside the verification routine, but here the verification routine is not reached at all in the default configuration, so the defect remains.
This issue affects Apache Camel: from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. For deployments that cannot upgrade immediately, configure a non-empty requiredRoles or requiredPermissions on every KeycloakSecurityPolicy so that the token-verification path is exercised, set allowTokenFromHeader to false where the token is not expected from the request header, or perform token verification at the framework layer ahead of the policy.

Credit:

Lidor Ben Shitrit from Novee Security (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-53913.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-53913

