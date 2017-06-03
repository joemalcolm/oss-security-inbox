X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2094" "Saturday" "3" "June" "2017" "15:19:20" "+0200" "Solar Designer" "solar@openwall.com" "<20170603131919.GA18438@openwall.com>" "42" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "6" "2017060313:19:20" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        solar@openwa Jun  3   42/2094  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<1496493018.21640.5.camel@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>" "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>" "<1496493018.21640.5.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3198 invoked by uid 550); 3 Jun 2017 13:23:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30007 invoked from network); 3 Jun 2017 13:20:15 -0000
Message-ID: <20170603131919.GA18438@openwall.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com> <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk> <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com> <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com> <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com> <20170530165015.GA4884@openwall.com> <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com> <1496493018.21640.5.camel@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1496493018.21640.5.camel@gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 3 Jun 2017 15:19:20 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function
To: oss-security@lists.openwall.com

Oh, and there I was hoping this thread had ended.

On Sat, Jun 03, 2017 at 08:30:18AM -0400, Daniel Micay wrote:
> On Sat, 2017-06-03 at 12:06 +0200, Florian Weimer wrote:
> > I'm not a Red Hat spokesperson, and I did not speak for Red Hat.

> If you don't want to act as a Red Hat spokesperson, use a
> personal email address

Daniel, I think that's too much.

> > Part of the problem with UEFI Secure Boot is that no one
> > has documented clear security objectives for UEFI Secure Boot.  Fedora
> > sort of evolved into "no unsigned code running in ring 0 without
> > virtualization".  From what I can tell, Microsoft picked that up and
> > urged other distributions under their trust root to implement that as
> > well.
> 
> So, no meaningful security objective

This might be right.  Maybe there's a compliance objective: Microsoft
would let distros use their trust root under some conditions, and from
distros' point of view it doesn't matter much whether those conditions
are meaningful or not as long as they're easy to meet.  Then maybe
treating those bypasses as non-security is a risk, as it draws attention
to the current convenient terms of Microsoft not making security sense,
and thus a risk of those terms changing to something more demanding.
If so, it's technically off-topic for oss-security (and probably for
CVE), but with the different opinions and without certainty about this
interpretation I am not going to use this for moderation decisions just
yet.  I will not be rejecting messages on new (non-)issues in this area.
I just ask that we please refrain from lengthy threads on each and every
such (non-)issue.  I will be pushing them from the (linux-)distros list
to the public right away, if any more are brought to the private lists.

I haven't participated in past discussions on this, nor had any interest
in them.  (I am dragged into this now as list admin/moderator; if
someone else ran the list, I would not be posting to this thread.)
I might very well be wrong in the above paragraph (which is a reason why
no decision to reject new (non-)issues).

Alexander
