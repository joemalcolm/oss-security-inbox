X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/4
Message-ID: <amxnYzp06coSRJa-@definition.pseudorandom.co.uk>
Date: Fri, 31 Jul 2026 10:14:11 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: 33 Vulnerabilities in cJSON
Content-Type: text/plain; charset=utf-8

On Thu, 30 Jul 2026 at 12:26:25 -0700, Collin Funk wrote:
>Alan Coopersmith <alan.coopersmith@...cle.com> writes:
>> https://cert.pl/en/posts/2026/07/CVE-2026-16554/ appears to cover
>> an unrelated vulnerability also disclosed this week.
>
>Does anyone actually use platforms with 32-bit size_t? I guess maybe
>some programs compiled for 32-bit x86 but run on x86_64?

Yes, people still compile and use i386 libraries on x86_64 systems to 
run legacy i386 binaries. On open-source OSs, in practice this mostly 
means proprietary games that were never ported to x86_64, like Portal 
(but could also mean e.g. firmware updaters, printer drivers, installers).

I happen to know that cJSON is used in at least some libraries that are 
relevant to the gaming use-case (GLVND and Vulkan-Loader), although any 
security issues in cJSON are hopefully not relevant for those libraries 
because they only parse trusted JSON: if an attacker was able to edit 
the JSON manifests describing EGL and Vulkan drivers, they'd be able to 
load arbitrary code into applications anyway.

     smcv
