Received: (qmail 14085 invoked by uid 550); 17 May 2023 17:14:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13807 invoked from network); 17 May 2023 17:14:01 -0000
Date: Wed, 17 May 2023 19:13:51 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230517171351.GA8234@openwall.com>
References: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] IPv6 and Route of Death

Hi Jeffrey and all,

On Wed, May 17, 2023 at 10:02:31AM -0400, Jeffrey Walton wrote:
> This seems to have been dropped as a 0-day. I have not seen a CVE
> assigned to it.

The "original writeup" you reference says this is CVE-2023-2156.

> I _think_ this is the original writeup:
> 
>   * https://www.interruptlabs.co.uk//articles/linux-ipv6-route-of-death

Thank you for bringing this to oss-security.

I'd appreciate it if you and/or others also post plain text extracts of
such content, not only the links.  Anyone willing to do it this time?

Also, this list isn't only about Linux, so when posting about
Linux-specific issues let's state so in the Subject line.  In this case,
the issue is in Linux kernel and it affects systems with enabled sysctl
net.ipv6.conf.*.rpl_seg_enabled for at least some interface(s).

Alexander
