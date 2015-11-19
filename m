X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1360" "Thursday" "19" "November" "2015" "12:28:34" "+0300" "Solar Designer" "solar@openwall.com" "<20151119092834.GA11121@openwall.com>" "29" "Re: [oss-security] Fwd: x86 ROP mitigation" nil nil nil "11" "2015111909:28:34" "[oss-security] Fwd: x86 ROP mitigation" (number mark "U       solar@openwa Nov 19   29/1360  " thread-indent "\"Re: [oss-security] Fwd: x86 ROP mitigation\"\n") "<CAGfLVYzktacNa_ZyenDrybe-37A499rv4LEw6BSp9Jqcj5YaOA@mail.gmail.com>" ("<20151117153951.GA28672@openwall.com>" "<20151118021008.GB31188@openwall.com>" "<564C582B.6080803@redhat.com>" "<1673938.GaGbo5rB5J@x2>" "<CAGfLVYzktacNa_ZyenDrybe-37A499rv4LEw6BSp9Jqcj5YaOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6105 invoked by uid 550); 19 Nov 2015 09:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6087 invoked from network); 19 Nov 2015 09:28:38 -0000
Date: Thu, 19 Nov 2015 12:28:34 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20151119092834.GA11121@openwall.com>
References: <20151117153951.GA28672@openwall.com> <20151118021008.GB31188@openwall.com> <564C582B.6080803@redhat.com> <1673938.GaGbo5rB5J@x2> <CAGfLVYzktacNa_ZyenDrybe-37A499rv4LEw6BSp9Jqcj5YaOA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGfLVYzktacNa_ZyenDrybe-37A499rv4LEw6BSp9Jqcj5YaOA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: x86 ROP mitigation

Thank you all for the responses.  The project makes more sense to me now.

Florian wrote:
> > It seems to me that if the stack canary check happened directly before
> > the RET instruction, after restoring the registers, it would make it
> > more difficult to abuse the RET instruction.  With the code above, you
> > can just jump to the address 1c6e7 and have access to quite a few useful
> > POP instructions.

On Wed, Nov 18, 2015 at 05:33:37PM +0100, Fabio Pagani wrote:
> You are right. Attackers will have access to POP instruction and
> potentially to any instruction found in an unaligned fashion.
> Shifting down the check will work but it's very dangerous, because you
> are accessing a part of the stack that was deallocated with the add.

Perhaps the POP instructions can be replaced with MOVs (since the stack
pointer would not yet be right for the POPs) and the ADD postponed until
after the check?  That way, the check would still be inside the would-be
desirable gadget, and would hopefully spoil it (since the gadget would
be invoked without a prior invocation of the function's prologue).

> Actually I've implemented G-Free for X86-64 (except the "symbolic
> addresses" part) in the LLVM backend.
> The source will be released max in 2 weeks, but anyway i will be very
> happy to discuss and help for a GCC implementation.

Cool!

Alexander
