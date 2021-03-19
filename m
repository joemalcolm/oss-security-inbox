X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3258" "Friday" "19" "March" "2021" "10:16:44" "-0400" "Sasha Levin" "sashal@kernel.org" nil "68" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       sashal@kerne Mar 19   68/3258  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9408 invoked by uid 550); 19 Mar 2021 14:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9390 invoked from network); 19 Mar 2021 14:17:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1616163405;
	bh=cv/uPtwobj8XL2qfKALzXoKD5VR8/MdgkHgifTL1n2M=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=LSkpXbyXawdk4o78bZBPuH8twcHIaJ1qYcsa3JtUTg5VFVZyuHf6f2Iv4A3ve2jwT
	 W9ong5BktxA5Rkf4Mor3RG/JQKhKk0Y3rQWvk+UIQahtwHxa+7JBwtC8wNktuj0JcE
	 YAb7LX+ci+FdBAS0/LR+wGi+e1B0bOdo5nBabsYIzx578i/Cpb27DYIn1iHZRriuqB
	 tNaA8iMRlRm7umhSedLNQGamnQ8ZJavg3vS9u5JoKBBWup40/psqGZw1UYm/Ct+bu/
	 T0pJu+2ctNpejNmdEq3LshjB/wnVrQJNM31NV74UBnJ3yBWfjVzvSfVjoVJgEgD16B
	 vDhGgm2IUf7jw==
Date: Fri, 19 Mar 2021 10:16:44 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YFSyTOoNtyrQvrH3@sashalap>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210318192136.GA6178@openwall.com>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Thu, Mar 18, 2021 at 08:21:36PM +0100, Solar Designer wrote:
>On Thu, Mar 18, 2021 at 02:33:21PM -0400, Sasha Levin wrote:
>> Red Hat runs on a forked version of the kernel that has it's own set of
>> backports, features, and bugs. As you pointed out I think it would make
>> a lot of sense if they would instead start assigning CVEs for "Red Hat
>> Linux Kernel".
>
>Oh, no.  Just no.  Red Hat (nor others) shouldn't start to
>indiscriminately label their CVE assignments for Linux kernel issues
>(nor for issues in other software they modify and package) like that.
>
>I think what we really want is encourage Red Hat (and other distros) to
>put more effort into figuring out and documenting whether each issue is
>specific to them or (was) also present in mainline (any version or git

Agreed. And while we can't require that, it would be awesome if it were
done systematically instead of picking a random commit here and there
and assign it a CVE.

>commit, but not requiring a review of any branches other than what they
>possibly took code from).  I think they usually already have that

I suppose we can't *require* them, but it's a matter of curtesy, right?
They already have that information, and instead of making a bunch of
other people do the same job they could just share the information to
begin with.

>information internally.  It's just that it didn't propagate into this
>thread's original message now.  It should.

Exactly, they already must have this information, which is where some of
the frustration around these notifications comes from: it reads as
nothing more than a lip service.

>Then, for issues that (ever) exist(ed) in upstream kernels, or in any
>upstream Open Source software for that matter, they should be brought to
>oss-security.  It's very kind of a distro to help us all with that.  We
>should encourage that.

They should, but look at the original announcement mail in this thread:
it's so generic and lacks so much information that it can't possibly
inform anyone of an issue.

"There's a bug in the kernel and we assigned a CVE!"

>For issues that are distro-specific, it's a grey area.  First, like you
>correctly say, they should be labeled accordingly.  Then the question of
>their relevance to oss-security comes up.  Among the published content
>guidelines for oss-security we actually have one asking not to post in
>here distro-specific advisories aimed at end-users.  As I recall, when
>at some point years ago FreeBSD started sending their advisories in
>here, I asked them not to.  Indeed, we're also not seeing e.g. Red Hat's
>advisories in here, although they do produce those and send them to
>proper channels.  However, what about distro-specific vulnerability
>notifications not meant for end-users, but for downstream distros?
>Using my two examples, both FreeBSD and RHEL do have some downstream or
>otherwise related distros, who might need to know to merge the fixes.

Sure, that makes sense. I'm not disagreeing that distro specific issues
are relevant here, but pretend that you're a downstream of RHEL and read
the original announcement in this thread, how would you act? would you
know what to merge? on to which versions?

What's the value of these announcements then?

-- 
Thanks,
Sasha
