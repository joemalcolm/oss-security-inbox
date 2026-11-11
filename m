X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/26
Message-ID: <CADk+mPBJrNEk62Rq3HtZiK-LZ1r7n7=1wchW-M2im2vzUkzqvw@mail.gmail.com>
Date: Wed, 11 Nov 2026 20:10:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93404: rsyslog 8.1901.0 through pre-2026-11-11 daily stable omclickhouse SQL injection
Content-Type: text/plain; charset=utf-8

An SQL injection issue affects rsyslog deployments using the optional
omclickhouse output module. The module is not loaded by default.

CVE: CVE-2026-93404
Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-8rx7-ww92-p4vr

The built-in ClickHouse INSERT template used SQL escaping that did not
account for ClickHouse backslash escapes. A sender able to submit a log
message routed to an affected action could alter the SQL sent to ClickHouse,
potentially forging stored log records or evaluating expressions with the
configured ClickHouse account's privileges.

Affected deployments use the built-in template or a custom INSERT template
with option.stdsql="on". The issue was introduced in rsyslog 8.1901.0. In
8.1901.0 the built-in template lacked a required SQL mode, while custom
stdSQL templates were exposed. Later releases used the vulnerable built-in
stdSQL template.

The source fix is attached. It changes the built-in template to
backslash-aware SQL escaping and requires custom string/list templates to
use option.sql="on". Plugin and subtree templates are rejected because
their renderers bypass ordinary field escaping. Operators can disable the
affected action or use a reviewed custom string/list template with
option.sql="on" until they can deploy a fixed build.

The designated fixed-version label is 2026-11-11 daily stable. This label
does not establish that any particular binary package is available;
distributions should verify their own build and package status. The source
patch and advisory are available at disclosure independently of upstream
merge and binary publication.

Severity: High; no CVSS vector has been assigned.
Credit: Found by Anthropic using Claude and manually validated by
David Korczynski of Ada Logics.

Regards,
Rainer Gerhards
rsyslog project

Minimal source patch: see the attached .patch file (preserved without
line wrapping).

View attachment "rsyslog-CVE-2026-93404-minimal-20261108.patch" of type "text/plain" (4078 bytes)
