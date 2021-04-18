X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3511" "Sunday" "18" "April" "2021" "13:25:47" "+0100" "Simon McVittie" "smcv@debian.org" nil "69" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       smcv@debian. Apr 18   69/3511  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1309 invoked by uid 550); 18 Apr 2021 12:26:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1288 invoked from network); 18 Apr 2021 12:26:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:References;
	bh=3ADPdr0hsejDMfzNJxn0MzuJQNZlsZxZEkungAksJik=; b=eCY+i3H/uvHFsZ7vHlJ9zFx7F3
	ulIZhdw6y56K+xMdJv8Q3GPeEDGmRpThVzir5dPWHvfpsYZSM9O0OrWBq182LbaBHNC+kAYQ0sP1Q
	FFf7wwxyKbn6qTL1qrWo5g2zrWP8ShAEFw0Ugy9kG0zmgRlxpokEIZTT325n0rDC1viIjc8cj0IoX
	QImpFJAoO86tlO8xqWs1BTwZCI13mIg2/IGxrsqfHXLtJ+3v7wu/eeTqt7p6XRuV2dek/QDDDJ/jE
	/UZbHBpK5QrB399WLGn5QTQsrTeH3d7b0A2jPHVWL4+dMpQi1VM9pHGi4gRbnAKcCewBzFrtSgS9p
	Y/pxaIkQ==;
Date: Sun, 18 Apr 2021 13:25:47 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: security@debian.org
Message-ID: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210417144115.GA3514@thinkstation>
 <20210417143105.GB3276@thinkstation>
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

On Sat, 17 Apr 2021 at 07:31:05 -0700, Tavis Ormandy wrote:
> Hello, I noticed that at least debian (maybe others) ship xscreensaver
> hack with cap_net_raw enabled:
> 
> $ getcap /usr/libexec/xscreensaver/sonar
> /usr/libexec/xscreensaver/sonar cap_net_raw=p
...
> - In theory, mesa support running in a privileged context, their
>   documentation says they disable dangerous features in setuid/setgid
>   binaries:
> 
>     https://mesa-docs.readthedocs.io/en/latest/egl.html

I don't think it's actually very realistic to expect something the size of
Mesa to be safe to use in a process that elevates its capabilities above
those of its caller, because to achieve that, it would have to distrust
the entire execution environment (environment variables, inherited file
descriptors, rlimits...), and this level of distrust would have to be
maintained across all of Mesa, including all its drivers, plugins and
dependencies.

I've seen this before in multiple implementations of D-Bus (at least
dbus and GLib), where reading environment variables is part of the "API"
and so cannot be stopped without consequences. We tried to harden the
libraries by distrusting the environment when AT_SECURE, but had to revert
the hardening because it caused otherwise-working programs to regress as
a result of refusing to read environment variables. A frequent example
was gnome-keyring, which historically had CAP_SYS_RESOURCE, to be able
to mlock more memory when ordinary user processes couldn't.

In both dbus and GLib, maintainers took the position that distrusting
environment variables while AT_SECURE is hardening against insufficiently
careful callers, rather than a security guarantee. If a program is
setuid, setgid, setcap, or has a privilege-escalating AppArmor or SELinux
transition, then it's the maintainer/packager of that program that has
chosen to put the program in the position of being a security boundary,
so it seems reasonable to expect the program to take responsibility for
enforcing the security boundary by cleaning up its attacker-supplied
execution environment before calling into arbitrary libraries.

> The problem is that even if we make cleaning up the environment work,
> you're always going to need $DISPLAY, and any code exec bug connecting
> to a malicious X server will be a security bug.... and that sounds super
> hard to get right?

See also e.g. <https://www.gtk.org/setuid.html> for the logical conclusion
of this line of thought. I think that's a lot more realistic than
expecting large libraries to maintain a sufficient level of paranoia
throughout their codebase.

On Sat, 17 Apr 2021 at 07:41:15 -0700, Tavis Ormandy wrote:
> Oh, I also pitched using popen("/bin/ping" ..), but I think nobody is
> really convinced that will work, but I kinda like it :)

That's consistent with the principle of least-privilege, and the widely
cited Unix philosophy of having programs that do one thing well.

If you need to gain privileges, then I think that's a much, much better
approach - ideally a new ping-like program that prints a machine-readable
syntax rather than having to screen-scrape human-readable output, but
if that's not available then ping itself is the next best thing.

IPC to a more-privileged service would be safer still, because
setuid/setgid/setcap has a default-allow-like behaviour (everything
that is not explicitly special-cased is inherited), whereas IPC can be
seen as default-deny (everything that is not explicitly sent/received
is not shared).

    smcv
