X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/30/1
Message-ID: <CAMKvgcTjbRCgp9w4tSOUdUOfrXHHJaigR6QNRY2eBMs1DUU8kg@mail.gmail.com>
Date: Sun, 30 Aug 2026 21:36:17 +0100
From: Kevin Backhouse <kevin.backhouse@...il.com>
To: oss-security@...ts.openwall.com
Subject: Exiv2 0.28.9 released
Content-Type: text/plain; charset=utf-8

Exiv2 version 0.28.9 is released today, with fixes for 1 moderate and 6 low
severity vulnerabilities. We are also planning to include a
security-related change in the upcoming 0.29.0 release: more details at the
end.

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-3695-mjv8-3r52
(moderate severity, CVE-2026-68546)
Out-of-bounds write in `RemoteIo::Impl::populateBlocks()`. The bug is in
the `RemoteIo` class, which is only used when Exiv2 is run on a URL, rather
than a local file. In other words, to trigger the bug, Exiv2 needs to be
run like this:

```bash
exiv2 https://dodgywebsite.com/poc.jpg
```

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-jcgh-p9v3-pw6j
(low severity, CVE-2026-68547)
Out-of-bounds read in `RemoteIo::Impl::populateBlocks()`. The bug is in the
`RemoteIo` class, which is only used when Exiv2 is run on a URL, rather
than a local file. In other words, to trigger the bug, Exiv2 needs to be
run like this:

```bash
exiv2 https://dodgywebsite.com/poc.jpg
```

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-hxph-pv7w-8649
(low severity, CVE-2026-49275)
Out-of-bounds read in `CrwMap::decodeBasic()`. The bug is reproducible with
our fuzz target, but we have not been able to reproduce it with the exiv2
command line application.

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-vg6c-9f6h-4x5q
(low severity, CVE requested)
Out-of-bounds write in `RemoteIo::mmap()`. The bug is in the `RemoteIo`
class, which is only used when Exiv2 is run on a URL, rather than a local
file. Furthermore, the bug is only triggered when using Exiv2 to list
available image previews (the `-pp` command line option). In other words,
to trigger the bug, Exiv2 needs to be run like this:

```bash
exiv2 -pp https://dodgywebsite.com/poc.jpg
```

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-9v3x-mhg4-wwv2
(low severity, CVE requested)
Out-of-bounds write in `Exiv2::http()`. The bug can only be triggered by
running Exiv2 on a URL, rather than a local file. The easiest way to
reproduce the bug is by calling Exiv2 with an unrealistically long command
line argument:

```bash
exiv2 -pa `python -c "print('http://127.0.0.1:8769/' + 'A' * 100000)"`
```

The above reproduction steps are a self-pwn, which would make this a
regular bug, not a vulnerability. However, we are treating it as a
vulnerability because there is also a possibility that the bug could be
triggered by a command like this:

```bash
exiv2 -Mset Exif.Image.Artist PwnMe https://dodgywebsite.com/poc.jpg
```

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-fgw8-p7pr-37cp
(low severity, CVE requested)
Denial of service in `QuickTimeVideo::userDataDecoder()`: an invalid input
file can cause `QuickTimeVideo::userDataDecoder()` to get stuck in an
infinite loop during parsing. The vulnerability can be triggered by running
Exiv2 on a crafted file, like this:

```bash
exiv2 poc.mov
```

### https://github.com/Exiv2/exiv2/security/advisories/GHSA-pwvq-9w4q-786w
(low severity, CVE requested)
Denial of service in `PgfImage::readMetadata()`. The vulnerability can be
triggered by running Exiv2 on a crafted file, like this:

```bash
exiv2 poc.pgf
```

This causes Exiv2 to rapidly allocate a very large amount of memory, which
can impact system performance.

## Security related note on the upcoming 0.29.0 release
We have been receiving a very large number of "denial of service"
vulnerability reports, all of them variations on the theme: "deeply nested
file causes stack exhaustion". Exiv2 uses recursion to parse image files,
so it is relatively easy for a crafted file to cause Exiv2 to run out of
stack. On Linux, there is a very simple solution to this issue, which is to
increase your stack size with the `ulimit` command. But that solution
doesn't work on macOS and Windows which have relatively low hard limits on
the stack size. So we are planning to fix this issue by adding a recursion
depth limit to all the parsers. Unfortunately, this will involve changing
libexiv2's public API, so we cannot do it in the 0.28.x series. We are
planning to include this change in the upcoming 0.29.0 release instead. For
more details on this issue, see https://github.com/Exiv2/exiv2/issues/9414

