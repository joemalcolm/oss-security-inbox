X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2362" "Thursday" "21" "January" "2016" "04:05:07" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20160121010506.GA21071@gremlin.ru>" "56" "Re: [oss-security] Prime example of a can of worms" "^Date:" nil nil "1" "2016012101:05:07" "[oss-security] Prime example of a can of worms" (number mark "        gremlin@grem Jan 21   56/2362  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3559 invoked by uid 550); 21 Jan 2016 01:05:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3537 invoked from network); 21 Jan 2016 01:05:20 -0000
Message-ID: <20160121010506.GA21071@gremlin.ru>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <20151021170113.128d3a8e@silentmaxx> <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com> <20151023145631.GA21048@gremlin.ru> <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
In-Reply-To: <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Thu, 21 Jan 2016 04:05:07 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

On 2016-01-20 08:45:07 -0700, Kurt Seifried wrote:

 > I finally got the article written and published, it's at:
 > https://securityblog.redhat.com/2016/01/20/primes-parameters-and-moduli/

In that article you wrote:

 > I think the best plan for dealing with this in the short term
 > is deploying larger primes (2048 bits minimum, ideally 4096
 > bits) right now wherever possible.

4096 bit keys seem to be the absolute minimum, and personally I've
already moved to 8192 bit keys.

Here are some numbers:

`openssl dhparam -2 4096` took 1:53:29 to generate (HH:MM:SS);
`openssl dhparam -5 4096` took 1:43:44;
`openssl dhparam -2 8192` took 25:51:34;
`openssl dhparam -5 8192` took 16:51:47.

 > Why not huge primes?
 > Why not simply use really large primes? Because computation
 > is expensive, battery life matters more than ever and latency
 > will become problems that users will not tolerate.

Any and all cryptographic transforms must be expensive - that means
at least time and electric power. As every single bit requires at
least two transistors (physical areas on the chip) just to store it
and much more to process, and each of those transistors consume at
least hundreds of pA, the cryptoprocessors (which are already used
for brute-force attacks) would be much more power-consuming.

Said that, the attackers would need building yet another power
station to get more gigawatts for their key-breaking datacenters
and, as all this power would finally become heat, such facility
should be built at least at Taimyr or Melville peninsula - both
are continental (for laying cables) and cold just enough :-)

Also, there are elliptic curves-based algorithms, but they have
one strong disadvantage: although the computations are more
complex, that must not be the reason to reduce the key size.

 > Additionally the computation time and effort needed to find huge
 > primes (say 16k) is difficult at best for many users and not
 > possible for many (anyone using a system on a chip for example).

That would require a really good hardware RNG. For now, I have an
experimental USB device (based on ATtiny85 and LM393) for such
purposes, but most SoC systems lack them (despite of adding them
would be simple and inexpensive: dual op-amp and one GPIO pin).


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
