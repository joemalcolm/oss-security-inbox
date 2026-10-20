X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/35
Message-ID: <CA+c_x6mqXn5xtwfeDxCJb3U6+M8MO7JMr_hq6NGyaQbx0kajBg@mail.gmail.com>
Date: Tue, 20 Oct 2026 20:38:18 +0000
From: Yusuf Can TURK <iamcanturk@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-28403, CVE-2026-28412: Textream (macOS) < 1.5.1 local WebSocket server: missing Origin check and unlimited connections
Content-Type: text/plain; charset=utf-8

Hello,

Two issues in Textream, an open-source macOS teleprompter app
(https://github.com/f/textream
<https://www.google.com/url?q=https://github.com/f/textream&source=gmail&ust=1792615097455000&sa=E>),
were fixed in version 1.5.1.
Both affect its local WebSocket server ("DirectorServer").

CVE-2026-28403 (CVSS 7.6): Cross-Site WebSocket Hijacking. The server
accepted connections from any origin and did not check the Origin header
during the handshake. A web page open in the user's browser could connect
to it and send commands.
Fix: f5ebad82750b9313386c34af8f0ede50c213a8a0

CVE-2026-28412 (CVSS 6.5): Uncontrolled resource consumption. The server
had no limit on concurrent connections. Together with a 100 ms broadcast
timer, flooding it exhausted CPU and memory and could freeze the app during
a live session.
Fix: 3524fa96f98ba17025b48ce9e19d49d859fc2ec1

Affected: Textream < 1.5.1. Fixed: 1.5.1.

Advisories:
https://github.com/f/textream/security/advisories/GHSA-wr3v-x247-337w
<https://www.google.com/url?q=https://github.com/f/textream/security/advisories/GHSA-wr3v-x247-337w&source=gmail&ust=1792615097456000&sa=E>
https://github.com/f/textream/security/advisories/GHSA-qr5p-7x47-qxh9
<https://www.google.com/url?q=https://github.com/f/textream/security/advisories/GHSA-qr5p-7x47-qxh9&source=gmail&ust=1792615097456000&sa=E>

Write-ups:
https://iamcanturk.dev/en/security/cve-2026-28403/
<https://www.google.com/url?q=https://iamcanturk.dev/en/security/cve-2026-28403/&source=gmail&ust=1792615097456000&sa=E>
https://iamcanturk.dev/en/security/cve-2026-28412/
<https://www.google.com/url?q=https://iamcanturk.dev/en/security/cve-2026-28412/&source=gmail&ust=1792615097456000&sa=E>

Credit: Can Türk (reporter).

--
Can Türk
https://iamcanturk.dev
<https://www.google.com/url?q=https://iamcanturk.dev&source=gmail&ust=1792615097456000&sa=E>

