Received: (qmail 3173 invoked by uid 550); 29 Mar 2023 19:25:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3152 invoked from network); 29 Mar 2023 19:25:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4lqxAw/+bwxLa4WsPr6TSmu7MgGu6dxgy//w05Z1tM4=; b=Fy4oNkes+3ZmJUZ2esRLFA96LE
	irUWexf1HYIs9S6sdq6t5WACaD53Ue+cv4QEXDWtPNV7cUk18y8NOt/46WUd8jWvQUP1/8ZQLc+bD
	MbN0YQu9nY1A/ROnu5gVOi6ongDFF3J+UKcVUFcj+VTf1F5N3kLsORVE9cEnbIsPzUE0wTIHoPuqy
	RjMsf8JFjJuWqjNvejl5T951y8+jtqMq5hlLMYXmkgzpNWD3/y3SnQHDiml9EbV13ADdg7Q7pMpe1
	ogpUEKRsdb7+0e4P7xRKjBsQkRIhswDMO4gSDchMSPMDz1DKKplSJEmIkdW5zaRdekyzbuX2NYw1n
	cD1r9BWw==;
Date: Wed, 29 Mar 2023 20:24:57 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZCSQiSn/4nRls/e+@tautology.pseudorandom.co.uk>
References: <20230329133450.GK21675@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230329133450.GK21675@suse.com>
X-Debian-User: smcv
Subject: Re: [oss-security] polkitd service user privilege separation

On Wed, 29 Mar 2023 at 15:34:50 +0200, Johannes Segitz wrote:
> Since the user owns the directory it's easy to escalate from user polkitd
> to root.

On one hand, yes. This makes the privilege separation not actually very
practically useful.

On the other hand, the entire point of polkit is to answer requests from
privileged system services, of the form:

    [smcv] wants to [turn off wifi], should I allow this?

(where the parts inside square brackets are examples/placeholders), and
many of the things you can do with those requests are effectively already
root-equivalent. In particular, if you have the pkexec tool installed, the
whole point of that tool is that it's setuid root and makes requests like:

    [smcv] wants to [run as root: mkdir /pwned], should I allow this?

and it is already trusting the polkitd process, running as the polkitd
user, to return "yes" or "no" according to the system's security policy.

> This demonstration caused some confusion in the original report to
> upstream. The POC is here to demonstrate the issue, not how real world
> exploitation would work. A real world exploit would rely on another
> vulnerability to be able to act as polkitd and then use the issue outlined
> here to escalate privileges.

Let's suppose you're able to act as the polkitd user as a result of a
vulnerability. Wouldn't it be easier to get root (or more generally,
permission to do a privileged thing) by tracing, replacing or otherwise
subverting the polkitd process?

In particular, if the vulnerability you're exploiting is arbitrary code
execution in the polkitd process (which is normally the only thing
running as uid polkitd), then you already have the ability to choose
how polkitd answers those requests; and if you have that, then as an
attacker, you've already won, because you can send a request that will
make you root-equivalent (for example from pkexec) and then coerce the
polkitd process into answering "yes, that's fine".

polkitd can only be either trusted or untrusted, we can't have it both
ways. I think the main thing that's wrong here is the documentation that
claims that the privilege separation is meaningful.

    smcv
