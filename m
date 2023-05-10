Received: (qmail 22026 invoked by uid 550); 10 May 2023 19:39:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11973 invoked from network); 10 May 2023 19:21:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1683746498;
	bh=zpTtYbNJ17izx3X2DxDrkdqFQLlg86QpW6IO6Aydd1o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=EpPCQvjVJsYHnwe8n/yGl4DmjHEetyzgHD9KogKwoQuUcXiDDQe3lbWW/Ymgtwm85
	 PdVhCVzfwatcgxWje1YcJhT+foO8ABVsTAA/PtuolL0GrBEPb2kW7e35hkYdH8hbBe
	 t2mhOP1NIpjboic4nOJsPbnsLR4TxQKu/8e8mmIWiqgcIMyyemTaTECSRxLKMOQQAN
	 bwTx8dYG6BsMe/tSCWR+PACl/fg673TVB6tYCX9ldRiLIbZSeY7od+11348PBn1bRC
	 /PUn7HMB4kCGjzCLj9TgB2sFo4jKnf9aE2rNucUUiH6uOeJAAV+VgltTa87F2c811j
	 r+iY/JMzU6j5g==
Date: Wed, 10 May 2023 16:21:31 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Cc: Turritopsis Dohrnii Teo En Ming <tdtemccnp@gmail.com>,
	ceo@teo-en-ming-corp.com, Piotr Krysiuk <piotras@gmail.com>
Message-ID: <ZFvuu+PpS3BO2T/t@quatroqueijos.cascardo.eti.br>
References: <CAD3upLvuttgu3i6qZyB2LLY2CPcTvMdhQQLKdAYV2eoPD5Wjjg@mail.gmail.com>
 <20230510165545.GA25380@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230510165545.GA25380@openwall.com>
Subject: Re: [oss-security] New Linux kernel NetFilter flaw gives attackers
 root privileges

On Wed, May 10, 2023 at 06:55:46PM +0200, Solar Designer wrote:
> Hi,
> 
> On Wed, May 10, 2023 at 11:52:58PM +0800, Turritopsis Dohrnii Teo En Ming wrote:
> > I have just come across this article. Thought of sharing it.
> > 
> > Article: New Linux kernel NetFilter flaw gives attackers root privileges
> > Link: https://www.bleepingcomputer.com/news/security/new-linux-kernel-netfilter-flaw-gives-attackers-root-privileges/
> 
> We don't normally want in here links to news articles on something that
> was already brought up in here in more detail.  However, as a moderator,
> I reluctantly approved this posting so that we can use the resulting
> thread to discuss whether this issue got blown out of proportion and if
> so what we can do to avoid that going forward.  Here's the original
> posting this refers to:
> 
> https://www.openwall.com/lists/oss-security/2023/05/08/4
> 
> Another Linux kernel issue, in io_uring subsystem, was also disclosed in
> here on the same day, but I think didn't gain such tech media attention:
> 
> https://www.openwall.com/lists/oss-security/2023/05/08/3
> 
> Is the netfilter issue really worse than the io_uring issue?  I doubt
> it.  So _maybe_ it was something in the wording that tripped someone
> writing for one of those tech news websites, then others picked it up?
> 
> Piotr's posting about the netfilter issue mentions intent to disclose an
> exploit later (like it should have, thank you Piotr!)
> 
> Tobias' posting directly links to an exploit (which is also fine).
> 
> Is intent to disclose an exploit later more newsworthy than having done
> so right away?  I doubt it.
> 
> So maybe it's just random, and there's nothing to see here, after all.
> 
> Now as to the actual issue and its description, I think we should
> clarify what exactly is meant by "unprivileged local users."  Piotr, I
> guess you actually meant not literally unprivileged, but users with
> CAP_NET_ADMIN, which can be had via unprivileged user/net namespaces if
> enabled in the distro / on the system, or when already in a container
> with such capability granted to container root.  Correct?  I think going
> forward we should always make this clear right away.  Here's a former
> netfilter core team leader also bringing this up:
> 
> https://twitter.com/LaF0rge/status/1655867494152667140
> 
> LaForge - @LaF0rge@chaos.social @LaF0rge:
> > Really curious to see how CVS-223-32233 for #linux #netfilter nf_tables
> > https://seclists.org/oss-sec/2023/q2/133 can be exploted fom
> > "unprivileged local users".  AFAICT, nf_tables_api  goes through
> > nfnetlink, and nfnetlink_rcv() checks for CAP_NET_ADMIN way  before the
> > code in nf_tables_api.
> 
> and a reply:
> 
> Alex Plaskett @alexjplaskett:
> > Didn't look in depth at this one but you can trigger nf_tables_api
> > operations from a user / network namespace and distros such as Ubuntu
> > have unpriv user namespaces enabled.

If users don't need user namespaces, they can disable it on Ubuntu kernels as a
mitigation by doing:

sysctl -w kernel.unprivileged_userns_clone=0

Or persisting the option by adding a .conf file at /etc/sysctl.d/ with the
following line:

kernel.unprivileged_userns_clone=0

Cascardo.

> 
> As expected.  Now, from a typical distro user's standpoint,
> "unprivileged local users" may be just right.  However, not all distros
> have unprivileged user namespaces enabled by default.
> 
> Alexander
