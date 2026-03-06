Received: (qmail 14310 invoked by uid 550); 6 Mar 2026 15:46:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24235 invoked from network); 6 Mar 2026 15:39:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=d12VLi6WJLUuVnpScqRjhJ4EFAyDTYowdd6XOMs2t4s=; b=EH8KFF8VdKn5dMoTyEU8iO01R6
	Xw++jRr2RdIickki8LG/DvuW9kNC/Sair95EywQ+KerFaQ1IpOTprx+pXeEPYN0EiZOaWH6W0xls8
	27MbYo/7P/AHsTVA8c4stWGJ8EWcYx+h8DvmqS6ALHBVgoCPKgti+L2cJxi6TfTmqLyIHbbN3WAkZ
	NKUKrDYj8CwSwP2QVUVFgug1uLeMGlFZTILTfTq4vS/BlFW84qWSwfzJzGW3ICcusuF6VMDh7S8rc
	BdPyT6JPsHbmJGJdJVy6fK/1/+1fxBxejYNXJmmWceG35eYb65GQ7mgiuva61GdqnFc/HvZezbURQ
	+vuA/thA==;
Date: Fri, 6 Mar 2026 16:39:23 +0100
From: Guillem Jover <guillem@debian.org>
To: Solar Designer <solar@openwall.com>
Cc: Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de,
	Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <aar1K4kcGXpw_UGc@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@debian.org>,
	Solar Designer <solar@openwall.com>,
	Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de,
	Salvatore Bonaccorso <carnil@debian.org>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de>
 <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com>
 <aaGJlbbLS7cp0H-i@thunder.hadrons.org>
 <20260306151649.GB16746@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260306151649.GB16746@openwall.com>
Subject: Re: [oss-security] CVE-2026-28372: Telnetd Vulnerability Report

Hi!

On Fri, 2026-03-06 at 16:16:49 +0100, Solar Designer wrote:
> On Fri, Feb 27, 2026 at 01:09:57PM +0100, Guillem Jover wrote:
> > On Tue, 2026-02-24 at 11:57:34 +0200, Ron Ben Yizhak wrote:
> > > I’d like to ensure we follow the standard CVE process here. Standard
> > > practice dictates that a CVE is issued per individual fix. Generally, once
> > > a fix is merged and released, it is assigned its own CVE. Even if that fix
> > > is later bypassed, the original merge stands as a unique event in the
> > > codebase, meaning we should issue two separate CVEs rather than grouping
> > > them.
> > 
> > Salvatore Bonaccorso from the Debian Security Team got a CVE assigned
> > for this, see <https://www.cve.org/CVERecord?id=CVE-2026-28372>. I'll
> > update the Debian packaging on the next upload to point to that.
> 
> The CVE description says:
> 
> "telnetd in GNU inetutils through 2.7 allows privilege escalation that
> can be exploited by abusing systemd service credentials support added to
> the login(1) implementation of util-linux in release 2.40. This is
> related to client control over the CREDENTIALS_DIRECTORY environment
> variable, and requires an unprivileged local user to create a
> login.noauth file."
> 
> So is this CVE only for the attack vector reported by Ron Ben Yizhak,
> and not also for the other attack vector and more general issue reported
> by Justin Swartz?
> 
> If so, are you going to assign a second CVE for the more general issue?

I'm not part of the Debian Security Team (I just maintain the inetutils
package in Debian), but I think they assigned a CVE because there didn't
seem to be one coming from upstream. I guess the expectation would be
that if there's a new CVE to be assigned that would be handled by
upstream, but if it's needed and it's not forthcoming they might assign
another one? (Although the easier way forward would be to reuse the
existing one, and issue an update for the DSA.)

> I am not convinced "the standard CVE process" is exactly as Ron Ben
> Yizhak describes it above, but I don't mind doing things in this way.
> 
> It sometimes happens that a fix is released as being for a certain CVE,
> and then a second CVE has to be assigned for the "incomplete fix", where
> the incompleteness of the first fix is the new vulnerability.  But with
> no CVE assigned yet, we didn't have to do it this way.  We could have
> one CVE for the set of issues, and not treat "the original merge" as
> fixing any CVE at all.

To me both issues are caused by the same root cause, so in my mind a
single CVE makes sense. But…

> But again, I don't mind, and I understand that we also need to enable
> researchers to find and report such issues during work hours, which
> means making employers happy with credits and CVEs.  It isn't wrong to
> have separate CVEs, so we may.

…I don't really care, and I also don't mind if that's very important
to the researchers and people are happy to assign new CVEs, I'm happy
to add/amend references to any such CVE in the debian/changelog for the
package.

My plan right now is to just take the patches that have floated in the
bug-inetutils mailing list, fixing the root cause and upload that to
Debian as a fix to the existing CVE, as there's otherwise not been much
movement there (to merge or include as part of a release). If there's
a future CVE assigned I'd amend any references.

Thanks,
Guillem
