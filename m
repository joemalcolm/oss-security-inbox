X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/29
Message-ID: <CAARiyJpFYyfqWR8sRiZgugMjTBiDytDUFEAQZ=X9ndM0Htv9aA@mail.gmail.com>
Date: Fri, 23 Oct 2026 19:01:29 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Godot 4.x: heap out-of-bounds write via negative string length in binary resource loader
Content-Type: text/plain; charset=utf-8

Follow-up: the fix for this issue has been merged upstream.

PR #124699, "Fix heap overflow with invalid string length in binary
resources", merged to master on 2026-10-20 (merge commit d9f4c99f0a):
https://github.com/godotengine/godot/pull/124699
The patch rejects negative lengths, and lengths beyond the remaining
file size, in ResourceLoaderBinary::get_unicode_string and
get_ustring, and returns early on a zero length in get_ustring.

The 3.x backport PR #124700 merged on 2026-10-20 with one additional
change: parse_utf8 is given the string length, which closes an
out-of-bounds read on a file with a valid length and no null
terminator.

Tomasz Kaye
