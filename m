X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/8
Message-ID: <4e745ebe-9a28-3ae3-2ce2-6a07fa196f21@apache.org>
Date: Fri, 23 Oct 2026 07:36:09 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-95628: Apache Camel: Camel-Docling Custom CLI Argument Path Validation Does Not Reject Absolute Paths (Incomplete Fix of CVE-2026-40047) 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 5.4 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:L

Affected versions:

- Apache Camel (org.apache.camel:camel-docling) 4.15.0 before 4.18.5
- Apache Camel (org.apache.camel:camel-docling) 4.19.0 before 4.22.2

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') vulnerability in Apache Camel Docling component.



This issue affects Apache Camel: from 4.15.0 before 4.18.5, from 4.19.0 before 4.22.2.



DoclingProducer builds the command line of the external docling tool and appends to it the custom arguments supplied in the CamelDoclingCustomArguments header, a list of strings whose flags the fix for CVE-2026-40047 restricted to an allowlist. That fix also introduced validatePathSafety to keep path-like argument values inside the intended directory, but the method only looked for relative traversal: it rejected a value containing a traversal sequence such as ../ and a value whose normalized form still held a .. element. It never checked whether a value was an absolute path, and an absolute path without traversal segments contains neither, so it passed unchanged. Every path-like value went through this check, whether it was a separate list element following its flag or was attached to the flag after an equals sign, so an absolute path was accepted in either form, for example as the directory given to the allowlisted --artifacts-path flag, which tells docling where to find its model artifacts. Such a value reached the docling command line as given, so a party able to choose the custom arguments could point the docling process at any directory the Camel process can access, outside the working directory that the check was meant to keep path values in, which is the outcome the CVE-2026-40047 fix set out to prevent. Only the CLI mode, which is the default, passes custom arguments to docling. The header belongs to the Camel header namespace, which consumers applying Camel's default header filtering, such as the JMS and Kafka consumers, remove from incoming messages, so the issue is reached where a route forwards externally influenced values into the header or where a consumer maps incoming headers without that filtering.



Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.2. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. The 4.15.x to 4.17.x and 4.19.x to 4.21.x release lines reached end of life before this issue was resolved and will not receive a fix, so deployments on them must move to a supported release. For deployments that cannot upgrade immediately, do not build the CamelDoclingCustomArguments header from values that originate outside the deployment, remove that header from messages that arrive from outside before they reach a docling endpoint, and make sure that consumers which map incoming message headers drop the Camel header namespace, so that only the route itself chooses the custom arguments.

Solution:

Upgrade to Apache Camel 4.23.0, which fixes the issue. Users on the 4.22.x stream should upgrade to 4.22.2 and users on the 4.18.x stream should upgrade to 4.18.5. The validatePathSafety helper now also rejects a path-like custom-argument value that is an absolute path, whether it is given as a separate list element or attached to its flag, so every path-valued flag on the allowlist is covered; a relative value without traversal segments is still accepted. The 4.15.x to 4.17.x and 4.19.x to 4.21.x release lines reached end of life before this issue was resolved and will not receive a fix, so deployments on them must move to a supported release.

Work Arounds:

Do not build the CamelDoclingCustomArguments header from values that originate outside the deployment, remove that header from messages that arrive from outside before they reach a docling endpoint, and make sure that consumers which map incoming message headers drop the Camel header namespace, so that only the route itself chooses the custom arguments.

Credit:

Zhixi "Jace" Sun, independent security researcher (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-95628.html
https://issues.apache.org/jira/browse/CAMEL-24893
https://github.com/apache/camel/pull/26738
https://github.com/apache/camel/pull/26743
https://github.com/apache/camel/pull/26744
https://camel.apache.org/security/CVE-2026-40047.html
https://camel.apache.org/security/CVE-2026-78163.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-95628

