X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/2
Message-ID: <87y0cl3vsz.fsf@gentoo.org>
Date: Mon, 28 Sep 2026 22:33:48 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: JIT buffer overflow fixed in libpcre2-10.49
Content-Type: text/plain; charset=utf-8

From https://github.com/PCRE2Project/pcre2/releases/tag/pcre2-10.49
"""
This is a security-only release, to address GHSA-r9hj-j2rw-4q3m.

Compared to 10.48, this release has only a minimal code change to
prevent an out-of-bounds write with arbitrary data. An
attacker-controlled regular expression is required. Applications are
affected only when they use pcre2_jit_stack_create() and
pcre2_jit_stack_assign() to provide a growable JIT stack, then match a
pattern with unusually high JIT stack usage, such as one containing a
large number of capturing groups.

The implications of an out-of-bounds write could include arbitrary code
execution.

The issue is not a regression and affects releases 10.48 and
earlier. Users should upgrade to 10.49. Backport patches for supported
earlier releases are listed in SUPPORT-LIFECYCLE.md.

This release is available as a signed Git tag, or alternatively as a
signed tarball of the Git tag (attestation).
"""

My default response to these is always "OK, how realistic is
attacker-controlled $X?", but libpcre2's maintainers are quite sensible,
and indeed, reading the advisory [0], it had some interesting detail.

Quoting just a bit of that:
"""
Summary

Maintainer note: This vulnerability is not specific to phpMyAdmin, and may affect other PHP software, and other software using PCRE2.

While testing phpMyAdmin 5.2.3, I developed a lab proof of concept that
achieved command execution through phpMyAdmin's use of an attacker-controlled
regular expression. Root-cause analysis of the memory corruption led to an
independent vulnerability in the PCRE2 8-bit JIT.

An attacker-controlled pattern can make the JIT write below its stack mapping.
The escaped writes can corrupt a separate allocation and include pointers into
the attacker-controlled subject buffer.

I reproduced the issue with clean official PCRE2 10.48 builds on
Linux/AArch64, macOS/ARM64, and macOS/x86_64 under Rosetta. The same stack
boundary failure is also present in PCRE2 10.42 with an earlier trigger. I have
not identified the first affected release or tested other JIT backends.
"""

[I'm reluctant to just paste the whole advisory text from my browser but
haven't looked to see if there's a convenient way to get a plaintext
advisory from GHSAs, like GitHub supports for PRs & commits (.patch +
.diff). If someone is aware of such a way, let me know please!]

[0] https://github.com/PCRE2Project/pcre2/security/advisories/GHSA-r9hj-j2rw-4q3m

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
