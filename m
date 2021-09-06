X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2933" "Monday" "6" "September" "2021" "20:35:39" "+0200" "Solar Designer" "solar@openwall.com" nil "60" "Re: [oss-security] Oracle Solaris membership in the distros list" nil nil nil "9" nil nil (number mark "U       solar@openwa Sep  6   60/2933  " thread-indent "\"Re: [oss-security] Oracle Solaris membership in the distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Oracle Solaris membership in the distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7267 invoked by uid 550); 6 Sep 2021 18:35:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6137 invoked from network); 6 Sep 2021 18:35:42 -0000
Date: Mon, 6 Sep 2021 20:35:39 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20210906183539.GA18828@openwall.com>
References: <0135587d-2aa8-63ac-f6cb-320c98697d33@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0135587d-2aa8-63ac-f6cb-320c98697d33@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Oracle Solaris membership in the distros list

Hi Alan,

I'm sorry for the delayed response.

On Tue, Aug 24, 2021 at 03:46:28PM -0700, Alan Coopersmith wrote:
> We could perhaps just expand the existing "Oracle" membership to include
> Solaris, but I'm not sure if it's appropriate for Solaris to be a part of
> linux-distros, instead of the distros list.  While we don't ship the Linux
> kernel, we do ship some appropriately licensed code from it, mostly
> dual-licensed drivers, and certainly have overlapping concerns in areas
> such as providing OS-level mitigations for CPU speculative execution issues,
> but the same is true for the BSDs on the distros list as well.
> 
> The members I would propose adding from the Solaris team are:
> 	 Alan Coopersmith <Alan.Coopersmith@Oracle.COM>
> 	 Casper Dik <Casper.Dik@Oracle.COM>
> 	 Pavel Heimlich <Pavel.Heimlich@Oracle.COM>
> and existing members of the distros list from the Oracle Linux team have 
> agreed
> to vouch for us.  (Non-Oracle members of the distros list may also know me 
> from
> my years on the X.Org Foundation security response team and may know Casper
> from his many years of broader community participation, and we've both been
> participating in oss-security for quite a while.)

I'm happy to vouch for you and Casper, and you can then vouch for Pavel.

> So should we just expand the existing Oracle membership to cover both teams
> or do we need to apply separately as the Oracle Solaris team?

I think it's best to separately add Oracle Solaris to the distros list.

> If we need to apply separately, how is the "giving back" criteria handled
> for orgs who are only on distros and not linux-distros, and thus can't
> perform most of the tasks given?  (I don't see the BSD's listed for any
> of the tasks there.)

There has been no such precedent so far (the two *BSDs were subscribed
before the "contributing back" tasks were introduced).  The below task
looks suitable (and I'd appreciate help on it):

 Administrative tasks mostly unrelated to (linux-)distros lists (but
relevant to the wider community)

    Help ensure that each message posted to oss-security contains the
most essential information (e.g., vulnerability detail and/or exploit)
directly in the message itself (and in plain text) rather than only by
reference to an external resource, and add the missing information
(e.g., in your own words, by quoting with proper attribution, and/or by
creating and attaching a properly attributed text/plain export of a
previously referenced web page) and remind the original sender of this
requirement (for further occasions) in a "reply" posting when necessary

I don't insist on you taking any task, though - especially considering
that you'd have reduced exposure (only on distros) and that Oracle is
already giving back (for the Oracle Linux subscription).  Your
willingness to separate Linux vs. Solaris is helping to reduce risks,
and shouldn't have a further cost to you.

Alexander
