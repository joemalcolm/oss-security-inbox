X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["840" "Thursday" "22" "October" "2015" "18:55:06" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<8737x2bjjp.fsf@alice.fifthhorseman.net>" "17" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102222:55:06" "[oss-security] Prime example of a can of worms" (number mark "        dkg@fifthhor Oct 22   17/840   " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<562869CF.3060106@internot.info>" "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11434 invoked by uid 550); 22 Oct 2015 22:55:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11413 invoked from network); 22 Oct 2015 22:55:50 -0000
In-Reply-To: <CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <20151021170113.128d3a8e@silentmaxx> <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com> <562869CF.3060106@internot.info> <CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>
User-Agent: Notmuch/0.20.2 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <8737x2bjjp.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 22 Oct 2015 18:55:06 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Kurt Seifried <kseifried@redhat.com>, oss-security <oss-security@lists.openwall.com>

On Thu 2015-10-22 01:09:16 -0400, Kurt Seifried wrote:
> Having a large pool of known good primes would be easier for them to use I
> suspect. Sadly we can't let perfect be the enemy of the good, or in this
> case the "not completely terrible".

a large pool of known-good primes doesn't help so much, particularly for
the embedded case -- peers that are offered a group need to be able to
easily verify that the group is strong.  embedded devices simply aren't
going to carry around a large list of well-vetted primes of short
length, but we could *maybe* convince them to carry around a shorter
list of well-vetted strong primes.

I'd rather see us increase the security margin for a set of well-vetted
standard groups than ask people to make implementations that can't
determine whether they're in a reasonable group or not.

     --dkg
