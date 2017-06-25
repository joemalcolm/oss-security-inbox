X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7645" "Saturday" "24" "June" "2017" "21:35:37" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170625013537.GA21637@grsecurity.net>" "148" "Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062501:35:37" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        spender@grse Jun 24  148/7645  " thread-indent "\"Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<20170624151504.GA25902@grsecurity.net>" "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22281 invoked by uid 550); 25 Jun 2017 01:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32551 invoked from network); 25 Jun 2017 01:35:50 -0000
Message-ID: <20170625013537.GA21637@grsecurity.net>
References: <20170624005003.GB27479@grsecurity.net>
 <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
 <20170624151504.GA25902@grsecurity.net>
 <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
In-Reply-To: <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Pax Team <pageexec@freemail.hu>, torvalds@linux-foundation.org
Date: Sat, 24 Jun 2017 21:35:37 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit method
To: oss-security@lists.openwall.com

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

So Linus, you failed to answer any of my questions (no surprise there).

And now you've weaseled your words back and apparently forgot what
you said about breaking userland, you still haven't provided anything
technical to back that up or how it was relevant at all to the question
asked to you by Andy.

So we come to your definition of "garbage": apparently you're admitting
you're calling our work garbage because we're not doing exactly what you
want for free (and seemingly knowing full well how people would interpret
your use of the word garbage, even though it's completely irrelevant to
them).  Nevermind that you had no interest in our work (modulo ripping off
ASLR etc) and actually were quite hostile to it until I assume your corporate
sponsors forced your hand from the impending fallout of the Washington Post
article.  Let me ask you: what do you think would be told to us if
we demanded you do work specifically for us in your free time?  I'm sure
"buzz off" would be the least offensive way you'd put it.  So why do you
expect any different from us?  You're getting paid full-time for your
work, we are not.  Do you want us to shine your shoes too?  Wash your
convertible(s)?

Boy, those multi-billion dollar corporations that ignored security for
years, gotta feel so sorry for them.  Just can't catch a break.

You know, Red Hat produces big monolithic patches too.  Are their kernels
garbage?  Or won't you say that because they fund you?

Here's how it works: we create patches for users who use them.  We have
limited time so we spend it on things that matter to us and our users --
when you pay for our time you can have some say in how we allocate it.
It's not as if we're technically unable to split up patches, but it
certainly doesn't save us or our users any time.  I've even done this work
before for a paid engagement and commented up all the code to explain every
single line:
-rw-r--r--   1 spender spender    1049 Jun  9  2016 pax_aout.diff
-rw-r--r--   1 spender spender   20327 Jun  9  2016 pax_aslr_hardening.diff
-rw-r--r--   1 spender spender   55187 Jun  9  2016 pax_constify_final.diff
-rw-r--r--   1 spender spender   66211 Jun  9  2016 pax_kernexec_final.diff
-rw-r--r--   1 spender spender   38217 Jun  9  2016 pax_uderef_final.diff
-rw-r--r--   1 spender spender    4099 Jun  9  2016 pax_usercopy.diff
-rw-r--r--   1 spender spender   26954 Jun  9  2016 pax_usercopy_final.diff
-rw-r--r--   1 spender spender   46265 Jun  9  2016 pax_userland_final.diff

Just like you spend your time focusing on versions of Linux nobody actually
uses (they use stable kernels or distro kernels) but which benefits your
corporate sponsors and maintains the churn you want to force everyone to
contribute to.  The days of Linux being a community project are long gone,
it's a fairy tale at this point.

BTW, here's some more 0day just to prove a point.  Sitting in our patch since
near the beginning of KSTACKOVERFLOW there's been a DMA on stack fix for
sound/usb/line6/driver.c (usb_control_msg use with a stack argument).  It's
still not fixed upstream -- how is that possible if supposedly no one uses
grsec kernels and everyone's using the latest upstream kernel?  How is it
that 6 months after the release of Linux 4.9 there still apparently has been
no static analysis done to find and fix these problems?  How are you actually
securing the systems people actually use when nobody's bothering to backport
the security features?  I thought they cared about securing the world and not
just providing some marketing value to their company?

Here's a good example, let's talk about the kernel security of Wind River
Linux 9.0 (Wind River is owned by Intel, is a Linux Foundation member and
part of the KSPP).  They bought in to the KSPP hype and are using it in
their latest product.  I wonder if they told their customers their latest
product has worse security than the older ones?

