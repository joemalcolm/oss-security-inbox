X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3835" "Wednesday" "20" "January" "2016" "12:20:09" "-0500" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87vb6o5fsm.fsf@alice.fifthhorseman.net>" "80" "Re: [oss-security] Prime example of a can of worms" "^Date:" nil nil "1" "2016012017:20:09" "[oss-security] Prime example of a can of worms" (number mark "        dkg@fifthhor Jan 20   80/3835  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22122 invoked by uid 550); 20 Jan 2016 17:20:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22098 invoked from network); 20 Jan 2016 17:20:34 -0000
In-Reply-To: <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <20151021170113.128d3a8e@silentmaxx> <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com> <20151023145631.GA21048@gremlin.ru> <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
User-Agent: Notmuch/0.21+68~g28d25e7 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <87vb6o5fsm.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Wed, 20 Jan 2016 12:20:09 -0500
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com

Hi Kurt--

On Wed 2016-01-20 10:45:07 -0500, Kurt Seifried wrote:
> I finally got the article written and published, it's at:
>
> https://securityblog.redhat.com/2016/01/20/primes-parameters-and-moduli/

Thanks for this writeup!

the chart at
https://securityblog.redhat.com/wp-content/uploads/2015/12/DH-Param-Compromise-300x269.jpg
uses the terms "keys" in the axis labels, but i think you mean "primes"
or "moduli".

> TL;DR: I found a lot of messy problems and no really good solutions. But
> ultimately we need to start using bigger keys/primes or this is all just a
> waste of compute time (might as well go back to clear text).

yes, larger primes are clearly needed.

The discussion gets a little ways into the issue of negotiating primes
between peers, but doesn't address some underlying issues.

For one, the writeup addresses probabilistic primality tests, but
doesn't describe proofs of primality, which are significantly more
expensive to generate (and still probably more expensive to verify than
a short Miller-Rabin test).  But these proofs provide certainty in a way
that probabilistic tests might not.  If we're talking about runtime
primality checking when communicating with a potential adversary, are
there proofs about the (im)possibility of generating a pseudoprime that
is more or less likely to pass a miller-rabin test?

Additionally, the fact that the modulus is prime is an insufficient test
-- it needs to be a prime of a certain structure, or else the remote
peer can force the user into a small subgroup, which can lead to
unknown-key-share attacks, key factorization, or other problems.

One approach is to require that moduli be safe primes (p = (q*2) + 1,
where q is also prime) and to verify that the peer's public share k is
in the range 1 < k < p-1 to avoid the small-subgroup attack of size 2.
This appears to be the best we know how to do with diffie hellman over
finite fields, but it limits the range of acceptable moduli even
further, and requires two primality tests for the peer seeing the primes
for the first time.

It's also worth noting that we have a similar concern with elliptic
curve DH (ECDH) -- the structure of the curve itself (which is the
equivalent of the generator and the modulus for finite-field diffie
hellman) is relevant to the security of the key exchange.

In the ECDH space, there appears to be little argument about trying to
use a diversity of groups: while many specifications provide ways to use
custom (generically-specified) curves, pretty much no one uses them in
practice, and the custom-curve implementations are likely to be both
inefficient and leaky (to say nothing of the difficulty of verifying
that the offered curve is well-structured at runtime).  Indeed, the bulk
of the discussion around ECDH is about picking a small handful of good
curves that we can publicly vet, and then using those specific curves
everywhere (see curve 25519 and goldilocks 448, the CFRG's upcoming
recommendations).

Encouraging peers to select a diversity of large custom groups in for
finite-field DH seems likely to be slow (additional runtime checks, no
optimized implementations), buggy (missing or inadequate runtime checks,
side-channel leakage), and bandwidth-heavy (the moduli themselves must
be transmitted in addition to the public keys), and as you say, the
diversity of groups doesn't win you as much as just switching to larger
groups in the first place.

I agree that we need machinery in place to be able to relatively easily
drop believed-weak, widely-shared groups, and to introduce new
widely-shared groups.  But i'm not convinced that encouraging the use of
a diversity of groups is really the "Best Default/Operational" tradeoff,
as it is indicated in your chart, given the concerns above.

Thanks very much for your analysis.

Regards,

        --dkg
