Received: (qmail 11527 invoked by uid 550); 17 May 2023 18:34:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3300 invoked from network); 17 May 2023 18:19:55 -0000
Date: Wed, 17 May 2023 20:19:42 +0200
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20230517181942.GA2466@unix-ag.uni-kl.de>
References: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
 <20230517171351.GA8234@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230517171351.GA8234@openwall.com>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Subject: Re: [oss-security] IPv6 and Route of Death

Hi all,

On Wed, May 17, 2023 at 07:13:51PM +0200, Solar Designer wrote:
> On Wed, May 17, 2023 at 10:02:31AM -0400, Jeffrey Walton wrote:
> > This seems to have been dropped as a 0-day. I have not seen a CVE
> > assigned to it.
> 
> The "original writeup" you reference says this is CVE-2023-2156.
> 
> > I _think_ this is the original writeup:
> > 
> >   * https://www.interruptlabs.co.uk//articles/linux-ipv6-route-of-death

It also mentions that "the bug patch didn't solve the underlying problem
(ZDI confirmed this too), so we're still expecting another patch at
some[ ]point."

The Zero Day Initiative (ZDI) entry[0] linked from the article[1]
gives a time line:

01/26/22 – ZDI reported the vulnerability to the vendor.
[...]
04/14/23 – The vendor informed the ZDI that a new patch would merge
           into the latest mainline on 04/21/2023.
04/21/23 – The original finder reports to the vendor that the patch
           may not work, and it was confirmed by the ZDI that the
           vulnerability is reproducible on the latest mainline.
05/02/23 – The ZDI informed the vendor that the case will be published
           as a zero-day advisory on 05/04/23, and in coordination with
           Red Hat this vulnerability will be assigned CVE-2023-2156.

[0] https://www.zerodayinitiative.com/advisories/ZDI-23-547/
[1] https://www.interruptlabs.co.uk/articles/linux-ipv6-route-of-death

The problem described pertains to handling of IPv6 "RPL Source Routing"
using an IPv6 "Extension Header" of the "Routing Header" variant,
the "RPL Source Route Header" (SRH, Routing Type 3).  This header
is described in RFC 6554.  The RFC specifies that RPL border routers
"do not allow datagrams already carrying an SRH header to enter or exit
a[n] RPL routing domain."

The informational RFC 9288 recommends that "IPv6 packets with IPv6
Extension Headers (or options) that are not expected to traverse transit
routers should be dropped."  This is provided as general advice, not
specific to RPL.

Of course, filtering at the border does not protect against compromised
RPL nodes.

Only systems with enabled RPL functionality seem to be vulnerable (as
far as I understand the report).

The described bug pertains to processing the SRH header at the penultimate
hop.

The described result of exploiting the vulnerability is a kernel panic,
i.e., a remote DoS.

HTH,
Erik
-- 
A distributed system is one in which the failure of a computer you didn't
even know existed can render your own computer unusable.
                        -- Leslie Lamport
