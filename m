X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/23
Message-ID: <f466e65d-2507-b8e9-e9c8-735e480f1c7c@apache.org>
Date: Fri, 06 Nov 2026 17:24:18 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123753: Apache Axis2/Java: SSRF via WS-Addressing ReplyTo and FaultTo endpoints 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Axis2/Java before 2.0.2

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache Axis2/Java. An unauthenticated caller could supply a non-anonymous WS-Addressing wsa:ReplyTo or wsa:FaultTo address, and Axis2 would open a connection to that address to deliver the response or fault, allowing requests to internal hosts and delivery of response content to a host of the caller's choosing. From 2.0.2, decoupled responses are refused unless allowNonAnonymousResponseEndpoints is enabled, and enabled endpoints are restricted by scheme and screened at both the header-parsing and transport-selection layers. This issue affects Apache Axis2/Java: through 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://github.com/apache/axis-axis2-java-core/commit/1671a68660df39459bf22f7b00309e2a8e782117
https://github.com/apache/axis-axis2-java-core/commit/1b6856b4d7903780786c79327bed1b53ea051a15
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-123753

