X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/7
Message-ID: <CADk+mPD_i3kRqud=XBWLBSXqtNLiEhajJScqTPG3u93vXTp-kw@mail.gmail.com>
Date: Tue, 17 Nov 2026 17:00:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog GHSA-cg8j-rwxh-vrg3: malformed JSON from option.json templates
Content-Type: text/plain; charset=utf-8

A JSON escaping defect in rsyslog string/list templates with
option.json="on" affects releases beginning with v8.23.0. When a field
value consists only of double quotes and/or backslashes,
runtime/template.c can return from its JSON precheck without escaping
it. A template that inserts the field into a JSON string can then emit
malformed JSON. A sender must control a field used by an affected
template; remote unauthenticated access is deployment dependent.

The reproduced effect is malformed output and rejection of the
affected record by a strict JSON parser. We have not established
injection, neighboring-record loss, or batch dropping by a named
downstream service. The separate property format="json" path was a
control and was not affected in our test.

Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-cg8j-rwxh-vrg3
Severity: Medium, CVSS 3.1 5.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N)
CWE: CWE-116
Affected upstream versions: >= 8.23.0
Fixed upstream version: 2026-11-17 daily stable
CVE: CVE-2026-129839
Credit: Manyo9

The source fix changes the JSON precheck in runtime/template.c so that
it stops at the first quote or backslash and lets the existing
replacement loop escape the value.

The source-only patch is attached as source-only-candidate-e422479031.patch.
Patch SHA-256: 32e5deb04929d7c5d014cf8d5aa9cd0a9a4dbc93f02229a703ab8e8a93708c21.

Disclosure: 2026-11-17 16:00 UTC / 17:00 CET / 11:00 EST.

Rainer Gerhards
rsyslog lead maintainer

Download attachment "source-only-candidate-e422479031.patch" of type "application/x-patch" (682 bytes)
