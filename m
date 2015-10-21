X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["612" "Wednesday" "21" "October" "2015" "17:01:13" "+0200" "Matthias Weckbecker" "matthias@weckbecker.name" "<20151021170113.128d3a8e@silentmaxx>" "22" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102115:01:13" "[oss-security] Prime example of a can of worms" (number mark "        matthias@wec Oct 21   22/612   " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<87eggqmta9.fsf@alice.fifthhorseman.net>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3807 invoked by uid 550); 21 Oct 2015 15:03:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1785 invoked from network); 21 Oct 2015 15:01:30 -0000
Message-ID: <20151021170113.128d3a8e@silentmaxx>
In-Reply-To: <87eggqmta9.fsf@alice.fifthhorseman.net>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
 <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
 <20151019193411.GA15710@hunt>
 <87eggqmta9.fsf@alice.fifthhorseman.net>
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Date: Wed, 21 Oct 2015 17:01:13 +0200
From: Matthias Weckbecker <matthias@weckbecker.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

On Mon, 19 Oct 2015 17:40:14 -0400
Daniel Kahn Gillmor <dkg@fifthhorseman.net> wrote:
[...]
> On the flip side, saying "use only strong (>=2048bit today in 2015?),
> well-known, well-structured, publicly-vetted groups" is very simple
> guidance: clear and easy to follow.
> 

Interestingly I noticed OpenSSH bumped their 'DH_GRP_MIN' to 2048 bit
just a few days ago to account for precomputation attacks:

http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/dh.h.diff?
r1=1.13&r2=1.14

RFC4419 seems to recommend 1024 bit minimum, but the document appears
to be from 2006.

[...]
> 
>       --dkg

Matthias
