Received: (qmail 18049 invoked by uid 550); 18 Feb 2026 16:39:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12253 invoked from network); 18 Feb 2026 10:29:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <93363667-8e34-0e9b-ce43-04896cf20365@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Feb 2026 10:28:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23552: Apache Camel: Camel-Keycloak: Cross-Realm Token Acceptance
 Bypass in KeycloakSecurityPolicy

Severity: important=20

Affected versions:

- Apache Camel (org.apache.camel:camel-keycloak) 4.15.0 before 4.18.0

Description:

Cross-Realm Token Acceptance Bypass in KeycloakSecurityPolicy Apache Camel =
Keycloak component.

This issue affects Apache Camel: from 4.15.0 before 4.18.0.

Users are recommended to upgrade to version 4.18.0, which fixes the issue.

This issue is being tracked as CAMEL-22854=20

Credit:

Andrea Cosentino (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-23552.html
https://github.com/oscerd/CVE-2026-23552
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23552
https://issues.apache.org/jira/browse/CAMEL-22854

