X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/5
Message-ID: <F3EB4EC4-F47A-4C35-8964-D20CE7B87176.1@smtp-inbound1.duck.com>
Date: Fri, 06 Nov 2026 22:33:00 -0500
From: theknell@...k.com
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Said I'd figure it out, so here we go. Two things in this thread
stayed stuck at the arguing stage: what crypt() actually hands back
when it fails, in each implementation, and Jeff's timing point. I
measured both, on my own machines — OpenSSH 10.6p2 built
--without-pam, glibc 2.39 / libxcrypt 4.4.36 (Ubuntu 24.04), musl
1.2.5 (Alpine 3.21). Harnesses and raw data available on request.

First, the return values, because this is where the thread kept
talking past itself.

libxcrypt doesn't return NULL for a bad setting either. Every
malformed setting in my matrix — *, !, !!, *LK*, !$y$..., x, empty,
$x$, $9$abc, truncated $y$, bad-cost $2b$ — comes back as the
failure token "*0", errno=EINVAL. Feed it "*0" and it answers "*1";
"*1" gets you "*0". The token is built to never compare equal to
whatever produced it. So Orlitzky's right, musl isn't the only one
returning a string on failure. It's just the only one whose failure
string is "*". That turns out to matter.

musl never returns NULL and never sets errno — it was 0 on every
call I made. It also doesn't really have an error path for most
"invalid" settings. Anything two characters or longer just gets
treated as a DES setting with the first two characters as the salt,
so !!, *LK*, !$y$..., and yes, *0 and *1 all come back as 13-char
DES strings. $y$ isn't supported at all and quietly degrades to DES
with salt "$y" — including when you're generating a hash, which is
its own little horror. The "*" failure return shows up for !, x,
"", $, bad-cost bcrypt, and for the sshole primitive itself, which
I reproduced at the library level: sha-crypt ($5$/$6$) with a
candidate password of 257 characters or more returns "*". 256
works fine. 257 fails. The write-ups have been saying ">257" — the
measured line is >=257.

Walk the chain and every link is there: stored field "*" sends sshd
to the dummy salt; the borrowed salt is a sha-crypt prefix; a
>=257-char candidate makes musl hand back "*"; "*" compares equal
to the stored field. libxcrypt breaks that chain at the first link
because its failure value can't equal the setting that provoked it,
and it has no password-length failure at all. NULL-on-failure,
Loganaden's suggestion, would have broken it too, at the NULL check
sshd already does. Honestly the lesson is uglier than the NULL
debate: a failure return that can equal anything a caller might
compare it against is the bug, wherever it lives.

Now Jeff's timing question. Your mechanism doesn't survive contact
with sshd, Jeff — sorry. One-character stored fields never reach
crypt() as a setting at all; sshd burns a dummy hash on them, the
borrowed salt Gutmann hates, working as intended for once. But your
instinct was right. The class that leaks is the one next door: the
two-plus-character locked spellings, !!, *LK*, !$y$... At the
library level the gap in work isn't subtle. On libxcrypt an invalid
setting comes back in about 0.06 microseconds against 34.8 ms for a
yescrypt verification — call it 580,000x. On musl the same spellings
run an ~8 microsecond DES against 3.8 ms (sha512) to 66 ms
(bcrypt). Both libraries are flat inside the non-hash class, so
what you get isn't a fingerprint, it's a binary signal: real KDF,
or not.

End to end, against my own sshd on loopback — 60 interleaved
samples per account, auth-request time only: a "none"-auth control
round trip on this host costs ~48-52 ms of machinery overhead.
bcrypt accounts sit ~+100 ms over that floor, yescrypt ~+46 ms.
!!, *LK*, !$y$... and the dummy-path accounts all sit within
~+11 ms of it. A live $y$ account and the same hash locked as
!$y$... differ by ~37 ms of median. The sha512crypt gap, 2.5 ms at
the library, didn't resolve through this host's overhead, and I'm
not going to claim it remotely. Two limits I'll state before
someone else does: loopback is not the internet — jitter eats
small gaps and costs samples — and a stock 10.6 sshd's
PerSourcePenalties dropped 365 of my first 370 attempts from a
single source before I switched it off on my own rig, which is
deployment reality any remote sampler has to eat too.

Short version: the bypass is dead in 10.6p2 — verified, "*" account,
300-char candidate, refused 10 out of 10. The contract question now
has a measured answer instead of three man pages, and the timing
channel Jeff pointed at is real, with the mechanism corrected.

— knell

-------- Original Message --------
On Friday, 11/06/26 at 21:02 blackhatknell@...ton.me wrote:
I'll figure it out be back shortly 😁




-------- Original Message --------
On Friday, 11/06/26 at 20:01 Michael Orlitzky <michael_at_orlitzky.com_theknell@...k.com> wrote:
On 2026-11-06 23:57:43, Loganaden Velvindron wrote:
> I think it's time for musl libc to revisit the idea and return NULL on
> failure and see which software is still breaking.

It was easy to lose in the noise, but musl is not the only one doing
this:

  https://github.com/besser82/libxcrypt/blob/develop/configure.ac#L322


