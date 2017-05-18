X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2780" "Thursday" "18" "May" "2017" "04:24:15" "+0200" "Marc Lehmann" "schmorp@schmorp.de" "<20170518022415.ygonweucssnxmazg@schmorp.de>" "67" "[oss-security] Re: Defense in depth patch for rxvt-unicode" "^Cc:" nil nil "5" "2017051802:24:15" "[oss-security] Re: Defense in depth patch for rxvt-unicode" (number mark "        schmorp@schm May 18   67/2780  " thread-indent "\"[oss-security] Re: Defense in depth patch for rxvt-unicode\"\n") "<CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>" ("<CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31810 invoked by uid 550); 18 May 2017 05:24:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30194 invoked from network); 18 May 2017 02:24:29 -0000
Message-ID: <20170518022415.ygonweucssnxmazg@schmorp.de>
References: <CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>
OpenPGP: id=904ad2f81fb16978e7536f726dea2ba30bc39eb6;
 url=http://pgp.schmorp.de/schmorp-pgpkey.txt; preference=signencrypt
Cc: oss-security <oss-security@lists.openwall.com>, rxvt-unicode@schmorp.de,
	"jer@gentoo.org" <jer@gentoo.org>
Date: Thu, 18 May 2017 04:24:15 +0200
From: Marc Lehmann <schmorp@schmorp.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Defense in depth patch for rxvt-unicode
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Wed, May 17, 2017 at 01:41:32PM +0200, "Jason A. Donenfeld" <Jason@zx2c4.com> wrote:
> This email thread concerns my request to Marc to include the attached
> patch inside rxvt-unicode upstream. My own downstream -- Gentoo's
> jer@, also CCd -- won't include the patch until the agreement of
> upstream. Thus, it's important we come to a good conclusion.

I don't think we will include this patch upstream.

> On Wed, May 17, 2017 at 3:17 AM, Marc Lehmann <schmorp@schmorp.de> wrote:
> This patch was part of a larger discussion on which you were CCd from
> distros. It seems possible that either those messages didn't make it
> to you, or you didn't have time to read them.

I only received a single message.

> In any case, the attached patch would be a useful defense in depth
> measure to prevent future integer overflow bugs, such as the one that
> was recently found in rxvt.

I am not convinced it is.

> Briefly looking though the code, it seems
> like there is a considerable amount of unchecked integer arithmetic,
> often passing between several functions in several files.

Likely, yes.

> somehow auditing every arithmetic call path, a considerable
> undertaking, Alexander and I would recommend simply limiting the range
> of input from users.

This sounds big, but I don't quite see the patch achieving that, as input is
processed at many places, yet the patch only changes one place.

> As Alexander wrote in a recent email to you, the general opinion of
> this list is that terminal emulators should not support the most
> dangerous uses of escape sequences, even if they're technically valid.
> The attached patch falls into that category.

I can't see why this patch somehow "unsupports" the most dangerous uses of
escape sequences.

> You seem to have made the
> argument that the patch "might break valid uses".

The parameter range is severely limited. This makes the patch rather
disadvantageous, without any demonstrated benefit.

> you a bit of the backstory and recent basis which motivates this
> patch. If this is compelling, I'd rest well knowing it's accepted
> upstream. If this is not compelling, could you indicate to the list
> why "might break valid uses" outweighs the potential security
> mitigations?

Valid uses outweigh "potential security mitigations" simply because
"potential security mitigations" is pretty weightless in itself.

If you are aware of an actual security problem, that would be something to
attack.

-- 
                The choice of a       Deliantra, the free code+content MORPG
      -----==-     _GNU_              http://www.deliantra.net
      ----==-- _       generation
      ---==---(_)__  __ ____  __      Marc Lehmann
      --==---/ / _ \/ // /\ \/ /      schmorp@schmorp.de
      -=====/_/_//_/\_,_/ /_/\_\
