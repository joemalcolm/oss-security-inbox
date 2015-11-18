X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2951" "Wednesday" "18" "November" "2015" "04:57:18" "+0300" "Solar Designer" "solar@openwall.com" "<20151118015718.GA31188@openwall.com>" "63" "[oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111801:57:18" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       solar@openwa Nov 18   63/2951  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B54BA.6090203@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5199 invoked by uid 550); 18 Nov 2015 01:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5178 invoked from network); 18 Nov 2015 01:58:20 -0000
Date: Wed, 18 Nov 2015 04:57:18 +0300
From: Solar Designer <solar@openwall.com>
To: Bernd Schmidt <bschmidt@redhat.com>
Cc: oss-security@lists.openwall.com, Jeff Law <law@redhat.com>,
	Florian Weimer <fweimer@redhat.com>
Message-ID: <20151118015718.GA31188@openwall.com>
References: <20151117153951.GA28672@openwall.com> <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <564B54BA.6090203@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Fwd: x86 ROP mitigation

On Tue, Nov 17, 2015 at 05:24:26PM +0100, Bernd Schmidt wrote:
> I wouldn't call it my plan. I'm essentially in the role of implementing 
> requirements that others with more knowledge of the security issues come 
> up with.
> 
> The plan, as far as it goes, is to start picking low-hanging fruit, and
> hopefully build up over time until we have something that actually
> provides protection. Things that we've discussed include:
> 
>   * modr/m bytes (posted)
>   * sib bytes (relatively simple extension, some parts done)
>   * immediates (patch exists but has some remaining problems)
>   * also look into avoiding not just ret bytes but also indirect jumps
>     and such. More interesting because that may span instructions.
>   * See if we can get as to detect cases where two adjacent instructions
>     contain a pattern useful for attacks (like the indirect jump) and
>     put a nop in between.
>   * Look into an idea Florian had for improving stack-protector
>     epilogues.
>   * branch offsets (I'm not sure but I think Jeff told me of efforts
>     on the binutils side).
>   * yesterday we discussed something which Florian tells me is called
>     "contification" and which I think could be done reasonably easily
>     for functions with known local scope. Florian thinks it's expensive
>     (it probably is) so we may want -mmitigate-rop=strong options at
>     some point.
>   * Further out, symbolic addresses are a remaining problem that would
>     require work throughout the toolchain and could be expensive to
>     address.
> 
> Also useful would be better tools to detect possibly exploitable 
> sequences. Florian had some complaints about the reliability of the ones 
> we looked at, and I had some complaints about being lost in python 
> dependencies and not getting them installed in the first place.

Thank you!

I'd like more detail on the plan of dealing with function epilogues, if
there is a plan for that.

I'm not sure if this fits under:

>   * Look into an idea Florian had for improving stack-protector
>     epilogues.

or if that's (more likely) something entirely different.

What I mean is that function epilogues are useful gadgets, are common
(probably more so than e.g. computed branches coming from "switch"
statements), and appear to be difficult to deal with (preferably,
efficiently and not breaking the ABI) - or do you have an idea?  I think
this aspect may very well be key to determining whether the entire
effort is worthwhile or not.

There's also an in-between option: if the security benefits are minimal
(and possibly non-existent), we might want to include zero runtime
performance impact changes only (e.g., renaming a chain of registers may
be OK, but introducing extra reg-reg move instructions would not be OK).
The result would be code with fewer usable gadgets (which might or might
not be any better security-wise, depending on threat model) that runs
just as fast.

Alexander
