X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/30
Message-ID: <CAARiyJo0katbnSo0hbmyy8hJAOz6pGaf0LbBnR7XUizUZpvt4w@mail.gmail.com>
Date: Fri, 23 Oct 2026 19:01:50 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Godot 4.x: heap out-of-bounds read in OptimizedTranslation message lookup
Content-Type: text/plain; charset=utf-8

Follow-up: the fix for this issue has been merged upstream.

PR #124701, "Fix out-of-bounds reads with corrupt OptimizedTranslation
data", merged to master on 2026-10-20 (merge commit 9e0d5af850):
https://github.com/godotengine/godot/pull/124701
The patch validates bucket and string offsets in new _get_bucket and
_get_string helpers, used by both get_message and
get_translated_message_list, and adds input bounds checks to the
bundled smaz decompressor.

The 3.x backport PR #124703 applies the same validation to
PHashTranslation and merged on 2026-10-22.

Tomasz Kaye
