X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1794" "Friday" "23" "June" "2017" "22:05:38" "+0200" "Szabolcs Nagy" "nsz@port70.net" "<20170623200538.GS27071@port70.net>" "45" "Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash" nil nil nil "6" "2017062320:05:38" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "U       nsz@port70.n Jun 23   45/1794  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") "<1498109986.32057.1.camel@gmail.com>" ("<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" "<1497898323.1005.1.camel@gmail.com>" "<748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>" "<1497941077.15414.1.camel@gmail.com>" "<c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>" "<1498109986.32057.1.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7855 invoked by uid 550); 23 Jun 2017 20:23:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24034 invoked from network); 23 Jun 2017 20:05:50 -0000
Date: Fri, 23 Jun 2017 22:05:38 +0200
From: Szabolcs Nagy <nsz@port70.net>
To: oss-security@lists.openwall.com
Cc: Jeff Law <law@redhat.com>
Message-ID: <20170623200538.GS27071@port70.net>
Mail-Followup-To: oss-security@lists.openwall.com,
	Jeff Law <law@redhat.com>
References: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
 <1497898323.1005.1.camel@gmail.com>
 <748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>
 <1497941077.15414.1.camel@gmail.com>
 <c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>
 <1498109986.32057.1.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1498109986.32057.1.camel@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash

* Daniel Micay <danielmicay@gmail.com> [2017-06-22 01:39:46 -0400]:
> On Wed, 2017-06-21 at 11:33 -0600, Jeff Law wrote:
> > On 06/20/2017 12:44 AM, Daniel Micay wrote:
> > > I think it's also worth mentioning the segmented stack support in
> > > GCC
> > > and LLVM that was added for Go. It's possible to use it for C with
> > > the
> > > __morestack call set up to simply abort when stack space is
> > > exhausted.
> > > 
> > > That's what Rust was doing after it dropped segmented stacks, but
> > > they
> > > wanted to move to stack probes for efficiency and prematurely
> > > dropped
> > > these function prelude checks.
> > > 
> > > It's not efficient, but it works, unlike -fstack-check.
> > > 
> > > I don't think it makes sense for general purpose distributions to
> > > adopt
> > > it but it's an available option for others with more concern about
> > > this
> > > issue.
> > 
> > Yup.  go's split-stacks are another option.  As you mention, probably
> > not performant enough for a general purpose distribution, but could be
> > interesting for more specialized needs.
> > 
> > jeff
> 
> It can be used with large fixed size stacks and no actual expansion, but
> yeah it's expensive to add a check to every non-leaf prelude. It's not
> as expensive as the SSP check for a function but it needs to cover many.
> 
> Since probes can be so much more efficient, it only makes sense to
> consider it if getting probes fully working is going to take a long
> time.

split stack is broken, it cannot be mixed with non-split-stack
code reliably, the runtime provided by the compiler cannot possibly
be conforming for thread creation, thread exit, user allocated
stacks and it can crash randomly.

but it is not even supported on some targets so i think it's
not a viable workaround anyway.