They recently started publishing their code publicly.  Here's the kernel tree
for 9.0:
https://github.com/WindRiver-Labs/kernel-cache/tree/WRLINUX_9_0_HEAD
Here we can see their "kernel-hardening" features:
https://github.com/WindRiver-Labs/kernel-cache/tree/WRLINUX_9_0_HEAD/features/kernel-hardening
Let's see what they enable:
https://github.com/WindRiver-Labs/kernel-cache/blob/WRLINUX_9_0_HEAD/features/kernel-hardening/kernel-hardening.cfg
CONFIG_CC_STACKPROTECTOR=y
CONFIG_CC_STACKPROTECTOR_STRONG=y
CONFIG_HARDENED_USERCOPY=y
CONFIG_SLAB_FREELIST_RANDOM=y
CONFIG_PAGE_POISONING=y
CONFIG_RANDOMIZE_BASE=y
CONFIG_RANDOMIZE_MEMORY=y
CONFIG_DEBUG_RODATA=y
CONFIG_DEBUG_SET_MODULE_RONX=y
CONFIG_LEGACY_VSYSCALL_NONE=y

One watered down version of PAX_USERCOPY with crippled security
(2c7b1c535543ddf7d97052b7b6adc7c31f79d02039dabe0739a5399f5b9622b8)
one watered down version of PAX_MEMORY_SANITIZE, one useless KSPP feature that
introduced privilege escalation, SSP which has never prevented a kernel exploit
that I'm aware of, the useless KASLR, and the upstream RONX code.  This
KSPP member hasn't even backported newer KSPP features to their 4.8 kernel!

You're out of touch with reality Linus.  In what world would anyone sign up
for your "generous" offer to be called clowns, that their patches are garbage,
that they should do thousands of hours of work for free for a bunch of
multi-billion dollar corporations that aren't contributing a single dime or
any direct work back?  Please note that distinction of "direct" before you
talk about the incredible debt we owe somehow simply for basing our code off
Linux.  You realize right that all we got in return for the nearly 2 years of
the KSPP was a single incomplete typo fix?  Guess what happened when we asked
for some GCC changes that would eliminate false positives from the
SIZE_OVERFLOW plugin a year and a half ago?  No work at all was done on it --
sound familiar at all?

It's no surprise that CII's 2016 report said:
https://www.coreinfrastructure.org/sites/cii/files/cii_annualreport_2016_fnl_digital.pdf
"One challenge we've encountered this year is finding skilled
people to take on the work. While the desire to work on
open source exists, without compensation it's simply not
feasible for many developers to do so."

How could they know that calling people clowns and their work garbage wasn't
payment enough?

With no technical content coming from your end, there's no need to discuss
anything further -- don't waste your time because I won't reply.

Good luck to you and anyone else stupid enough to do any work at all for
you and your multi-billion dollar sponsors for free.

-Brad

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZTxNhAAoJEETRwPglJf5JPc0P/Rydsu+B6EQi3HJUD2lASKVn
t4Zt6z1zcu4N4NoZDhtM+5+JxVYtuuBRmTohaHYUjiuM5WydjibLOI9GXV7NTXTZ
oTZh4Stq9MwtzPZ+LI6WawLh6rrke9HgVaydofAk7IVa5GPk/LqBQbNIRQQsiz5/
pX6X79qugMXwHXn/YCFd+Cl+EF+La6y9z0AX3Fni0dXWbZSeAMKQEiyxIfj6lzLq
gUCZVWm1indKDRMRgMQqwcZausPZhjF+4VP5HjNejCiUf1e2pIxTIfgZVBrNckFW
K1GAc5aGkQlIuwNcRmkt0xYRwSp65Blf40dKW/pzRcJ1RcBg3nTdCoHGmpbV+qyd
flF+piPw0DT2mjwJ85D2TNWm23E9mYqPy5zhxHjbc1E6TsCBXS/WtzAVvP+iKnVh
NDWx1xrDLgcmNI60DaP5jcyNySRzVyCVMoEOC4RpCS11he4Q7wDKkkEaqcFXIrSO
ZcqydH1erg5JZ+up6NF6lS8XQYhHV9lBEW2vd8/mDooAYTgqeKrmIPnz9tErH0dl
0wxkGkZrsbE8EigS1+FcQi00sS3co7jdroQ0LxfDZfToMUBdazBxrNIHZPpbNnGo
CN2eJ+3CoWEAI+IB0/FXppnrS00qB5I1jEB6wUxNaI9eku/cxjX15/M1hosulODx
+aiXcT9zRSWJyfBFnhYc
=9DmM
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--
