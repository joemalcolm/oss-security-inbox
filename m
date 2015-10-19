X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Monday" "19" "October" "2015" "17:40:14" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "48" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015101921:40:14" "[oss-security] Prime example of a can of worms" (number mark "        dkg@fifthhor Oct 19   48/2549  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<20151019193411.GA15710@hunt>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30314 invoked by uid 550); 19 Oct 2015 21:40:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30296 invoked from network); 19 Oct 2015 21:40:57 -0000
In-Reply-To: <20151019193411.GA15710@hunt>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt>
User-Agent: Notmuch/0.20.2 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <87eggqmta9.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Mon, 19 Oct 2015 17:40:14 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Seth Arnold <seth.arnold@canonical.com>, oss-security@lists.openwall.com

On Mon 2015-10-19 15:34:11 -0400, Seth Arnold wrote:
> Should there be any middle-ground for how much use a specific value gets?
> Part of the weakdh gift is the reconition that randomly generated 1024 bit
> primes might be fine for one router or website to use but is terrible when
> used by millions and might repay the cost to crack it.
> 
> Do we allow 1024-bit dhparams when they are randomly generated? Or do we
> also want to move these to e.g. 2048 out of abundance of caution?

we don't just want 1024-bit primes; we want 1024-bit safe primes (p =
2q+1, where both p and q are prime), because their structure makes it
easy for both peers to avoid a small subgroup attack.

safe primes are expensive to generate (for the party who selects the
prime), and they are expensive to verify (on the side of the party who
accepts the prime).  These are difficult risks for peers to assess.

For the peer who selects the group: how often should you re-generate a
new prime?  Should you share a prime with other parties in the same
position as you, or should you choose your own?  If you share a prime
with other parties, how many parties are OK?  how much traffic is safe
to pass under the same group?

For the peer who is offered the group, should you verify that the
modulus you receive is a safe prime?  Should you do a complete, rigorous
proof or would a pair of probabilistic miller-rabin tests be ok?  You
could "cheat" and ignore the check and things will "just work" most of
the time, and save your users some battery life.  How should you reject
an offered prime if you find it doesn't have the expected structure
(non-safe primes could still produce valid groups, even though safe
primes are easier to inspect for)?  What if you think you've seen this
prime before from too many other peers?  Should you reject it then?

All of these questions are really fuzzy and hard to give good guidance,
and hard to know as an implementor that you're doing the right thing.

On the flip side, saying "use only strong (>=2048bit today in 2015?),
well-known, well-structured, publicly-vetted groups" is very simple
guidance: clear and easy to follow.

A move to well-known, large safe primes seems simpler/saner than trying
to work with an environment where peers are generating new primes which
may or may not be well-formed.  (similarly, we're converging on a world
where there are a few trusted, well-vetted, well-optimized DH groups for
elliptic curve DH, because encouraging arbitrary ECDH groups ends up
being sketchier for everyone)

      --dkg
