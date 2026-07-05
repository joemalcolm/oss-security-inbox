X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/20
Message-ID: <4c1d439c-76f3-8db0-436e-04c9bf6ddf25@apache.org>
Date: Sun, 05 Jul 2026 11:52:57 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48206: Apache Camel: Camel-JIRA: A set of non-Camel-prefixed Exchange header constants (IssueKey, ProjectKey, IssueTransitionId, ...) bypass the HTTP header filter, allowing an HTTP client to drive arbitrary JIRA issue operations using the endpoint's configured credentials 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-jira) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-jira) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-jira) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Authorization Bypass Through User-Controlled Key vulnerability in Apache Camel JIRA component.

The camel-jira producers read their operation parameters - the issue key, project key, transition id, summary, type, assignee, components, watchers, link type, work-log minutes and others - from Exchange message headers. The header constants defined in JiraConstants (for example ISSUE_KEY = IssueKey, ISSUE_PROJECT_KEY = ProjectKey, ISSUE_TRANSITION_ID = IssueTransitionId, LINK_TYPE = linkType) used plain, non-Camel-prefixed values. Because these names do not start with the Camel / camel prefix, HttpHeaderFilterStrategy - which blocks only the Camel header namespace on the HTTP boundary - let them pass from an inbound HTTP request straight into the Exchange. In a route that bridges an HTTP consumer (for example platform-http) into a jira: producer, any HTTP client could therefore supply these headers and override the values the route intended, driving JIRA operations against the configured JIRA instance with the endpoint's configured service-account credentials - for example deleting or transitioning an arbitrary issue (via IssueKey / IssueTransitionId), creating an issue in a different project (via ProjectKey), modifying issue fields, adding or removing watchers, or logging work. The operations are bounded by what the configured service account is permitted to do. No credentials are required from the attacker when the bridging consumer is unauthenticated.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. After upgrading, routes that drive JIRA operations via the raw header names must use the CamelJira* names (for example CamelJiraIssueKey) instead of the old values. For deployments that cannot upgrade immediately, strip the camel-jira control headers from any untrusted ingress before the jira: producer (for example removing the IssueKey, ProjectKey, IssueTransitionId and related headers at the start of the route), and set the required JIRA operation parameters from a trusted source.

Credit:

Yu Bao from PayPal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-48206.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48206

