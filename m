X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["566" "Monday" "19" "October" "2015" "15:40:58" "-0700" "Tim" "tim-security@sentinelchicken.org" "<20151019224058.GD28306@sentinelchicken.org>" "16" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015101922:40:58" "[oss-security] Prime example of a can of worms" (number mark "        tim-security Oct 19   16/566   " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty2oadzojzOgaYEGKJUC9HoKeLdGHfKyVjipUHJXFSpapg@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<CANO=Ty2oadzojzOgaYEGKJUC9HoKeLdGHfKyVjipUHJXFSpapg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8140 invoked by uid 550); 19 Oct 2015 22:41:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8122 invoked from network); 19 Oct 2015 22:41:17 -0000
Message-ID: <20151019224058.GD28306@sentinelchicken.org>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
 <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
 <20151019193411.GA15710@hunt>
 <CANO=Ty2oadzojzOgaYEGKJUC9HoKeLdGHfKyVjipUHJXFSpapg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty2oadzojzOgaYEGKJUC9HoKeLdGHfKyVjipUHJXFSpapg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 19 Oct 2015 15:40:58 -0700
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

> We have AFAIK no good test suites to ensure random numbers/primes are
> cryptographically secure.
> 
> If we did we wouldn't have issues like CVE-2008-0166.


Actually, we might have this now.  See:
  http://www.cryptol.net/

These guys put on a very short training at BSidesPDX this last weekend
and it seems like it could be exactly what you're looking for.  No,
not to solve all the DH trouble, but it can make sure an
implementation matches a specification.  Of course you have to have a
specification.  But once you do, it can verify binaries' behavior.

tim
