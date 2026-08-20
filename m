X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/6
Message-ID: <87y0e1tqbi.fsf@gentoo.org>
Date: Thu, 20 Aug 2026 04:37:37 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: libmspack: heap buffer overflow in make_decode_table() (Huffman decode table construction) -- CVE requested
Content-Type: text/plain; charset=utf-8

Sumit Chakraborty <sumit.ch2004@...il.com> writes:

> Hi all,
>
> Reporting a memory-safety issue found via independent source audit of
> libmspack (https://github.com/kyz/libmspack), a small C library for
> Microsoft compression formats (CAB, CHM, LIT, HLP, KWAJ, SZDD) used by
> cabextract and vendored by ClamAV (libclammspack), among others.

Thanks for sharing and bringing it to the list.

>
> Summary: make_decode_table() in mspack/readhuff.h -- the shared Huffman
> decode-table builder used across the library's CAB/CHM/LZX decoders -- does
> not validate that its input code-length array satisfies Kraft's inequality
> before building extension nodes for long codes. A crafted, format-legal
> length distribution can cause it to write past the end of the
> caller-allocated decode table while still returning success, giving the
> caller no indication anything went wrong.
>
> I've confirmed this is reachable through real library API calls with a
> hand-crafted input file, not just direct/synthetic function calls, and
> precisely measured the resulting out-of-bounds write. I'm holding back
> further technical detail (exact trigger conditions, PoC construction,
> affected call sites) pending coordinated disclosure.
>
> Reported to the maintainer (Stuart Caie) directly by email on 2026-08-16.
> No CVE currently assigned. Requesting a CVE ID be reserved for tracking;
> full technical writeup and PoC will follow once a fix is available or a
> reasonable disclosure window has passed.

I'm not sure if I follow the purpose of the email. If you'd like to
handle disclosure to distros, you can use the linux-distros@ or distros@
mailing list as appropriate, provided you're able & willing to follow
the rules at
https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters.

If you're *not* interested in doing that, then we'd IMO generally like to
see some link to a bug report (that had gone unfixed), or a patch or PoC
or something. As it stands, all this post seems to signal is: there's a
bug; you found a bug; the maintainer knows about it; there is not much
actionable to remedy the bug.

It's not strictly wrong to post what you have but it's unusual and I am
not sure who or what it helps.

Am I missing something here? What was your intent with posting it at
this stage?

>
> Happy to share full details privately with anyone who needs them for triage
> (distro security teams, downstream maintainers, etc.) -- just reach out
> directly.
>
> Thanks,
> Sumit Chakraborty

thanks,
sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
