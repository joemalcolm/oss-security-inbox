X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2100" "Friday" "23" "October" "2015" "17:56:31" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20151023145631.GA21048@gremlin.ru>" "47" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102314:56:31" "[oss-security] Prime example of a can of worms" (number mark "        gremlin@grem Oct 23   47/2100  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3728 invoked by uid 550); 23 Oct 2015 14:56:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3702 invoked from network); 23 Oct 2015 14:56:45 -0000
Message-ID: <20151023145631.GA21048@gremlin.ru>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <20151021170113.128d3a8e@silentmaxx> <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Fri, 23 Oct 2015 17:56:31 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

On 2015-10-21 22:27:33 -0600, Kurt Seifried wrote:

 > I can't even begin to think how slow this would be on hardware
 > limited systems like $20 routers and whatnot (in theory you could
 > have systems taking tens of minutes), which would not be popular
 > with consumers (turn the unit on and wait from 0 seconds to an
 > hour or so for the web interface to come up!).

Normally, all those $20 (or even $10) routers don't need to generate
keys at the first start - they are configured via plain HTTP given
that user's PC is connected to a "LAN" port with a cable. And only
when user activates the outside access (via VPN or SSH) the keys are
to be generated - possibly in several hours, like those 17 hours the
`openssh dhparam -5 8192` command took at my notebook :-)

 > With this data in mind I think we need to generally encourage
 > everyone to go to a minimum of 2048 bit primes

For my clients, I force the use of 4096 bit for over 5 years.

 > (which should last a few more years assuming quantum computers
 > don't suddenly make factorization easy)

That wouldn't be suddenly. At least I'm not going to worry until
they would be able to factorize some number close to 2^160 - say,
266508845991748914569771929356540352347893240569. And yes, I know
one divisor: it is 4458192223320340849 :-)

 > and establish some safe methods of creating them, much like
 > generating CA encryption keys we need to ensure the systems/
 > software in use are correct, the entropy is available (and
 > not manipulated) and so on.

Here we come to trusted execution, trusted computation and so on.

 > Ideally we'd like to see people using different primes (e.g.
 > hardware manufacturers not using the same primes as everyone
 > else) and where possible people needing more security (e.g. a
 > VPN hosting provider) should generate their own keys securely.

Theory is fine. But in practice we see weakened algorithms with
(intentionally?) reduced key size.


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin <gremlin נעי gremlin פ‏כ ru>
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8 @ hkp://keys.gnupg.net
