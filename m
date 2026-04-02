Received: (qmail 32757 invoked by uid 550); 2 Apr 2026 18:15:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30301 invoked from network); 2 Apr 2026 18:15:48 -0000
Date: Thu, 2 Apr 2026 20:15:45 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Christian Brabandt <cb@256bit.org>
Message-ID: <20260402181545.GA14931@openwall.com>
References: <aco9Ai89pj+OQ0YS@256bit.org> <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com> <acvvA2uP7s/aGD9q@256bit.org> <712E645E-3EDB-4D8B-916F-C3B4320E4DB0@dwheeler.com> <aczNMPPQfRFBWOBy@256bit.org> <A958E069-337B-452C-972B-2833B01835C1@dwheeler.com> <ac6tgGE2oH6dKiAQ@256bit.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac6tgGE2oH6dKiAQ@256bit.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape affects Vim < 9.2.0272

On Thu, Apr 02, 2026 at 07:55:12PM +0200, Christian Brabandt wrote:
> On Do, 02 Apr 2026, David A. Wheeler wrote:
> 
> > I think it's best to disable this functionality for now.
> > Perhaps it should be disabled by default until it has a better
> > self-protection mechanism. The default should only allow specific fields
> > with specific permitted value ranges, so that attackers can't mess with people.
> > A 'textwidth' of 5, set without user approval, sounds like a bad idea.
> > Tabs are pretty much only a few valid values; I doubt "250" is a reasonable one.
> > 
> > If someone really wants the existing modeline behavior, an "insecure modeline" option
> > would make sense, but I bet most users would not enable it.
> 
> It seems the community prefers a whitelist approach however. So this is 
> probably what it will be soon.

That's bad news.  We really need to disable modelines by default.  I see
the discussion in https://github.com/vim/vim/pull/19875 but I think
that's advanced users, it's not representative of the Vim userbase.
Someone who makes very basic use of Vim does not even know modelines
exist and would not comment in that PR, but those basic users are the
majority.  The advanced users who know and need modelines can re-enable
them - that's fine.  I think we need to explain this to them and
override their preference in favor of protecting 99% of the userbase.

Also, even someone re-enabling modelines would commonly only do so under
their user account on their immediate systems.  Not under the root
account, not on all servers they may manage, not when occasionally
accessing pseudo-user accounts (or someone else's, as a sysadmin).  So
it does not completely undo the security hardening that the change of
default will achieve.

The fact that Debian (and thus Ubuntu?) has modelines disabled by
default for years means this is already accepted by many Vim users.
Making this change upstream will make different systems consistent.

Alexander
