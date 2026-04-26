X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/5
Message-ID: <6b5372b9-0c61-c386-e6c5-7187946ba39d@apache.org>
Date: Sun, 26 Apr 2026 18:07:43 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40022: Apache Camel: Camel-Platform-HTTP-Main: Authentication Bypass on Non-Root Context Paths in camel main runtime 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-platform-http-main) 4.14.1 before 4.14.6
- Apache Camel (org.apache.camel:camel-platform-http-main) 4.18.0 before 4.18.2

Description:

When authentication is enabled on the Apache Camel embedded HTTP server or embedded management server (camel-platform-http-main) and a non-root context path such as /api or /admin is configured via camel.server.path or camel.management.path, the BasicAuthenticationConfigurer and JWTAuthenticationConfigurer classes derive the authentication path from properties.getPath() when camel.server.authenticationPath / camel.management.authenticationPath is not explicitly set. Combined with the Vert.x sub-router mounting model - the sub-router is mounted at _path_* and the authentication handler is registered inside the sub-router at the resolved path - this causes the authentication handler to match only the exact configured context path, not its subpaths. Unauthenticated requests to subpaths such as /api/_route_ or /admin/observe/info therefore reach protected business routes and management endpoints without being challenged for credentials. The /observe/info endpoint can disclose runtime metadata such as the user, working directory, home directory, process ID, JVM and operating system information.

This issue affects Apache Camel: from 4.14.1 before 4.14.6, from 4.18.0 before 4.18.2.

Users are recommended to upgrade to version 4.20.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, they are suggested to upgrade to 4.14.6. If users are on the 4.18.x LTS releases stream, they are suggested to upgrade to 4.18.2.

Credit:

Jihang Yu (finder)

References:

https://camel.apache.org/security/CVE-2026-40022.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40022

