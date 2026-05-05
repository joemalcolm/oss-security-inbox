Received: (qmail 26371 invoked by uid 550); 5 May 2026 03:39:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25645 invoked from network); 5 May 2026 03:39:27 -0000
Date: Tue, 5 May 2026 05:39:24 +0200
From: Solar Designer <solar@openwall.com>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20260505033924.GA24669@openwall.com>
References: <4g81Yq4Bj4zJrP1@spike.porcupine.org> <87se878751.fsf@gentoo.org> <87jytj86zk.fsf@gentoo.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87jytj86zk.fsf@gentoo.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [pfx] Postfix stable release 3.11.2 and legacy releases 3.10.9, 3.9.10, 3.8.16

On Mon, May 04, 2026 at 05:38:55PM +0100, Sam James wrote:
> Sam James <sam@gentoo.org> writes:
> 
> > The most significant one here seems to be the first entry under "Fixed
> > in Postfix 3.8, 3.9, 3.10:".
> >
> > -------------------- Start of forwarded message --------------------
> > To: Postfix announce <postfix-announce@postfix.org>
> > Date: Sun, 3 May 2026 19:43:27 -0400 (EDT)
> > CC: Postfix users <postfix-users@postfix.org>
> > Subject: [pfx] Postfix stable release 3.11.2 and legacy releases 3.10.9, 3.9.10, 3.8.16
> > From: Wietse Venema via Postfix-users <postfix-users@postfix.org>
> >
> > [An on-line version of this announcement will be available at
> > https://www.postfix.org/announcements/postfix-3.11.2.html]
> >
> > [...]
> 
> I am interested in feedback on whether using my own judgement is
> acceptable for bringing these to oss-security, where I believe they may
> of interest (releases with fixes that appear security-related, as the
> volume is increasing with the current wave of new tooling (*)),
> or whether there are some guidelines I should apply.
> 
> Thanks in advance.
> 
> (*) I of course only plan to bring such things where I plan to treat
> them at least in part as a security bug downstream.

Yes, I think your judgement fits what many of us would like to see on
this list.  Thank you!

As to this specific issue, I guess Wietse called it a bug and not a
vulnerability deliberately.  I trust his judgement on this, but I don't
mind downstreams being cautious.  Per my reading, exposure is limited to
other trusted components and impact is not directly security relevant
(if only a child process crashes and will be respawned).

Alexander
