Received: (qmail 5318 invoked by uid 550); 29 Dec 2025 18:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1366 invoked from network); 29 Dec 2025 17:53:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1767030803; x=1767697469; h=date:author:from:to:subject:
  message-id:mail-followup-to:openpgp:blahblahblah:author:from:subject:date:
  to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=do8Myubw5eJPflyiPIIFc/yzEs5pLB7yB06+tM3tw8c=;
 b=Bb1zpCQ+0XXtfKBwsUamk7QtqLdbZOOLZKpO64mYlukG+3B17nshDsxDegmykZwCiVCcpMcY
  lILkFiacwwRVlTdxZyxk7aje9d8WNqdZ+yjOoRdEhW61ejOtb8xeLWjY6GdO/oE/PEdWCm8y/k
  ksaMlXVU0R/KEvJqSaD2v847mVdtKg0N6luktRTRweSHAmVtVhw3u8LjXQpAyW2DREhHpXChv6
  sWWopmXP/l/HSoyQzO6iMp1UUfxVtOo3+Pd7bWPgWs42hyqkTzBQyEE/8Dysa3AVhguVnJbw5K
  u2gOu68JNKakMEFU3bNivngZ0er07CD1aEvAnBxM64tULwFw==
Date: Mon, 29 Dec 2025 18:53:22 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20251229175322.DTpHn3Fz@steffen%sdaoden.eu>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-743-g1489053f65-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: [oss-security] BSDiff (bspatch): remotely triggerable out-of-bound memory
 access

Hello.

The BSDiff (binary difference patch) algorithm is in use in
original or modified form in several projects / products.

The patch data stores control data as (tuples of three) signed
integers (each).

There were bug reports a.k.a. CVEs in the past that covered the
first two entries of each tuple (length in octets/bytes to copy
from the differential data / the extra data block, respectively),
but not the third, which is a "relative seek [in data source]"
location to apply after the copies have taken place.

When i forked Colin Percival's bsdiff he pointed me to the FreeBSD
implementation as the "master copy" due to integrated bug fixes
(his original tarball was not accessible by then even), so i point
to that here via

  https://github.com/freebsd/freebsd-src/blob/main/usr.bin/bsdiff/bspatch/bspatch.c

We see "oldpos" being initialized to 0 before the loop starts at
line #236, we then later see

                /* Add old data to diff string */
                for (i = 0; i < ctrl[0]; i++)
                        if (add_off_t(oldpos, i) < oldsize)
                                new[newpos + i] += old[oldpos + i];
                ...
                oldpos = add_off_t(oldpos, ctrl[0]);

and

                oldpos = add_off_t(oldpos, ctrl[2]);

The add_off_t() was introduced to catch integer overflows etc, it
effectively boils down to

  #define ckd_add(R, A, B) __builtin_add_overflow((A), (B), (R))

As can be seen, an attacker who controls the patch just has to
"choose ctrl[2] in a way that causes oldpos to go negative enough"
in order to cause a negative memory in "old[oldpos+i]" above.
My bsdipa clone does

                j = ctrl[2];
                if(j != 0){
                        if(!a_bspatch_check_add(aftpos, j))
                                goto jleave;
                        aftpos += j;
                        if(aftpos < 0)
                                goto jleave;
                }

ie it effectively adds an additional <0 check.

This was reported to FreeBSD back on January 30th[1].
I actually did not really know a.k.a. looked how many forks there
are etc, but just recently i did and half-hearted opened an issue
for [2] (the project seems pretty much dead).

  [1] https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=284472
  [2] https://github.com/mendsley/bsdiff

While here, there is another "minor problem".  The original BSDiff
algorithm can generate control tuples which do not produce any
data, but only contain seek instructions.  The number of these is
unlimited.  By collapsing such "seek-only" instructions to the
former control chunk all control tuples (but the first, hm) must
contain copy instructions, which allows for a control block bound
a.k.a. size check only by reading the "file format header".
To be remarked all data is bzip2 compressed, which allows for, say
(BSDiff is always 64-bit)

  perl -e '{$i=0;while($i<24*1000000){print "\x0";++$i;}}' |
    bzip2 -vzc > .Y.bz2
  (stdin): 480000.000:1,  0.000 bits/byte, 100.00% saved, 24000000 in, 50 out.

which is possibly not a "DoS", but still a bit ugly.
The mitigation for that is no earlier but in S-bsdipa v0.9.0.
(Which uses a different patch format per se, etc etc.)

Ciao and greetings from Germany,

P.S.: (no "CVE doings" by me, i post to oss-security per email).

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
