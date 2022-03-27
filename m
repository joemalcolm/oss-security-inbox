X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5175" "Saturday" "26" "March" "2022" "19:08:43" "-0700" "Eric Biggers" "ebiggers@kernel.org" nil "96" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        ebiggers@ker Mar 26   96/5175  " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32478 invoked by uid 550); 27 Mar 2022 09:29:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5702 invoked from network); 27 Mar 2022 02:08:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1648346925;
	bh=yWfxgEsddyrCNKiuFfCXp0n/99QHPoyU4s8+yQh6nvM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=E2prJKgj9dZ5sNNWOnueROAZX8LhFUAl+Os7e5F4de9VXuc83i8eUBF/58BdPIGOZ
	 D5DT2rFu2/V6ViwQD4hTdfpr56uLe1Wzvll6cbBhaj9aIPwIGoYH4ONTmgH3xpJS8p
	 bRI3uvMBlwadb2jVxnskArzRWjKG/1XJJbDP3nqGsF2mb6BsOan1/4IyreC8sMGktZ
	 NITOaRKd5HuzbiVSqDgUqC6TgBqwY4x4g61kGuYh3E098LnOJ+T7NBx7VLuiw58VhA
	 VJpZJNO6WPeDnUUumfRPbQHvaXJHmzmHRbd98CuOA4vs46OiIpMK01nxpuNZfzXBrb
	 ZDrQXLCWd3z3w==
Message-ID: <Yj/HK64AGxncpsFp@sol.localdomain>
References: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
 <Yj3KxwDw01GIKHwD@gentoo.org>
 <20220326165217.GA10836@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220326165217.GA10836@thinkstation.cmpxchg8b.net>
Date: Sat, 26 Mar 2022 19:08:43 -0700
From: Eric Biggers <ebiggers@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

On Sat, Mar 26, 2022 at 09:52:17AM -0700, Tavis Ormandy wrote:
> One question remains - does this *only* affect Z_FIXED, or also
> Z_DEFAULT_STRATEGY? It seems plausible this also affects
> Z_DEFAULT_STRATEGY, because of this condition:
> 
> https://github.com/madler/zlib/blob/master/trees.c#L976
> 
>     } else if (s->strategy == Z_FIXED || static_lenb == opt_lenb) {
> 
> That is, if the optimal and static trees are the same size, then zlib
> *chooses* the Z_FIXED strategy anyway. I don't know if this is
> practically possible yet, I'm investigating but if someone smarter than
> me already knows the answer please let me know!
> 
> IMHO, this is a pretty bad bug - but if it is impossible to reach with
> Z_DEFAULT_STRATEGY, then at least there's no need to panic, as Z_FIXED
> is usually only used in special circumstances...
> 
> If it possible, well... uh-oh.
> 

I think it's not possible, at least with the default memLevel (which is one of
the parameters to deflateInit2()), though it gets uncomfortably close.

Let's assume that given a sequence of "items" (matches and literals), it's
possible to craft an input that makes the compressor choose those items for one
of its blocks.  It may require getting creative with de Bruijn sequences, etc.,
like Tavis did in his reproducer, but generally speaking I'd consider it to be
possible.  Then, I'd phrase the question of reachability of this bug as:

"Does there exist a sequence of items with length at most 1<<(memLevel+6)
[i.e.  16384 by default] that, when encoded into a block, takes up more than
3*(1<<(memLevel+6)) bytes [i.e. 49152 by default]?"

Using less than the maximum allowed number of items isn't going to help.  Also,
the block header won't take up significant space compared to 16384 items.  So
this is basically asking "do items ever cost more than 24 bits on average"?

This can "obviously" happen when the use of the static Huffman codes is forced
with Z_FIXED, as items can cost up to 31 bits with the static codes, and all
items can have this worst-case cost.  That's what Tavis's reproducer does.

But with Z_DEFAULT_STRATEGY, zlib uses the cheaper of the static and dynamic
codes.  For the bug to happen then, both the static and dynamic codes would have
to use more than 24 bits per item on average, for the same sequence of items.

So can the dynamic codes ever use more than 24 bits per item on average?

It gets pretty close, but I don't think it's possible.

The worst case must involve all matches and zero literals, unless every single
length symbol is used which seems unlikely to help (see later analysis).  And
all else being equal, the most costly matches will be the ones with the most
extra length and extra offset bits.

However, the more often a symbol is used, the shorter its Huffman codeword gets.
If we use only matches that have the most extra bits, we end up using the same
length and offset symbols a lot.  There are only 4 length symbols with the
maximum extra bits of 5, so if we use those evenly we get 2-bit length
codewords, for 7 bits per length.  Likewise, there are only 2 offset symbols
with the maximum extra bits of 13, so if we use those evenly we get 1-bit offset
codewords, for 14 bits per offset.  That's 7 + 14 = 21 bits per match.

Roughly speaking, to add 1 bit to a Huffman codeword length, we need to halve
the symbol's frequency.  So roughly speaking, to add one bit to the length
codewords we'd need to add 4, 8, 16, ..., length symbols, using each one roughly
equally often.  However, the number of extra bits decreases by 1 for each 4
length symbols.  Therefore we gain roughly 0.5 bits by adding the 4 length
symbols with 4 extra bits, resulting in 7.5 bits per length on average.  But if
we go further, the average cost per length starts getting cheaper.

Similarly, the number of extra bits decreases by 1 for each 2 offset symbols.
So offsets get about 0.5 bits more expensive if we also use the 2 offset symbols
with 12 extra bits, resulting in 14.5 bits per offset on average.  But anything
further decreases the cost.

That's 7.5+14.5 = 22.0 bits per match on average.

We can do a bit "better" by considering that Huffman codewords can only be a
whole number of bits.  E.g., if we're using four offset symbols, we can use the
ones with num_extra_bits=13 'n' times each and the ones with num_extra_bits=12
n/2+1 times each, and still get 2-bit codewords for all four symbols.  However,
it doesn't seem that we can gain more than 1 bit on average per match from this.

So it looks like the worst case is somewhere around 22.5 bits per item.  That's
less than the required 24.  It's definitely getting uncomfortably close though,
so this could use a more formal treatment.

Also, memLevel can be as low as 1; it's a parameter to deflateInit2().  With
memLevel=1, zlib will flush blocks after just 128 items.  The block header
containing the Huffman codeword lengths would be more significant in that case.
Though, the block header would still be pretty short, given that there wouldn't
be too many codewords in the codes, given the 128 item limit as well the
constraints of having to generate one of these worst-case sequences.

- Eric
