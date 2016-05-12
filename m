X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2651" "Thursday" "12" "May" "2016" "21:16:00" "+0300" "Solar Designer" "solar@openwall.com" "<20160512181600.GA6622@openwall.com>" "53" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016051218:16:00" "[oss-security] broken RSA keys" (number mark "        solar@openwa May 12   53/2651  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<CAP9m6YcPrs7yaOHAHeN9cr_EhOJKHu2tptVwTm=ngTZrN7VZfQ@mail.gmail.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" "<20160505081757.GA23172@openwall.com>" "<CAP9m6YcPrs7yaOHAHeN9cr_EhOJKHu2tptVwTm=ngTZrN7VZfQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22432 invoked by uid 550); 12 May 2016 18:16:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22414 invoked from network); 12 May 2016 18:16:06 -0000
Message-ID: <20160512181600.GA6622@openwall.com>
References: <20160504124248.GA15148@openwall.com> <20160504172803.GA19393@openwall.com> <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com> <20160505081757.GA23172@openwall.com> <CAP9m6YcPrs7yaOHAHeN9cr_EhOJKHu2tptVwTm=ngTZrN7VZfQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP9m6YcPrs7yaOHAHeN9cr_EhOJKHu2tptVwTm=ngTZrN7VZfQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 12 May 2016 21:16:00 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On Thu, May 05, 2016 at 08:36:29AM -0400, Stanislav Datskovskiy wrote:
> On Thu, May 5, 2016 at 4:17 AM, Solar Designer <solar@openwall.com> wrote:
> > When a modulus is (mangled?) such that each of its 64-bit limbs consists
> > of two matching 32-bit limbs, it is necessarily a multiple of 2^32+1.
> > That's because it can be represented as:
> >
> > N = {an an ... a1 a1 a0 a0} = (2^32+1) * {0 an ... 0 a1 0 a0}
> >
> > where the {...} notation means concatenated 32-bit limbs (or base 2^32
> > digits, if you will).  From this, it follows that pairwise GCDs of such
> > moduli will also have 2^32+1 as a factor, and this is what ultimately
> > causes the 32-bit limb patterns in the GCDs.  As Alexander Cherepanov
> > correctly pointed out, even the seemingly slightly more complex 32-bit
> > limb patterns in the GCDs are merely indication of them being multiples
> > of 2^32+1.  There's probably nothing else to see here.
> 
> Mircea Popescu (trilema.com) and I figured this out last May.
> But the conclusion 'nothing to see here, move along' does not follow.

By "nothing else to see here" I was referring only to the patterns seen
in GCDs, which are merely a consequence of the pattern seen in moduli.

> > As Alexander Cherepanov wrote, if I understand him correctly, there's
> > 100% overlap between keys with such moduli and with such exponents.
> 
> Presently I do not know why the perpetrator found it necessary to mangle
> the exponent.

To me, this speaks in favor of the software bug/miscompile theory,
rather than an attack.  I took a look at:

$ sha256sum *gz
bced395621ddd1c8fd5a87279dface260fb47351a89427e1db7a785fd9f7595c  pks-0.9.4.tar.gz
419fff7df644ac11d92ca5b7981e0a6f1e10f74605eb1602f7b39e272d8b079c  pks-0.9.6.tar.gz
0b3b706df7bf2a4deb7b2e779402f1f8fcbe42b12d32a97692f37d97c5dba264  sks-1.0.5.tgz
92a7f113f0ba7a28d51d7ced60a984d042d8524c651dc3fcafe9d11cc32981a0  sks-1.1.5.tgz

but none of them look like they'd be likely to contain or expose a
library bug like this: they don't appear to re-encode the bignums.

> I haven't any notion of why this particular mutilation was chosen.
> But the particular list of victims is sufficient to rule out 'software bug'
> in my mind as an intellectually-honest explanation.

This could be so, or there could be something else in common about them,
such as preference to use some otherwise not so common piece of software.

Anyway, I think we can in fact end this discussion for now - not because
"nothing to see here, move along", but because we've already considered
the available clues (thank you all for helping get us on the same page!)
and there are no new clues yet.

Alexander
