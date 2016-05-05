X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3930" "Thursday" "5" "May" "2016" "11:17:57" "+0300" "Solar Designer" "solar@openwall.com" "<20160505081757.GA23172@openwall.com>" "82" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050508:17:57" "[oss-security] broken RSA keys" (number mark "        solar@openwa May  5   82/3930  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24161 invoked by uid 550); 5 May 2016 08:18:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24133 invoked from network); 5 May 2016 08:18:02 -0000
Message-ID: <20160505081757.GA23172@openwall.com>
References: <20160504124248.GA15148@openwall.com> <20160504172803.GA19393@openwall.com> <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 5 May 2016 11:17:57 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

I posted some half-baked thoughts in here yesterday.  (Not that this
message is fully baked.)  When suspecting that some of what we were
seeing was an artifact of the process, I temporarily forgot that those
shared factors were supposed to be GCDs (not arbitrary shared factors),
which doesn't leave freedom to the process.  The patterns seen in the
GCDs should in fact have to do with pairs of keys, rather than with the
process.  Luckily, there is a simple explanation for the patterns:

When a modulus is (mangled?) such that each of its 64-bit limbs consists
of two matching 32-bit limbs, it is necessarily a multiple of 2^32+1.
That's because it can be represented as:

N = {an an ... a1 a1 a0 a0} = (2^32+1) * {0 an ... 0 a1 0 a0}

where the {...} notation means concatenated 32-bit limbs (or base 2^32
digits, if you will).  From this, it follows that pairwise GCDs of such
moduli will also have 2^32+1 as a factor, and this is what ultimately
causes the 32-bit limb patterns in the GCDs.  As Alexander Cherepanov
correctly pointed out, even the seemingly slightly more complex 32-bit
limb patterns in the GCDs are merely indication of them being multiples
of 2^32+1.  There's probably nothing else to see here.

I made the mistake yesterday of looking at hex representations of the
posted shared factors without first looking at hex representations of
the moduli.  Now that I just did, I see that the example modulus I
posted does follow the pattern mentioned above, and which Stanislav
mentioned below.

On Wed, May 04, 2016 at 09:18:26PM -0400, Stanislav Datskovskiy wrote:
> Author of Phuctor speaking.

Thank you for posting your comments!

> 1) We presently know of 165 keys containing 'mirrored' moduli.

This is similar but not the same as the number Alexander Cherepanov
posted after analyzing your data:

"From 225 keys listed at http://phuctor.nosuchlabs.com/phuctored,
152 ones have modulus and exponent divisible by 2**32+1
[...]
Modulus and exponent are divisible by 2**32+1 or not simultaneously."

Is your definition of "mirrored" different from "divisible by 2**32+1",
or does something else (what?) cause the 165 vs. 152 discrepancy?

> 2) The list of affected persons and organizations includes a number of
> possibly 'politically interesting' targets, e.g., mathematicians, open
> source projects (Debian, a few others), plus a few other delicacies,
> such as 'Apple Product Security', 'PGP Corporation Update Signing
> Key', etc.
> 
> 3) The 'mirrored' keys found thus far in no case have valid
> self-signatures. (A number of the remaining phuctored keys - do.) Thus
> it does not follow from the facts at hand that these particular keys
> were generated /by the people and organizations whose names appear in
> the user string/ !

Are all of the "politically interesting" targets' keys (at least those
you explicitly listed in 2 above) "mirrored" (and don't have valid
self-signatures, as you say)?

> 4) One parsimonious explanation for (1) given (2) and (3) is that the
> 'mirrored' keys were generated by a malicious actor,

Makes sense, but why would they similarly mangle the exponent as well?
As Alexander Cherepanov wrote, if I understand him correctly, there's
100% overlap between keys with such moduli and with such exponents.

> who counted on the principle described at, e.g.,  https://evil32.com ,
> https://bugs.gnupg.org/gnupg/issue1579

As I understand it, the description at evil32.com in particular is about
generating valid (and not necessarily weak) keypairs that would happen
to have the intended 32-bit key id.  This is more computationally
intensive than the "mirroring", but it is fast enough, is an
older-known(?) and more obvious attack, and it doesn't expose the
encrypted data to other/unintended attackers (OK, the "evil guys" might
not care either way).  So it is a little bit surprising (but just a
little) that someone would go for the "mirroring" instead.

Alexander
