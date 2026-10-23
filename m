X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/10
Message-ID: <fc68fd10-7e88-196e-0e64-8c607d1b6f3e@apache.org>
Date: Fri, 23 Oct 2026 07:32:12 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-95663: Apache Camel: Camel-Keycloak Security Policy Accepts Expired Access Tokens Because Cached Token Introspection Results Are Not Bounded by the Token Expiry 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 4.8 (medium) CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:N

Affected versions:

- Apache Camel (org.apache.camel:camel-keycloak) 4.16.0 before 4.18.5
- Apache Camel (org.apache.camel:camel-keycloak) 4.19.0 before 4.22.2

Description:

Insufficient Session Expiration vulnerability in Apache Camel Keycloak component.



This issue affects Apache Camel: from 4.16.0 before 4.18.5, from 4.19.0 before 4.22.2.



When token introspection is enabled on the camel-keycloak KeycloakSecurityPolicy (useTokenIntrospection=true), the security processor validates the access token of a request by sending it to Keycloak's OAuth 2.0 token introspection endpoint, and accepts the token while the response reports it as active. The introspection endpoint reports a token as inactive once its exp (expiration) time has passed, so on this path the active flag is what enforces token expiry. Introspection results are cached by default (introspectionCacheEnabled=true, introspectionCacheTtl=60 seconds), and both cache implementations shipped with the component, ConcurrentMapTokenCache and CaffeineTokenCache, expired an entry a fixed time after it was inserted, without bounding that lifetime by the exp claim that the cached response already carried. KeycloakSecurityProcessor in turn checked only the active flag of the result, on every path that uses introspection, and never compared exp with the current time. A response cached shortly before the token expired was therefore served to later requests carrying the same token for up to the configured time-to-live after the token's expiry, and those requests were admitted with the roles and permissions the expired token had carried, although RFC 7662, which defines token introspection, states that a response containing exp must not be cached beyond that time. The access token is supplied by the caller with each request, typically as a bearer token in the Authorization header, so a caller holding a token that was valid moments earlier could keep using it after it expired, for as long as the cached entry lived. The window is bounded by introspectionCacheTtl, which is 60 seconds by default and 300 to 600 seconds where the documentation's recommendation for internal services was followed, and it opens only for a token that the same Camel process introspected and cached while the token was still active. The issue grants nothing beyond what the token already carried: it allows no token forgery and no privilege escalation, and token introspection is not enabled by default, which is why the severity is assessed medium. The local JWT verification path, used when introspection is disabled, is not affected by this issue.



Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.2. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. The 4.16.x, 4.17.x and 4.19.x to 4.21.x release lines reached end of life before this issue was resolved and will not receive a fix, so deployments on them must move to a supported release. For deployments that cannot upgrade immediately, set introspectionCacheEnabled=false on the KeycloakSecurityPolicy, so that every request is checked against the introspection endpoint, which reports an expired token as inactive, at the cost of one introspection call per request. Lowering introspectionCacheTtl only narrows the window and does not close it.

Solution:

Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.2. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. Both cache implementations now bound the lifetime of each entry by the shorter of introspectionCacheTtl and the time remaining until the token's exp, a result whose token has already expired is never served from the cache, and KeycloakSecurityProcessor now rejects a token whose exp lies in the past on every path that uses introspection, so expiry is enforced on the introspection path as it is on the local JWT verification path. The 4.16.x, 4.17.x and 4.19.x to 4.21.x releases streams reached end of life before this issue was resolved and will not receive a fix, so deployments on those lines must move to a supported release.

Work Arounds:

For deployments that cannot upgrade immediately, set introspectionCacheEnabled=false on the KeycloakSecurityPolicy, so that every request is checked against the introspection endpoint, which reports an expired token as inactive, at the cost of one introspection call per request. Lowering introspectionCacheTtl only narrows the window and does not close it.

Credit:

Andrea Cosentino from Apache Software Foundation (finder)
Andrea Cosentino from Apache Software Foundation (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-95663.html
https://issues.apache.org/jira/browse/CAMEL-24902
https://github.com/apache/camel/pull/26747
https://github.com/apache/camel/pull/27182
https://github.com/apache/camel/pull/27183
https://camel.apache.org/security/CVE-2026-46455.html
https://camel.apache.org/security/CVE-2026-85301.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-95663

