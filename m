X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/9
Message-ID: <CADk+mPBor7Bmivs+5wD7S2wXLEQUBmQ75GtE4tSjqAM8SKA1+g@mail.gmail.com>
Date: Tue, 17 Nov 2026 10:38:42 -0600
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog >= 5.7.1 imuxsock empty-TAG PID underwrite
Content-Type: text/plain; charset=utf-8

rsyslog imuxsock empty-TAG PID underwrite (local denial of service)

rsyslog has a local denial-of-service vulnerability in imuxsock's PID
rewriting path. When UsePIDFromSystem or SysSock.UsePIDFromSystem is
enabled, a local sender that can write to the affected Unix datagram
socket can submit a message with an empty TAG. The vulnerable fixPID()
implementation searches from an invalid offset and writes before the
TAG buffer. A fortified release build terminated on the demonstrated
input, allowing repeated interruption of rsyslogd.

The path also requires SCM_CREDENTIALS support and imuxsock's special
parser. The PID-rewriting options are disabled by default. No
confidentiality loss, integrity loss, or code execution has been
demonstrated.

Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-6rqh-v5w3-r7h4
CVE: CVE-2026-129832
Severity: Medium, CVSS 3.1 score 5.5
(CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)
CWE: CWE-124, Buffer Underwrite
Affected versions: rsyslog >= 5.7.1
Introduction commit: c2d36c6894f7c36c2aed23c1e7ee9580c58659a7
Fix commit: 817c4a8587536422b1b9718a94ab28d0146fec76
Fixed version: 2026-11-17 daily stable
Public disclosure: 2026-11-17 at 16:00 UTC / 17:00 CET / 11:00 EST

The fix bounds the backward scan to parsed TAG bytes, appends the PID
safely when the TAG is empty, preserves an existing PID and
trailing-colon behavior, and retains the capacity guard. Focused
regressions cover empty and nonempty TAGs, existing PID, trailing
colon, and near/full capacity.

Temporary mitigation: keep UsePIDFromSystem and
SysSock.UsePIDFromSystem disabled, or restrict access to the affected
imuxsock Unix socket.

Credit: reported and validated by Rainer Gerhards. The original
finding records AI assistance from Claude Code.

The source-only patch follows. Its SHA-256 is
b0c6c98ebea5a56c9890d5b595bc1223dbdca63866055100fbf137f6ebcbb496.

Download attachment "GHSA-6rqh-v5w3-r7h4-source-817c4a85.patch" of type "application/x-patch" (857 bytes)
