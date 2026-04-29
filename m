Received: (qmail 17867 invoked by uid 550); 29 Apr 2026 03:16:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14142 invoked from network); 29 Apr 2026 03:15:49 -0000
Date: Wed, 29 Apr 2026 05:15:47 +0200
From: Solar Designer <solar@openwall.com>
To: Dmitry Butskoy <buc@buc.spb.ru>
Cc: MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn>,
	oss-security@lists.openwall.com
Message-ID: <20260429031547.GA19260@openwall.com>
References: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com> <a6a3fbc7-c275-a4ae-3f54-229c5d74bdaa@buc.spb.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a6a3fbc7-c275-a4ae-3f54-229c5d74bdaa@buc.spb.ru>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [SECURITY] =?utf-8?Q?Ou?=
	=?utf-8?Q?t-of-Bounds_Read_in_MPLS_Extension_Parsing_?=
	=?utf-8?B?4oCU?= traceroute 2.1.2

On Wed, Apr 29, 2026 at 01:48:07AM +0300, Dmitry Butskoy wrote:
> From the appearing of this fragment of code in 2.0.12 (2008 year), the 
> statement "n -= hlen;" is present here. Including the current version of 
> 2.1.6, see line 1423 of traceroute/traceroute.c :
> 
> >        if (!err &&
> >            af == AF_INET &&
> >            /*  XXX: Assume that the presence of an extra 
> >header means
> >                that it is not a raw socket...
> >            */
> >            ops->header_len == 0
> >        ) {
> >            struct iphdr *ip = (struct iphdr *) bufp;
> >            int hlen;
> >
> >            if (n < sizeof (struct iphdr))  return;
> >
> >            hlen = ip->ihl << 2;
> >            if (n < hlen)  return;
> >
> >            bufp += hlen;
> >            n -= hlen;
> >        }

Thank you, Dmitry!

> What source did you use? Why is your report for version 2.1.2 when the 
> latest version is 2.1.6?
> 
> Note again, that the version of 2.1.2 has this statement as well.
> 
> Could you please find out where you got this inherently corrupted code 
> based on an old version?

FWIW, I've just checked that traceroute-2.1.1-1.el9.src.rpm also
contains the "n -= hlen;" line where Mohamed proposes to add it.

We do indeed need to hear from Mohamed on where he or his AI saw or
hallucinated this, but for now I think it's safe to assume this whole
report is an AI slop.

Mohamed - going forward, please carefully review AI-generated content
before spending other people's time on it, and please always disclose
your use of AI (ideally, including the specifics) and why you think the
content is worthwhile anyway.

Alexander
