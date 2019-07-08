X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2960" "Monday" "8" "July" "2019" "14:51:37" "+0200" "Solar Designer" "solar@openwall.com" "<20190708125137.GA26895@openwall.com>" "61" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "7" "2019070812:51:37" "[oss-security] linux-distros membership application - Microsoft" (number mark "U       solar@openwa Jul  8   61/2960  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190706222936.GL10104@sasha-vm>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>" "<20190627170508.GB11506@sasha-vm>" "<20190628125743.GA2187@openwall.com>" "<20190628170812.GG11506@sasha-vm>" "<20190706193737.GA23344@openwall.com>" "<20190706222936.GL10104@sasha-vm>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18188 invoked by uid 550); 8 Jul 2019 12:52:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17707 invoked from network); 8 Jul 2019 12:51:49 -0000
Message-ID: <20190708125137.GA26895@openwall.com>
References: <20190626141358.GK7898@sasha-vm> <20190627140321.GA29338@openwall.com> <20190627170508.GB11506@sasha-vm> <20190628125743.GA2187@openwall.com> <20190628170812.GG11506@sasha-vm> <20190706193737.GA23344@openwall.com> <20190706222936.GL10104@sasha-vm>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190706222936.GL10104@sasha-vm>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 8 Jul 2019 14:51:37 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com

On Sat, Jul 06, 2019 at 06:29:36PM -0400, Sasha Levin wrote:
> On Sat, Jul 06, 2019 at 09:37:37PM +0200, Solar Designer wrote:
> >On Fri, Jun 28, 2019 at 01:08:12PM -0400, Sasha Levin wrote:
> >>Can I suggest that we fork the discussion around security-bugs.rst to
> >>LKML? I can suggest an initial patch to address your comments here but I
> >>think that this is better handled on LKML.
> >
> >Yes, please.
> 
> Sure, give me a day or two to get it out. I'll cross-post
> LKML/ksummit-discuss/oss-security

Please just take this to LKML, without CC to oss-security.  We can
summarize the changes for oss-security separately.  I don't know about
relevance to ksummit-discuss.

> as I think it's one of those times it actually makes sense.

This might or might not be an exception, but in general CC'ing a thread
to LKML and oss-security is problematic and is specifically discouraged
in oss-security content guidelines:

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security).  If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings.  You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

> >More importantly, maybe we shouldn't list "Microsoft" as a member of
> >linux-distros.  Microsoft is so much more than the recent Linux-based
> >products and services.  We similarly list "Amazon Linux AMI" rather than
> >"Amazon", and "Chrome OS" rather than "Google" (and we had separately
> >listed "Android", which has since unsubscribed), and "Ubuntu" rather
> >than "Canonical".  OTOH, we were not as careful to list proper products,
> >etc. for some others such as "Oracle".
> >
> >If we list "Microsoft", this might be especially confusing since issues
> >being reported might also be relevant to Windows.  The reporters need to
> >know they're not reaching Windows security team unless they specifically
> >authorize that.
> >
> >Any suggestions on the above?
> 
> Yes, this is tricky. Maybe "Microsoft Linux Systems Group"? Thats our
> group name within Microsoft. I guess that we can also add a short wiki
> page with references to the products/distros we support as well as a
> clarification that this has nothing to do with Windows and list MSRC's
> contact information.

I think listing "Microsoft Linux Systems Group" is enough to avoid the
confusion.  I support Moritz's request for you to add to our existing
wiki pages with vendors' security contact information, and you can list
the pertaining products/distros nearby.

Alexander
