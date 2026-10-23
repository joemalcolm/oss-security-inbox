X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/28
Message-ID: <CAARiyJpf-5ZKGHFDkiV=TfuwUsAGU5iRUuR-SpnE6Z8wj7A6Bg@mail.gmail.com>
Date: Fri, 23 Oct 2026 19:01:09 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Godot 4.x: heap out-of-bounds write in Radiance HDR image loader
Content-Type: text/plain; charset=utf-8

Follow-up: the fix for this issue has been merged upstream.

PR #124697, "Fix out-of-bounds write when loading corrupt HDR images",
merged to master on 2026-10-20 (merge commit aef8e1f55a):
https://github.com/godotengine/godot/pull/124697
The patch rejects non-positive and oversized image dimensions and
bounds each RLE run and dump against the remaining scanline width.

The PR body cites CVE-2026-110734 and states the vendor's position on
the bug: "We don't consider it severe, but it's still a bug that
should be fixed."

Tomasz Kaye
