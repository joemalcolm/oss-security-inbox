X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/4
Message-ID: <53066e01-a7c2-84e5-82fd-8150e924f909@apache.org>
Date: Tue, 03 Nov 2026 09:02:14 +0000
From: Qingran Zhao <zhaoqingran@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-114442: Apache HertzBeat: incomplete XPath expression validation in aliasFields 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HertzBeat 1.7.1
- Apache HertzBeat 1.7.2
- Apache HertzBeat 1.7.3
- Apache HertzBeat 1.8.0
- Apache HertzBeat 1.9.0
- Apache HertzBeat 1.9.1 unaffected

Description:

Apache HertzBeat versions 1.7.1, 1.7.2, 1.7.3, 1.8.0, and 1.9.0 have incomplete XPath expression validation in the HTTP collector XML parsing path. An authenticated user with permission to create monitor templates can supply XPath expressions through metrics.aliasFields that are evaluated without the validation applied to parseScript. When processing a crafted XML response, repeated evaluation may consume excessive CPU resources and impair collector availability. This is a follow-up to the incomplete fix for CVE-2026-24343. The fix is included in Apache HertzBeat 1.9.1. Users should upgrade to 1.9.1 or a later version.

Credit:

xutao (finder)

References:

https://github.com/apache/hertzbeat/pull/4481
https://hertzbeat.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-114442

