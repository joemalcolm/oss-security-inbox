X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1128" "Thursday" "22" "October" "2015" "23:41:39" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87r3km9rpo.fsf@alice.fifthhorseman.net>" "30" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102303:41:39" "[oss-security] Prime example of a can of worms" (number mark "        dkg@fifthhor Oct 22   30/1128  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty3BGrXMkocF2Vp-wXJVE_oo5K4dSA4+H-son_dzuMo4ZQ@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<562869CF.3060106@internot.info>" "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>" "<8737x2bjjp.fsf@alice.fifthhorseman.net>" "<CANO=Ty3BGrXMkocF2Vp-wXJVE_oo5K4dSA4+H-son_dzuMo4ZQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24429 invoked by uid 550); 23 Oct 2015 03:41:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24405 invoked from network); 23 Oct 2015 03:41:55 -0000
In-Reply-To: <CANO=Ty3BGrXMkocF2Vp-wXJVE_oo5K4dSA4+H-son_dzuMo4ZQ@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <20151021170113.128d3a8e@silentmaxx> <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com> <562869CF.3060106@internot.info> <CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com> <8737x2bjjp.fsf@alice.fifthhorseman.net> <CANO=Ty3BGrXMkocF2Vp-wXJVE_oo5K4dSA4+H-son_dzuMo4ZQ@mail.gmail.com>
User-Agent: Notmuch/0.20.2 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <87r3km9rpo.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security <oss-security@lists.openwall.com>
Date: Thu, 22 Oct 2015 23:41:39 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Kurt Seifried <kseifried@redhat.com>

On Thu 2015-10-22 19:37:49 -0400, Kurt Seifried wrote:
> Sorry when I said a "large" pool I meant more then the current 5 or so that
> seem to be in popular use, but certainly not more than a few hundred.

ok, that's a relief :) but, running the numbers, even 100 hundred
2048-bit groups comes out to a quarter MiB of RAM.  (i figure 256 bytes
per prime, a well-known, shared generator)

Larger groups (or more groups) inflate the size even further.  I know
RAM is cheap these days but for embedded devices a quarter meg or more
of RAM is still not insignificant.

> Basically we're in agreement, I think nothing under 2048 should even be
> considered, and we probably need to bump that up in a few years anyways.

yep, agreed.

> I've also been going through source code to see how people use dh
> params/treat them, and I have some worrying results (basically what I
> expected though, everything is terrible as usual)

:/

> I'm going to be writing this up as an article rather than a long email as I
> have a few more sticky points to raise (security rabbit holes are so much
> fun).

I look forward to reading it.

  --dkg
