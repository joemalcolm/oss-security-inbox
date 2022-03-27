X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5118" "Sunday" "27" "March" "2022" "12:42:53" "-0700" "Eric Biggers" "ebiggers@kernel.org" nil "128" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        ebiggers@ker Mar 27  128/5118  " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9691 invoked by uid 550); 27 Mar 2022 20:52:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20007 invoked from network); 27 Mar 2022 19:43:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1648410175;
	bh=zBHGOT8YZGXe2VzPvAt+GqVw+kmvGz4YkCP7h99WQGE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=RTARFF7Ay9aXtQu6uTi1b1/V1CYCs81h8Z4sizg8M2zdqws1o2kBaYlsPdIMXR+bW
	 8O8TprqE0oU3Y/JG+U9VrCYRlJ997EL3z/3QGlWE0sz3hUvE63qjNhDjaeH+M5HqcZ
	 IowR+Y+QwObPNuY27397tKcglsshERBHA7a6LZ/Tig9mtpciYjycAx+OjCdrDZPO7Y
	 AE52oKJUGoftUxmFrH8Z9j5ZKY19XfczZEiqxpsukU7rLbJNDD9gxOINHYPovwC8oF
	 PfSTZ85YYbzX2eQ6IOB4mn2pKq0z5EMtD5hCFAamdBEIp/322uyhgnFzEzCGUPNPW1
	 QPuQciyQAz32g==
Message-ID: <YkC+PSwvLcRzOvgR@sol.localdomain>
References: <Yj/HK64AGxncpsFp@sol.localdomain>
 <FC8967CA-B0AE-4315-92C8-16CB941FDF1B@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <FC8967CA-B0AE-4315-92C8-16CB941FDF1B@gmail.com>
Date: Sun, 27 Mar 2022 12:42:53 -0700
From: Eric Biggers <ebiggers@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

On Sun, Mar 27, 2022 at 03:10:41PM +0300, ariel.byd@gmail.com wrote:
> If the match lengths are uniformly distributed between 3 and 258, you’ll get
> exactly 8 bits per length - not less due to entropy considerations, not more
> since N-3 is a valid Huffman encoding with 8 bits per character.
> 
> Actually, maybe not. I think 258 can be encoded as either “284 31” or “285”,
> and if the encoder always chooses the “285” encoding (leaving “284 31”
> useless) you might have 257 characters, you might need some 9-bit characters.
> I think it’s possible to bound that by 1/64 bit per character but I have not
> proven it.
> 
> Similarly for distances uniformly distributed between 1 and 32768.
> 
> That’s a total of 23 bits per code.
> 

Right, that's a better way to think about it.  I was basically thinking about
making the Huffman symbols equally likely, but it's "better" to just make the
match lengths and distances equally likely.

Length 258 can indeed be encoded two ways; however, zlib always uses one way.

I wrote a patch (given below) to inject sequences of matches with random lengths
and distances.  These are the "best" results I got with the various memLevels:

	memLevel=9: 23.0188 bits/item
	memLevel=8: 23.0268 bits/item
	memLevel=7: 23.0399 bits/item
	memLevel=6: 23.0720 bits/item
	memLevel=5: 23.1285 bits/item
	memLevel=4: 23.2414 bits/item
	memLevel=3: 23.4521 bits/item
	memLevel=2: 23.8431 bits/item
	memLevel=1: OVERFLOW

As expected, the block header becomes more significant with the lower memLevels.
Interestingly, with memLevel=1, the bug is reproduced.

Caveat: these are all assuming the default (and maximum) windowBits of 15, in
order to maximize the cost of distances.  That would basically correspond to
'deflateInit2(&z, <any>, Z_DEFLATED, 15, memLevel, Z_DEFAULT_STRATEGY)'.  It may
be common for people who decrease the default memLevel of 8 to also decrease the
default windowBits of 15, as these sort of have similar effects.  I.e.,
memLevel=1 and windowBits=15 is probably not too common.

Also, this isn't an actual reproducer; you would still need to craft an input
that made zlib generate one of these sequences of matches whose lengths and
distances are distributed uniformly at random.  I expect that this would be
harder with memLevel=1 than memLevel=8, but it might be possible.

Open question: can we do significantly better than uniformly random match
lengths and distances, perhaps by abusing the non-optimality of Huffman codes?

Here's the patch I used for zlib v1.2.11.  If anyone wants to play around with
it, inject_item_list() can be changed to inject other match/literal sequences.
For this code to be executed you just need to try to deflate() something.

diff --git a/trees.c b/trees.c
index 50cf4b4..37e748f 100644
--- a/trees.c
+++ b/trees.c
@@ -39,6 +39,7 @@
 #ifdef ZLIB_DEBUG
 #  include <ctype.h>
 #endif
+#include <stdio.h>
 
 /* ===========================================================================
  * Constants
@@ -904,6 +905,19 @@ void ZLIB_INTERNAL _tr_align(s)
     bi_flush(s);
 }
 
+static void inject_item_list(deflate_state *s)
+{
+    init_block(s);
+
+    for (int i = 0; i < s->lit_bufsize-1; i++) {
+        int distance = 1 + (rand() % MAX_DIST(s));
+        int length = MIN_MATCH + (rand() % (MAX_MATCH - MIN_MATCH + 1));
+        int flush;
+
+        _tr_tally_dist(s, distance, length - MIN_MATCH, flush);
+    }
+}
+
 /* ===========================================================================
  * Determine the best encoding for the current block: dynamic trees, static
  * trees or store, and write out the encoded block.
@@ -917,6 +931,8 @@ void ZLIB_INTERNAL _tr_flush_block(s, buf, stored_len, last)
     ulg opt_lenb, static_lenb; /* opt_len and static_len in bytes */
     int max_blindex = 0;  /* index of last bit length code of non zero freq */
 
+    inject_item_list(s);
+
     /* Build the Huffman trees unless a stored block is forced */
     if (s->level > 0) {
 
@@ -959,7 +975,7 @@ void ZLIB_INTERNAL _tr_flush_block(s, buf, stored_len, last)
 #ifdef FORCE_STORED
     if (buf != (char*)0) { /* force stored block */
 #else
-    if (stored_len+4 <= opt_lenb && buf != (char*)0) {
+    if (0 && stored_len+4 <= opt_lenb && buf != (char*)0) {
                        /* 4: two words for the lengths */
 #endif
         /* The test buf != NULL is only necessary if LIT_BUFSIZE > WSIZE.
@@ -1073,6 +1089,10 @@ local void compress_block(s, ltree, dtree)
     int extra;          /* number of extra bits to send */
 
     if (s->last_lit != 0) do {
+        if (&s->pending_buf[s->pending] > (Bytef *)&s->d_buf[lx]) {
+            fprintf(stderr, "@@@@@ PENDING DATA OVERLAPPED DISTANCES!!! @@@\n");
+            abort();
+        }
         dist = s->d_buf[lx];
         lc = s->l_buf[lx++];
         if (dist == 0) {
@@ -1105,6 +1125,9 @@ local void compress_block(s, ltree, dtree)
 
     } while (lx < s->last_lit);
 
+    printf("block encoded to %lu bytes (%g bits/item)\n",
+           s->pending, (double)s->pending*8 / s->last_lit);
+
     send_code(s, END_BLOCK, ltree);
 }
 
