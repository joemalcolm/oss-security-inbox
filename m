X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/26/2
Message-ID: <areTHR70amCNWd8i@definition.pseudorandom.co.uk>
Date: Sat, 26 Sep 2026 10:40:45 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-100310: GNU libextractor < 1.16 Privilege Escalation via LIBEXTRACTOR_PREFIX
Content-Type: text/plain; charset=utf-8

On Fri, 25 Sep 2026 at 22:26:57 +0000, Haitam Lazaar wrote:
>GNU libextractor before 1.16 uses getenv("LIBEXTRACTOR_PREFIX") in
>`src/main/extractor_plugpath.c` (`get_installation_paths()`) to
>determine plugin search paths without checking whether the calling
>process is running with elevated privileges (setuid/setgid).

Was this library advertised as being safe for use in setuid, setgid or 
otherwise privileged processes? Looking at its description in my package 
manager ("provides developers of file-sharing networks, file managers, 
and WWW-indexing bots with a universal library to obtain meta-data about 
files") I don't immediately see why it would be appropriate for a setuid 
program to use this.

I think it's going to scale incredibly badly if every shared library 
that calls getenv() is going to get a CVE just because it could 
conceivably be used by a setuid program: there are a lot of shared 
libraries in the world, and most of them aren't designed to be part of a 
security boundary.

Some libraries *have to* trust environment variables because that's part 
of their API, and not doing so would be a major compatibility break - 
for example, all X11 implementations are expected to trust $DISPLAY, 
because that's part of how X11 was designed, and an X11 library that 
stopped accepting $DISPLAY would not be doing its job. Using libX11 or 
libxcb in a setuid process would be widely regarded as unsafe, but isn't 
the same equally true for something like GNU libextractor?

It's the setuid program that has been designed to do something unusual 
(being installed with the setuid bit set, so that it will run with 
privileges higher than those of its caller), so I think it should be the 
setuid program maintainer's responsibility to take care to only link 
libraries that are designed and documented to be safe to use in setuid 
programs.

I'm not saying that libextractor has no security-relevant surface area - 
if it can be crashed or subverted by a crafted/malicious media file, 
like CVE-2026-91752, then that's a valid vulnerability - but I don't 
think that hypothetically being used by a setuid program is something 
that the security community should consider to be part of its threat 
model.

     smcv
