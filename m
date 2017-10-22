X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2834" "Sunday" "22" "October" "2017" "13:36:30" "+0200" "Solar Designer" "solar@openwall.com" "<20171022113629.GA24942@openwall.com>" "65" "Re: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference" nil nil nil "10" "2017102211:36:30" "[oss-security] Netlink XFRM socket subsystem NULL pointer dereference" (number mark "U       solar@openwa Oct 22   65/2834  " thread-indent "\"Re: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference\"\n") "<87tvyrmnrk.fsf@fastmail.com>" ("<CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>" "<87tvyrmnrk.fsf@fastmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7774 invoked by uid 550); 22 Oct 2017 11:37:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7568 invoked from network); 22 Oct 2017 11:36:40 -0000
Date: Sun, 22 Oct 2017 13:36:30 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Noam Rathaus <noamr@beyondsecurity.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20171022113629.GA24942@openwall.com>
References: <CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com> <87tvyrmnrk.fsf@fastmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tvyrmnrk.fsf@fastmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference

On Sun, Oct 22, 2017 at 01:21:19PM +0200, Marius Bakke wrote:
> Noam Rathaus <noamr@beyondsecurity.com> writes:
> > I was forwarded by:
> > Dan Carpenter <dan.carpenter@oracle.com>
> >
> > To you regarding obtaining a CVE for the mentioned (in the title)
> > vulnerability
> >
> > I know a patch is being created and placed into mainstream code of the
> > Kernel
> >
> > I would like also to get a CVE for it, so that we can put that in the
> > advisory we will release
> 
> Unfortunately CVE IDs are not assigned through this list anymore.
> Please use <https://cveform.mitre.org/> to request a CVE.

Marius is right.  More detail on how we'd like this used as it relates
to also posting to oss-security:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#cve-requests

"Previously, one could request CVE IDs for issues in Open Source
software from oss-security.  This is no longer the case.  Instead, please
start by posting about the (to be made) public issue to oss-security
(without a CVE ID), request a CVE ID from MITRE directly, and finally
"reply" to your own posting when you also have the CVE ID to add.  With
the described approach you would only approach MITRE after the issue is
already public, but if you choose to do things differently and contact
MITRE about an issue that is not yet public, then please do not disclose
to them more than the absolute minimum needed for them to assign a CVE ID."

> > Do we need to give you the full technical writeup of the vulnerability?
> 
> It's by no means required,

Actually, this is in fact required:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"At least the most essential part of your message (e.g., vulnerability
detail and/or exploit) should be directly included in the message itself
(and in plain text), rather than only included by reference to an
external resource.  Posting links to relevant external resources as well
is acceptable, but posting only links is not.  Your message should remain
valuable even with all of the external resources gone."

Of course, only post the full detail once it's meant to be made public.

Noam's message so far is not sufficiently detailed for oss-security, for
when the issue is public (I get the feeling it might not be yet).

> but it would be appreciated if you could get
> back to this list with the advisory and CVE identifier when ready.

Right.

Finally, let's not assume that "kernel" implies "Linux", even though
it's usually the case in postings in here.  Going forward, let's
explicitly say "Linux kernel" where appropriate (especially at the start
of message Subjects), so that we don't discourage reporting and
discussion of issues in other Open Source kernels in here.  (This
thread's Subject should stay as it is not to add confusion, though.)

Alexander
