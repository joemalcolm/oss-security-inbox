X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4643" "Wednesday" "4" "May" "2016" "15:42:48" "+0300" "Solar Designer" "solar@openwall.com" "<20160504124248.GA15148@openwall.com>" "111" "[oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050412:42:48" "[oss-security] broken RSA keys" (number mark "        solar@openwa May  4  111/4643  " thread-indent "\"[oss-security] broken RSA keys\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17457 invoked by uid 550); 4 May 2016 12:43:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16315 invoked from network); 4 May 2016 12:42:54 -0000
Message-ID: <20160504124248.GA15148@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Date: Wed, 4 May 2016 15:42:48 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

As many of you know, the projects factorable.net and Phuctor have
identified some weak RSA keys in the wild - on (key)servers or submitted
to those projects.  This does not necessarily mean that the weak keys
were generated as such in all cases - it can as well be that keys got
mangled later.  (In fact, this has spurred heated debate and insults.
Luckily, that's not the primary topic of my message, so I don't have to
refer to it more directly risking to bring that controversy in here.
Let's just not go into that direction at all.)

Now to the point: some of the keys do look to me like they're a result
of software bugs in key generation.  Specifically, as it was noticed and
noted by many before, Phuctor's list of broken keys includes many with
non-prime e of the form intended_e*(2^32+1) - that is, with the 32-bit
value duplicated across 64 bits.  (I wrote it that way to show that all
such e's are non-prime.)

When looking into this a few days ago, I found that OpenSSL 0.9.5a (and
earlier?), which was current in year 2000, had a bug that would result
in behavior just like this on some 64-bit platforms:

http://marc.info/?l=openssl-users&m=95961024500509

I've also checked libgcrypt's code since its commit history start in
1997 and to latest.  Its RSA e setup looks OK to me: it uses libgcrypt's
own *mpi*_set_ui(), which just set first limb without going to bit level.

Additionally, both Phuctor's list and Hanno Bock's list of GCDs include
many small factors that also exhibit 32-bit value duplication.  To me,
this speaks in favor of there being a bignum library bug like this.
A bug that not only duplicates the least significant 32 bits onto the
next 32 bits, but also keeps the rest of the limbs at all-zeroes.  There
are even weirder examples, though - e.g., one of Phuctor's factors is
0x115CFF61CFECFF61BE9, where we see three 32-bit limbs satisfying:

limb[1] = limb[0] + limb[2]

and also limb[2] is small and thus likely didn't come from a CSPRNG, but
possibly from uninitialized memory.

We may want to review other RSA and general bignum libraries for bugs
that would match these patterns, although that's probably not any easier
than just reviewing them for any bugs in related code paths.  It is
likely that something more recent than OpenSSL 0.9.5a still has a bug of
this sort (besides, that OpenSSL bug can't explain the 3-limb
relationship in a factor, above).  Indeed, that "something" might turn
out not to be open source, but we would care about and would be
reviewing the open source libraries and programs - hence posting in here
for now.  Any volunteers?  Please post to these thread about whatever
you've reviewed, even if you came to the conclusion it probably isn't
buggy (like I did for libgcrypt's e setup).

Alexander

P.S. I've attached the OpenSSL bug posting from 2000, for archival.

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openssl-rsa-e-bug.txt"

List:       openssl-users
Subject:    64 bit problem in RSA_generate_key in 0.9.5a
From:       Karsten Spang <ks () bellesystems ! com>
Date:       2000-05-29 13:46:24

I have found a problem in the generation of an RSA key. Under 64 bit HP-UX,
the problem manifests itself as RSA_F4 becoming 0x1000100010001. The bug
is that 1 is an int, and according to the ANSI C standard, shifting more
than the size of the an expression is undefined. On this architechture,
only the 5 least significant bits of the shift is used, thus 1<<32==1 !
The patch below changes 1 to 1UL, and 1UL<<32!=1UL when a long is 64 bits.
--
Karsten Spang
Senior Software Developer, Ph.D.
Belle Systems A/S
Tel.:   +45 59 44 25 00
Fax.:   +45 59 44 25 88
E-mail: kspang@bellesystems.com
Web:    http://www.bellesystems.com/
Defining the Future of IP Services

*** rsa_gen.c.dist	Sat Feb  5 15:17:30 2000
--- rsa_gen.c	Mon May 29 15:19:31 2000
***************
*** 95,101 ****
  	 * unsigned long can be larger */
  	for (i=0; i<sizeof(unsigned long)*8; i++)
  		{
! 		if (e_value & (1<<i))
  			BN_set_bit(rsa->e,i);
  		}
  #else
--- 95,101 ----
  	 * unsigned long can be larger */
  	for (i=0; i<sizeof(unsigned long)*8; i++)
  		{
! 		if (e_value & (1UL<<i))
  			BN_set_bit(rsa->e,i);
  		}
  #else
______________________________________________________________________
OpenSSL Project                                 http://www.openssl.org
User Support Mailing List                    openssl-users@openssl.org
Automated List Manager                           majordomo@openssl.org

--r5Pyd7+fXNt84Ff3--
