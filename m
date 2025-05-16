Received: (qmail 20229 invoked by uid 550); 16 May 2025 15:02:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20198 invoked from network); 16 May 2025 15:02:03 -0000
Date: Fri, 16 May 2025 11:01:53 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aCdTYYH_N9dXOYf8@netmeister.org>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aCISrQTbLQjaxBZS@kasco.suse.de>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Matthias Gerstner <mgerstner@suse.de> wrote:
> we were surprised to find a local root exploit in
> the Screen 5.0.0 major version update affecting distributions that ship
> it as setuid-root (Arch Linux and NetBSD).

I think it's useful to clarify here that NetBSD does
_not_ ship with GNU screen(1) at all.  NetBSD's
third-party package manager pkgsrc[1] includes
screen(1), allowing users to install additional
software on top of the base OS.

That package as included in _pkgsrc_ was installed
setuid[2], but a NetBSD base installation does not
include that package.  (NetBSD happens to include
tmux(1) _in the base OS_, but not screen(1).)

This distinction between a base OS and add-on software
that is optionally available for users to choose tends
to cause confusion for some people, so I figured
it's worth noting.

-Jan

[1] https://www.pkgsrc.org/
[2] now no more since
    https://gnats.netbsd.org/cgi-bin/query-pr-single.pl?number=59417
