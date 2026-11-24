X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/17
Message-ID: <CADk+mPDF2+AXo0Asu9qguvg9Z4zNQuqagKQjx2hDBO7JPToJvw@mail.gmail.com>
Date: Tue, 24 Nov 2026 09:32:38 -0800
From: rgerhards@...scon.com
To: oss-security@...ts.openwall.com
Subject: Re: rsyslog: omdtls name/fingerprint modes do not verify DTLS server identity (CVE-2026-132145)
Content-Type: text/plain; charset=utf-8

Hello,

Follow-up to the rsyslog omdtls announcement (GHSA-85fj-w7cw-38fv,
CVE-2026-132145): the fix has been merged.

Commit: https://github.com/rsyslog/rsyslog/commit/be4ff24ea1c6f362bca0e45366a205aeaba88eef
Pull request: https://github.com/rsyslog/rsyslog/pull/8065
Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-85fj-w7cw-38fv

The fix is contained in the 2026-11-24 daily stable build and will be
part of the next scheduled stable release. The advisory now lists
"2026-11-24 daily stable" as the patched version.

After updating, operators whose network target differs from the
certificate identity need to set tls.permittedpeer explicitly;
fingerprint mode requires a complete SHA-256 pin in tls.permittedpeer.

Regards,
Rainer Gerhards
rsyslog project
