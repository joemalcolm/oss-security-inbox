X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3709" "Saturday" "6" "July" "2019" "18:29:36" "-0400" "Sasha Levin" "sashal@kernel.org" "<20190706222936.GL10104@sasha-vm>" "82" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "7" "2019070622:29:36" "[oss-security] linux-distros membership application - Microsoft" (number mark "        sashal@kerne Jul  6   82/3709  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190706193737.GA23344@openwall.com>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>" "<20190627170508.GB11506@sasha-vm>" "<20190628125743.GA2187@openwall.com>" "<20190628170812.GG11506@sasha-vm>" "<20190706193737.GA23344@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31815 invoked by uid 550); 6 Jul 2019 22:29:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31787 invoked from network); 6 Jul 2019 22:29:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562452178;
	bh=OJ1+2Y4KPi/dsAYcipvRZDiayl9h9t0Bm3H7ezOa8CM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=g91jj/EwzBc5WAi4GXENsghKPYpGhVqYuUQ/M5DmpinpYrbzwCOx6qpsK6beZT63U
	 OgKnWBoZ3UviAqHcqyiZ+dFXN71k9wRNIxjt815Jw1WwRjdoJui2Ss6YchyVlFFq2+
	 8dfNTkD23bBIQEkWslTfw5tNkm7T3UdWnbx6QVfE=
Message-ID: <20190706222936.GL10104@sasha-vm>
References: <20190626141358.GK7898@sasha-vm>
 <20190627140321.GA29338@openwall.com>
 <20190627170508.GB11506@sasha-vm>
 <20190628125743.GA2187@openwall.com>
 <20190628170812.GG11506@sasha-vm>
 <20190706193737.GA23344@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20190706193737.GA23344@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Sat, 6 Jul 2019 18:29:36 -0400
From: Sasha Levin <sashal@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com

On Sat, Jul 06, 2019 at 09:37:37PM +0200, Solar Designer wrote:
>Hi all,
>
>Per our current policy and precedents, I see no valid reasons not to
>subscribe Microsoft (or part(s) of it, see below) to linux-distros.  So
>I intend to figure out some detail and proceed with the subscription.

Thank you.

[snip]

>On Fri, Jun 28, 2019 at 01:08:12PM -0400, Sasha Levin wrote:
>> Can I suggest that we fork the discussion around security-bugs.rst to
>> LKML? I can suggest an initial patch to address your comments here but I
>> think that this is better handled on LKML.
>
>Yes, please.

Sure, give me a day or two to get it out. I'll cross-post
LKML/ksummit-discuss/oss-security as I think it's one of those times it
actually makes sense.

>> Microsoft's history with Linux is a rather recent one. I can offer the
>> following examples if you're willing to give us a few months off of the
>> "1 year" requirement:
>>
>> CVE-2018-1002105:
>> https://azure.microsoft.com/en-us/updates/aks-clusters-patched-for-kubernetes-vulnerability/
>> CVE-2018-5391, CVE-2018-5390:
>> https://azure.microsoft.com/en-us/blog/security-bulletin-for-august-2018/
>> CVE-2019-5736:
>> https://azure.microsoft.com/en-us/updates/iot-edge-fix-cve-2019-5736/
>> CVE-2019-11477, CVE-2019-11478, CVE-2019-11479:
>> https://azure.microsoft.com/en-us/updates/security-advisory-on-linux-kernel-tcp-vulnerabilities-for-hdinsight-clusters/
>
>The oldest of these is August 8, 2018, which is just 1 month short of
>the 1 year term.  I suppose we could either give Microsoft this 1 month
>off as you suggest based on Microsoft's track record of promptly dealing
>with security issues in non-Linux products, or subscribe Microsoft to
>linux-distros in August 2019 (or later).

Whatever list admins/members are comfortable with.

>More importantly, maybe we shouldn't list "Microsoft" as a member of
>linux-distros.  Microsoft is so much more than the recent Linux-based
>products and services.  We similarly list "Amazon Linux AMI" rather than
>"Amazon", and "Chrome OS" rather than "Google" (and we had separately
>listed "Android", which has since unsubscribed), and "Ubuntu" rather
>than "Canonical".  OTOH, we were not as careful to list proper products,
>etc. for some others such as "Oracle".
>
>If we list "Microsoft", this might be especially confusing since issues
>being reported might also be relevant to Windows.  The reporters need to
>know they're not reaching Windows security team unless they specifically
>authorize that.
>
>Any suggestions on the above?

Yes, this is tricky. Maybe "Microsoft Linux Systems Group"? Thats our
group name within Microsoft. I guess that we can also add a short wiki
page with references to the products/distros we support as well as a
clarification that this has nothing to do with Windows and list MSRC's
contact information.

>Regardless, the list policy only allows use of the information for
>"getting the issue fixed for your distro's users and, only in rare
>extreme cases, for deployment of maximally non-revealing changes to
>maintain security of your distro's infrastructure most essential to the
>distro users' security in face of the security issue being dealt with.
>The need-to-know condition is met only if the person needs to
>participate in one of these two activities."  This is meant to preclude
>sharing within the organization beyond its parts responsible for the
>"distro" the organization is subscribed for.

As I've indicated before, we intend to follow the list's policies.
Information obtained from the list will be used only for the purposes
listed in our original application, and any additional future use will
go through the list for approvals first.

--
Thanks,
Sasha
