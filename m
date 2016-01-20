X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1910" "Wednesday" "20" "January" "2016" "13:00:15" "-0500" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87lh7k5dxs.fsf@alice.fifthhorseman.net>" "38" "Re: [oss-security] Prime example of a can of worms" "^Cc:" nil nil "1" "2016012018:00:15" "[oss-security] Prime example of a can of worms" (number mark "        dkg@fifthhor Jan 20   38/1910  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" "<87vb6o5fsm.fsf@alice.fifthhorseman.net>" "<CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7871 invoked by uid 550); 20 Jan 2016 18:00:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7853 invoked from network); 20 Jan 2016 18:00:28 -0000
In-Reply-To: <CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <20151021170113.128d3a8e@silentmaxx> <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com> <20151023145631.GA21048@gremlin.ru> <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com> <87vb6o5fsm.fsf@alice.fifthhorseman.net> <CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>
User-Agent: Notmuch/0.21+68~g28d25e7 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <87lh7k5dxs.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security <oss-security@lists.openwall.com>
Date: Wed, 20 Jan 2016 13:00:15 -0500
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Kurt Seifried <kseifried@redhat.com>

On Wed 2016-01-20 12:25:42 -0500, Kurt Seifried wrote:
> Sorry yes, although this also applies equally to keys/etc.

sure, though i hope we're not in a "few keys" scenario, that would
definitely be bad :)

> [dkg wrote:]
>> For one, the writeup addresses probabilistic primality tests, but
>> doesn't describe proofs of primality, which are significantly more
>> expensive to generate (and still probably more expensive to verify than
>> a short Miller-Rabin test).  But these proofs provide certainty in a way
>> that probabilistic tests might not.  If we're talking about runtime
>> primality checking when communicating with a potential adversary, are
>> there proofs about the (im)possibility of generating a pseudoprime that
>> is more or less likely to pass a miller-rabin test?
>
> I looked at this a bit and quite honestly the computational time involved
> is just to much to be useful, unless we're talking about generating a small
> set of highly trusted primes. For normal people, this just isn't feasible
> (witness prime generation taking between less then a second, and more than
> 10 minutes, nobody wants to wait 10 minutes...).

right, i'm not suggesting that proof generation be done at runtime, just
that it is an example of a stronger guarantee than we have for runtime
checks, and that it *only* applies to the "generating a small set of
highly-trusted primes" case.

> Agreed, I listed the diversity more as a stop-gap for the cases where
> people have older hard/software (e.g. Java) that will never support larger
> primes/keys. At least then you don't get caught in dragnets for the
> default/commonly used primes.

I agree with this analysis, but the chart in the middle of your paper
makes it looks like the diversity is "best", while the "small set of
heavily-evaluated primes" (i'm assuming that's what's meant with the
"few keys" side of the X axis) is merely "good".

     --dkg
