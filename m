X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/3
Message-Id: <59F8CAED-4A91-4C2E-AC77-14F1CCE04436@apache.org>
Date: Thu, 12 Nov 2026 14:30:02 +0100
From: Markus Jung <jungm@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache TomEE: 38 CVEs addressed in 10.3.0 and 11.0.0-M2 (combined announcement)
Content-Type: text/plain; charset=utf-8

On 10 November 2026, the Apache TomEE project published 38 security
advisories on users@...ee.apache.org. This message consolidates those
announcements for oss-security.

Apache TomEE 10.3.0 and 11.0.0-M2 fix 26 of the vulnerabilities. The
other 12 affect optional modules removed from both releases: the
embedded OpenEJB HTTP server, Hessian remoting, and the SSH
administration shell. There is no fixed version of those removed
modules. If upgrading is not yet possible, restrict access to those
services from untrusted clients or stop using them.

We recommend upgrading to 10.3.0 or 11.0.0-M2 and reading the
corresponding migration guide, since several security fixes change
default behavior.

Full descriptions, affected version ranges, credits, and links to
the individual announcements are at:
https://tomee.apache.org/security/tomee.html

Migration guides:
https://tomee.apache.org/10.3.0/migration-guide.html
https://tomee.apache.org/11.0.0-M2/migration-guide.html

Fixed vulnerabilities (26)
--------------------------

Important:
CVE-2026-86336 EJB method authorization is silently skipped on JDK 21+
CVE-2026-111244 Authorization bypass in MicroProfile JWT role checks
for JAX-RS resources
CVE-2026-111257 Well-known administrative credentials created at startup
CVE-2026-111261 Authentication bypass with empty password in LDAP
identity store
CVE-2026-111264 Authentication bypass on EJB web service endpoints
via HTTP method

Moderate:
CVE-2026-86811 Path traversal via stateful EJB passivation
CVE-2026-87755 Stateful session bean hijacking via predictable
session identifiers
CVE-2026-87756 Missing authorization on internal deployer EJBs
in default profile
CVE-2026-87758 Missing TLS hostname verification in ejbds
client connections
CVE-2026-97849 Derby network service listens on all interfaces
CVE-2026-97867 Database credential disclosure via remote JNDI lookup
CVE-2026-111240 Authentication bypass for accounts without a stored
password in SQL login module
CVE-2026-111241 Local code execution via predictable passivation files
in the shared temporary directory
CVE-2026-111242 Privilege escalation via leaked MicroProfile JWT
run-as identity
CVE-2026-111245 Privilege escalation via WS-Security caller identity
leaking between requests
CVE-2026-111247 Privilege escalation via user name matching a role name
CVE-2026-111251 Unauthenticated server shutdown via the admin port
CVE-2026-111258 Security constraint bypass via request routing
CVE-2026-111259 Predictable HTTP session identifiers in embedded server
CVE-2026-111262 LDAP injection in LDAP identity store
CVE-2026-111263 Missing authentication on EJB web service endpoints
deployed in a web application

Low:
CVE-2026-86532 Username enumeration and timing side channel in
JAAS login modules
CVE-2026-111243 Expired MicroProfile JWT tokens accepted with
negative clock skew
CVE-2026-111248 Authentication with the stored password digest in
Tomcat user identity store
CVE-2026-111249 Unauthenticated LiveReload endpoint reachable
from the network
CVE-2026-111260 Predictable OpenID Connect state and nonce values

Vulnerabilities in removed optional modules (12)
-------------------------------------------------

Moderate:
CVE-2026-86531 DoS via unbounded request body and multipart handling
in embedded HTTP server
CVE-2026-97870 Missing authentication for Hessian endpoints in
embedded HTTP server
CVE-2026-97872 Authentication bypass of Hessian EJB endpoints due to
ignored security settings
CVE-2026-97874 Authentication bypass for Hessian endpoints in
non-root web applications
CVE-2026-97880 Authentication bypass in the embedded HTTP server for
endpoints protected by HTTP Basic authentication
CVE-2026-97881 Path traversal in embedded HTTP server static
resource handling
CVE-2026-97888 Caller identity leaks across requests in embedded
HTTP server
CVE-2026-111239 Code execution by any authenticated user via the SSH
administration shell
CVE-2026-111250 Authentication bypass via programmatic authentication
in embedded HTTP server
CVE-2026-111256 Missing authentication for web service endpoints in
embedded HTTP server

Low:
CVE-2026-97890 Session fixation in embedded HTTP server
CVE-2026-111246 HTTP sessions shared across web applications in
embedded HTTP server

Apache TomEE PMC
