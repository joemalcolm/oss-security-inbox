X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/10
Message-ID: <CADk+mPAxZ=ZnzvnyRTs4eCGSSQQY4CCxZ=CgQi=5DXFVi+5j_g@mail.gmail.com>
Date: Tue, 17 Nov 2026 17:00:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog imuxsock trusted-property attribution spoofing (GHSA-w259-2hhm-9vr7)
Content-Type: text/plain; charset=utf-8

rsyslog has fixed a local integrity issue in imuxsock plain
trusted-property annotation.

When annotation is enabled in plain mode, a local process can include
field delimiters in its process name or executable path. The resulting
annotation can contain duplicate-looking identity fields. A downstream
consumer that treats these unescaped fields as kernel-derived identity
may misattribute the sender.

The issue requires Linux, a writable affected Unix log socket,
imuxsock annotation enabled, and Annotate="on" with
ParseTrusted="off". Annotation is disabled by default.
ParseTrusted="on" JSON output is not affected.

Severity: Low, CVSS 3.1 3.3 (CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N)
CWE: CWE-117
Affected upstream versions: >= 5.9.4
Fixed upstream version: 2026-11-17 daily stable
CVE: CVE-2026-129838
Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-w259-2hhm-9vr7

The fix quotes and escapes string-valued plain trusted properties and
bounds buffer growth for the encoded representation. As workarounds,
disable imuxsock annotation where it is unnecessary or, where
operationally compatible, use ParseTrusted="on".

The attached source-only patch is from private PR #16 exact head
b513ab996aced2db5271b7255a98caab4a7f8a21. Patch SHA-256:
09c7cb64f24e7a5ae47141094f78ecabdd706b7cd0db120685ffdd1cf76faa76.

Credit: discovered by Rainer Gerhards during an internal AI-assisted
review of imuxsock using Claude Code.

Disclosure: 2026-11-17 16:00 UTC / 17:00 CET / 11:00 EST.

Rainer Gerhards
rsyslog lead maintainer

Download attachment "GHSA-w259-2hhm-9vr7-source-only-b513ab9.patch" of type "application/x-patch" (7956 bytes)
