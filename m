X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2708" "Tuesday" "27" "June" "2017" "01:50:39" "+0200" "PaX Team" "pageexec@freemail.hu" "<59519DCF.16680.8BD89DD3@pageexec.freemail.hu>" "56" "Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth" "^CC:" nil nil "6" "2017062623:50:39" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth" (number mark "        pageexec@fre Jun 27   56/2708  " thread-indent "\"Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth\"\n") "<a7c4a449-27df-1595-5ba5-4c5cd7ba93e0@redhat.com>" ("<20170624005003.GB27479@grsecurity.net>" "<5951818E.21842.8B6A4375@pageexec.freemail.hu>" "<a7c4a449-27df-1595-5ba5-4c5cd7ba93e0@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13415 invoked by uid 550); 27 Jun 2017 12:42:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21574 invoked from network); 26 Jun 2017 23:50:58 -0000
MIME-Version: 1.0
Message-ID: <59519DCF.16680.8BD89DD3@pageexec.freemail.hu>
Priority: normal
In-reply-to: <a7c4a449-27df-1595-5ba5-4c5cd7ba93e0@redhat.com>
References: <20170624005003.GB27479@grsecurity.net>, <5951818E.21842.8B6A4375@pageexec.freemail.hu>, <a7c4a449-27df-1595-5ba5-4c5cd7ba93e0@redhat.com>
X-mailer: Pegasus Mail for Windows (4.72.572)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-2.1.12 (r00tworld.com [212.85.137.150]); Tue, 27 Jun 2017 01:50:39 +0200 (CEST)
X-Virus-Scanned: r00tworld Anti-Virus System
CC: spender@grsecurity.net
Date: Tue, 27 Jun 2017 01:50:39 +0200
From: "PaX Team" <pageexec@freemail.hu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth
To: oss-security <oss-security@lists.openwall.com>, kseifried@redhat.com

On 26 Jun 2017 at 16:59, Kurt Seifried wrote:
> 
> On 2017-06-26 3:50 PM, PaX Team wrote:
> > On 26 Jun 2017 at 13:47, Kurt Seifried wrote:
> >
> >> I think we can agree as a community of professionals that insults and name
> >> calling are unnecessary and also not very effective.
> > I completely agree with you but then I can't explain why you chose to insult
> > our projects last week and still have not remedied it (both the CVE and your
> > insulting tweet are still up). I find it curious how you can preach about
> > professionalism after being the very instigator of the recent splat (heck,
> > instead of answering, you called it a conspiracy theory when I asked you in
> > private why you issued the CVE to begin with which then forced us to take
> > the issue public).
> So as per the private email thread we had previously I'm not going to be
> interacting with you beyond what is strictly neccesary for CVE and other
> professional purposes.

Since your professional job is to issue CVEs and you did so in our case based
on an erroneous judgement call, I believe it falls into this category.

> One the CVE REJECT side, CVE-2017-1000377 looks legitimate,

You have yet to explain why it is so. The Qualys advisory and their explicit
reject requests state the exact opposite.

> although I'm inclined to agree with Qualys and REJECT it so that you stop emailing.

I will stop emailing you when you live up to your professional obligation
and make sure that the CVE you issued in error is rescinded.

> I did contact MITRE, I haven't had time to reply to them yet (they are
> also wondering why the CVE needs REJECT'ing), as such I think it may be
> best to recuse myself from this specific CVE and let you handle this
> with MITRE. I have also previously told you how to go about doing this.

You said that the requestor has to ask for the rejection. Since you are the
requestor, only you can do so though you tried to drag Qualys into this.
They still made the reject request a week ago but you haven't acted on it
yet despite your promise to do so. Now you're telling us that we have yet
something else to do? Please elaborate as your past communications didn't
explain any further.

> I will say that CVE identifiers doesn't just cover full code execution
> flaws, but also covers situations where for example a security property
> is claimed but is not as effective as we thought (e.g. the stackguard
> page size in this case). Many CVE's are not fully exploitable on their
> own but are part of an exploit chain.

What security property did we claim for the kernel enforced heap-stack
gap size? Can you recite anything we said anywhere about that supports
your claim?

cheers,
  PaX Team

