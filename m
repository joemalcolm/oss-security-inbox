X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/7
Message-ID: <6ad13075.209e6232.116456.79df@mx.google.com>
Date: Thu, 15 Oct 2026 12:58:45 -0700 (PDT)
From: eddyflores100@...il.com
To: oss-security@...ts.openwall.com
Subject: FOLLOW-UP: taikotalent.xyz fake-recruiter trojan — RESOLVED (registrar clientHold 2026-10-10)
Content-Type: text/plain; charset=utf-8

Follow-up: taikotalent.xyz fake-recruiter trojan — RESOLVED (registrar clientHold 2026-10-10)

Summary for the list: the campaign previously disclosed here (fake "Engineering opening - Taiko" emails leading to a paste-in-terminal bash stager "deepfake_guard", 49,916 B, SHA-256 c7c22e322c..., C2 api.gaganata.ink, base64 second stage /var/tmp/.kdm.*, anti-forensic self-deletion) has been taken down.

Timeline:
- 2026-10-05: reported to AWS Trust & Safety (case P01M4696RCMDN90PYQGW7NJHGT0), Resend, Taiko.
- 2026-10-09: payload still live and byte-identical; disclosure expanded (IoC gist, GitHub repo with YARA, dev.to write-up, GitLab snippet, Telegraph mirror); infrastructure mapped via RDAP (NameCheap registrar, 193.160.32.10 payload host, Cloudflare-fronted C2); abuse reports to all three providers + blocklists + media.
- 2026-10-10 02:39 UTC: registrar applied clientHold to taikotalent.xyz (~12 h after the live-payload follow-up).
- 2026-10-15: verified dead - no DNS for portal/subdomains, payload unreachable, hold in place. Domain lifetime 13 days. Remnant: C2 still resolves behind Cloudflare (404 at root), final report in flight.

Full updated evidence: https://github.com/eddyflores100-lang/taikotalent-phishing-iocs (IoCs, YARA, timeline) - takedown write-up: https://telegra.ph/The-takedown-that-worked-a-fake-recruiter-trojan-died-12-hours-after-the-last-evidence-backed-report-10-15

Edison Flores - AliceLabs
