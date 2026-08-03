X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/2
Message-ID: <20260803101132.5e86cb35@plasteblaster>
Date: Mon, 3 Aug 2026 10:11:32 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
To: <oss-security@...ts.openwall.com>
Subject: mpg123 release 1.33.7 with lots of security-relevant fixes
Content-Type: text/plain; charset=utf-8

Dear all,

among lots of little fixes in the current 1.33.7 release of mpg123
(https://mpg123.org/#2026-08-02), there are some more serious security
issues that might be relevant for this list.

I'll include the full changes list below. To highlight some:

- The Windows port with enabled unicode path handling had a stupid
  buffer overflow, possibly exploitable using remote playlists.

- OOB reads/writes for certain user-set parameters:

	mpg123 --continue --random --listentry <n>

	(where n > size of list)

	out123 --endian <e> --channels <x> --inputch <y>

	(where x != y)

	out123 --filter "a,b ,c,…"

	(whitespace before comma)

- Disclosure of uninitialized memory to servers via mpg123 --auth-file
  (no line ends in file).

- Deadlock in mpg123 --buffer <n> -e s24

  (for most values of n … only relevant if user chooses 24 bit encoding
  and very reliable, so probably no surprise to anyone, but a DoS in
  principle, if the encoding or buffer option is attacker-influenced)

There is a number of smaller and theoretical issues that you find when
you scan the code for possibilities (like size_t overflow in realloc).
The library APIs got some hardening against applications abusing them /
shooting themselves into the feet. It's amazing how many little
oversights accumulate, even if you thought you applied some care when
writing the code back then. I hope the LLM-assisted scanning doesn't
have that many more issues to find … as the supply of nights to devote
to the hobby on short notice is also not endless … (as you might notice
from the amount of typos in the list below).

I understand that CVEs for the more serious bugs are being requested by
reporter(s), but I do not have details and did not want to delay the
release.


1.33.7
------
- mpg123:
-- Fix heap buffer overflows in unicode path conversion on Windows (bug 388,
   thanks to Alejandro Ramos).
-- Fix information disclosure of uninitialied memory for --auth-file without
   line endings. (bug 390, thanks to Alejandro Ramos)
-- Fix out-of-bounds read/write when combining --continue --random --listentry <n>
   where n is larger than the playlist size. (bug 391, thanks to Alejandro Ramos)
-- Fix a harmless valgrind memory leak report by not nulling playlist name.
-- Fix error handling of win32_net_writestring() (Windows only) by actually using
   a signed type, also preventing a OOB read on failure.
   (bug 392 by Alejandro Ramos)
-- Fix a mostly harmless OOB read of 1 byte when printing USLT lyrics.
   (bug 392)
-- Fix leaking file descriptor on read error from --equalizer file. (bug 392)
-- Hardening of loading HTTP(S) via curl or wget against funky URLs by including
   the -- separator. No actual vulnerability, tough, just extra care. (bug 392)
- out123:
-- Fix heap overrun on --endian conversion with differing input and output
   channel counts. (bug 391)
-- Fix parsing of filter specs with whitespace before commas, which resulted
   in out-of-bounds writes before. (bug 391)
- libmpg123, mpg123: Harden memory realloc calls against multiplication overflow
  of size_t in arguments. Specifically, this addresses part of bug 389 with possible
  application abuse of mpg123_set_index64(). (bug 389 by Alejandro Ramos)
- libmpg123:
-- Fix possible use of uninitialized values in layer III dequantization.
   III_dequantize_sample() for consistent output also for strange input. The new
   code seems to be slightly faster after some rearrangements.
   (thanks to He Huang, Swinburne University of Technology (discovered using
   NexusSan))
-- Fix a double free when deleting a handle after failed mpg123_decoder() call
   (possibly among others). (bug 389)
-- More strong wording in API that ID3 text convenience links are short-lived,
   but safeguard against ignorant use by nulling them early.
   (bug 389)
-- Prevent double free in mpg123_set_index() 32 bit wrapper being called with
   index size 0. (bug 392)
-- Harden against an application wielding a foot gun by handing in an undersized
   decoding buffer betwee seek and read (return error before trying to decode
   and discard frames in that case). (bug 392) 
-- Do properly terminate ID3v2 texts coming in UTF16 encoding when they overwrite
   previous frames, like with other encodings. The symptom was a shorter second
   frame resulting in a combined text with the earlier longer frame.
   (bug 392)
-- Check and properly handle null source buffer and zero size in mpg123_store_utf8()
   instead of reading past (before) buffers. (bug 392)
-- Ensure clients get ID3v1 data with (unmotivated) mpg123_id3_raw()
   only if the parser decided that it is there, not possibly the last 128 bytes of
   a seekable stream without ID3v1 tag. (bug 392)
-- Prevent impossible NtoM resampling with too low target rate (like 1 Hz) which
   would trgger endless looping. (bug 392)
- libout123:
-- Fix deadlock in buffer mode when combined with (stereo) 24 bit output. Now
   also mpg123 --buffer 4096 -e s24 shall actuallly work. Sorry. (bug 392)
-- Abort early on zero/negative rate and channel count in out123_start().
   (bug 392)
-- Fix divide by zero in WAV writing by catching channel counts that go zero in the
   16 bit WAV header field. (bug 392)
- libsyn123:
-- Explictly reject mismatched format for appending filters with
   syn123_setup_filter(), preventing memory errors from that API-violating use.
   (bug 392)
-- Harden the dirty resampling interpolator against extreme rates (around 1e18 Hz)
   by fixing a sample offset check to not do the exact overflowing addition
   that it is supposed to guard against. The fine resampler was … fine. (bug 392)
-- Error out on trying to create a filter of order 0 instead of dividing by zero
   later. (bug 392)


Alrighty then (or not),

Thomas

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg
