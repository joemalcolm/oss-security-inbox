X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/2
Message-ID: <CAARiyJp20xi0Px11PuKx7kOUuOfC3skyTbCNbLuZADt4EMEf4w@mail.gmail.com>
Date: Thu, 15 Oct 2026 11:36:55 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Godot 4.x: heap out-of-bounds read in OptimizedTranslation message lookup
Content-Type: text/plain; charset=utf-8

Follow-up: a CVE identifier has been assigned for this issue.

CVE-2026-110736 — record: https://www.cve.org/CVERecord?id=CVE-2026-110736

The record is tagged "disputed"; the description quotes the supplier
position ("no security issues"). MITRE scored it
CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:L/I:N/A:L (3.6). I have filed a
reconsideration request with MITRE's CVE Numbering Authority of Last
Resort (CNA-LR), asking for
CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:L (6.1). NVD analysis is
pending.

Still unpatched upstream as of 2026-10-15.

Tomasz Kaye
