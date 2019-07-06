X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4386" "Saturday" "6" "July" "2019" "21:37:37" "+0200" "Solar Designer" "solar@openwall.com" "<20190706193737.GA23344@openwall.com>" "86" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "7" "2019070619:37:37" "[oss-security] linux-distros membership application - Microsoft" (number mark "        solar@openwa Jul  6   86/4386  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190628170812.GG11506@sasha-vm>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>" "<20190627170508.GB11506@sasha-vm>" "<20190628125743.GA2187@openwall.com>" "<20190628170812.GG11506@sasha-vm>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24466 invoked by uid 550); 6 Jul 2019 19:39:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22451 invoked from network); 6 Jul 2019 19:37:52 -0000
Message-ID: <20190706193737.GA23344@openwall.com>
References: <20190626141358.GK7898@sasha-vm> <20190627140321.GA29338@openwall.com> <20190627170508.GB11506@sasha-vm> <20190628125743.GA2187@openwall.com> <20190628170812.GG11506@sasha-vm>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190628170812.GG11506@sasha-vm>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 6 Jul 2019 21:37:37 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com

Hi all,

Per our current policy and precedents, I see no valid reasons not to
subscribe Microsoft (or part(s) of it, see below) to linux-distros.  So
I intend to figure out some detail and proceed with the subscription.

The only voiced reasons not to, such as in Georgi Guninski's posting and
in comments on some technology news sites that covered Microsoft's
request, are irrelevant per our currently specified membership criteria.

Besides, (at least to me) Microsoft doesn't look all that different from
many other large corporations, including some which already have their
Linux distro teams represented on the list.  Microsoft has a lasting
stigma from its past actions from long ago.  IMO, we shouldn't let that
result in a biased decision against current Microsoft, effectively
favoring other corporations who might not be any better currently, but
just don't have that established stigma.

On Fri, Jun 28, 2019 at 01:08:12PM -0400, Sasha Levin wrote:
> Can I suggest that we fork the discussion around security-bugs.rst to
> LKML? I can suggest an initial patch to address your comments here but I
> think that this is better handled on LKML.

Yes, please.

> Microsoft's history with Linux is a rather recent one. I can offer the
> following examples if you're willing to give us a few months off of the
> "1 year" requirement:
> 
> CVE-2018-1002105: 
> https://azure.microsoft.com/en-us/updates/aks-clusters-patched-for-kubernetes-vulnerability/
> CVE-2018-5391, CVE-2018-5390: 
> https://azure.microsoft.com/en-us/blog/security-bulletin-for-august-2018/
> CVE-2019-5736: 
> https://azure.microsoft.com/en-us/updates/iot-edge-fix-cve-2019-5736/
> CVE-2019-11477, CVE-2019-11478, CVE-2019-11479: 
> https://azure.microsoft.com/en-us/updates/security-advisory-on-linux-kernel-tcp-vulnerabilities-for-hdinsight-clusters/

The oldest of these is August 8, 2018, which is just 1 month short of
the 1 year term.  I suppose we could either give Microsoft this 1 month
off as you suggest based on Microsoft's track record of promptly dealing
with security issues in non-Linux products, or subscribe Microsoft to
linux-distros in August 2019 (or later).

More importantly, maybe we shouldn't list "Microsoft" as a member of
linux-distros.  Microsoft is so much more than the recent Linux-based
products and services.  We similarly list "Amazon Linux AMI" rather than
"Amazon", and "Chrome OS" rather than "Google" (and we had separately
listed "Android", which has since unsubscribed), and "Ubuntu" rather
than "Canonical".  OTOH, we were not as careful to list proper products,
etc. for some others such as "Oracle".

If we list "Microsoft", this might be especially confusing since issues
being reported might also be relevant to Windows.  The reporters need to
know they're not reaching Windows security team unless they specifically
authorize that.

Any suggestions on the above?

Regardless, the list policy only allows use of the information for
"getting the issue fixed for your distro's users and, only in rare
extreme cases, for deployment of maximally non-revealing changes to
maintain security of your distro's infrastructure most essential to the
distro users' security in face of the security issue being dealt with.
The need-to-know condition is met only if the person needs to
participate in one of these two activities."  This is meant to preclude
sharing within the organization beyond its parts responsible for the
"distro" the organization is subscribed for.

> On Fri, Jun 28, 2019 at 02:57:43PM +0200, Solar Designer wrote:
> >If Microsoft joins for its Linux offerings (including Linux on top of
> >Windows), then checking if the Linux issues also affect Windows (itself)
> >would involve sharing beyond the need-to-know condition of
> >(linux-)distros list policy, so isn't allowed by default.  It could
> >still be done with explicit approval of the reporter, though, and I
> >expect most people would give such approval if asked.
> 
> I'd love to develop a framework that would allow for sharing of reports
> between linux-distros/security@k.o/MSRC given the explicit approval of
> the reporter. I think that the current "silo" model is broken.
> 
> Microsoft in general, and MSRC in particular have proved during
> Meltdown/Spectre that they are a trusted entity which can work well with
> the open source community to advance our common goals. 

Alexander
