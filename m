Received: (qmail 22047 invoked by uid 550); 15 May 2026 05:46:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21887 invoked from network); 15 May 2026 05:20:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=1l4hnB9SHlQv8UW/9BioFegKjKvHZP5y80KF9yivKTk=; b=Rr4w2MExg2E9m9qt8pbQjsfjVd
	6fDWZT+Wb/rs26FlZfwVWCyvyW7+Ept1njrHrYtrCWJfLGpgRKOjpC85dOuh44/Hf8taiKqqY4REk
	5gMgrXe3ojXeKKxI8cKL70xmYVAeB9dWXKLfqwEDxpV0BeuNg/32FssJVpvQZof2JGHUtLk78QrOu
	BubSenygftk/YckJemUWHF7Hym+1OwnJkap6a0D2WQGiXJucgUDBsgNXU5qEWqFjC1dfKa10jsPCL
	nx8bmKNmBFdruKJ89TTpSrmzq8pJrRy0YfBdWrJI6zMrL1TOnyS2EsKs3O90GDQUV0JP1SzPdX63X
	/ZNV3YPQ==;
Date: Fri, 15 May 2026 07:20:28 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <agatHO2LLWgRX7f5@eldamar.lan>
References: <20260515022033.GA10889@localhost.localdomain>
 <87cxyxe76j.fsf@gentoo.org>
 <agarKP9wHQMGuV_D@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <agarKP9wHQMGuV_D@eldamar.lan>
X-Debian-User: carnil
Subject: Re: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function

hi,

On Fri, May 15, 2026 at 07:12:08AM +0200, Salvatore Bonaccorso wrote:
> Hi
> 
> On Fri, May 15, 2026 at 03:29:56AM +0100, Sam James wrote:
> > Qualys Security Advisory <qsa@qualys.com> writes:
> > 
> > > Hi all,
> > >
> > > Today a vulnerability that we reported to security@kernel was fixed:
> > >
> > >   https://github.com/torvalds/linux/commit/31e62c2ebbfdc3fe3dbdf5e02c92a9dc67087a3a
> > >
> > > [...]
> > >
> > > Today we also contacted the linux-distros@openwall, but since exploits
> > > are already public we were told to send this to oss-security@openwall
> > > instead, hence this post. We are not publishing our advisory yet, to
> > > give distributions and users a chance to patch.
> > 
> > Thank you. I'm sorry you've had your moment somewhat spoiled.
> > 
> > I include some notes for readers.
> > 
> > --
> > 
> > Please note that despite the commit title and contents, it is not
> > exclusive to ptrace, and ptrace restriction mechanisms will not help
> > here.
> > 
> > As for mitigations: I don't think there are any real ones.
> > 
> > Some ideas:
> > * Block pidfd_getfd. I don't think it's actually used that heavily and
> >   there's often fallbacks for older kernels when it is.
> > 
> > * You could remove the world-executable bit from ssh-keysign
> >   but this is *not* the only binary affected, and this is a very weak
> >   mitigation indeed __only for the PoC__.
> > 
> > The patch from Linus applies cleanly down to 6.6 or so. For 6.1 (IIRC),
> > there was a trivial conflict (attached for convenience).
> > 
> > For 5.10, a prerequisite commit is handy:
> > 5bc78502322a5e4eef3f1b2a2813751dc6434143, then apply the 6.1 version.
> 
> I'm not 100% certian, but setting restrictive kernel.yama.ptrace_scope
> might as well serve as temporary workaround. Can you confirm?

Nevermind, it is written above by Sam, it ptrace restricing techniques
so won't be enough.

Regards,
Salvatore
