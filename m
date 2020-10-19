X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3192" "Monday" "19" "October" "2020" "21:21:39" "+0100" "Simon McVittie" "smcv@debian.org" "<20201019202139.GA30622@espresso.pseudorandom.co.uk>" "63" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020101920:21:39" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       smcv@debian. Oct 19   63/3192  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201019112249.GA14339@openwall.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>" "<51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>" "<20201019112249.GA14339@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13627 invoked by uid 550); 19 Oct 2020 20:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13609 invoked from network); 19 Oct 2020 20:21:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=Xj9CQ4+ILRfZ6EXdYLojQKWWPWK8+H6rK0Q8ILCUPOA=; b=cNqmvkYTDzcZ3nItHQ6eHgLmWM
	MMEQAj5xY+5sGH0BpY7JoaLmLsU71b9yEwWKVcoL8EPGFCGCKeok9WhHNuA2/BUAS0iWXS2ZI52cI
	z6U6lUmAP3e7lD/PW6Ln0qFiwndHUATN2iTjX4q4VXYx3rYwAtm6wsVHtlob8mLqLgwKlBWnJhQZi
	TCDbxQp1oMDpVBsoE/TabN6BRH1BIsMEItj3F2nhzEgMVPa2LnPrFs3VEbWHvRhPw4zhB7F45dhR1
	XMnBc1ZJ1yzyKePy5CpQCOhKHnFAsT1A4xSxFdl8IAK+w1WwcFTUkzbtJFSQvLXX5Bu0TbjZkhomD
	mJnVuVlQ==;
Date: Mon, 19 Oct 2020 21:21:39 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20201019202139.GA30622@espresso.pseudorandom.co.uk>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005204820.GA8410@openwall.com>
 <51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>
 <20201019112249.GA14339@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019112249.GA14339@openwall.com>
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Mon, 19 Oct 2020 at 13:22:49 +0200, Solar Designer wrote:
> So let's accept that the user account running the desktop environment is
> root-equivalent security-wise (is only different from root for safety,
> not security) as long as it's ever used to reach root.

If you want to isolate apps from each other, then I think there are
really two sets of security boundaries:

* The system: Between user A, user B and root
  - root and root-equivalent users are in the TCB for this set of
    security contexts
  - some system services like polkit and dbus-daemon --system are typically
    also in the TCB

* Per-user: Between user A's app 1, user A's app 2, and user A's desktop
  - user A's desktop is in the TCB for this set of security contexts
  - user A's desktop includes their window manager/compositor,
    dbus-daemon --session, PulseAudio or PipeWire, etc.

and it's possible for a program to be in the TCB for neither of those,
for both of those, or for just the per-user boundary (meaning the desktop
environment of an unprivileged user).

The Apertis automotive OS is an example of a similar model in a non-desktop
context, heavily based on how these things work in "freedesktop" OSs.
https://www.apertis.org/designs/security/#security-boundaries-and-threat-model

> Yes, the most difficult part with securing a desktop system is to keep
> it conveniently usable.  I think it is possible to isolate the desktop
> environment from user programs without inconveniencing the user.  As to
> isolation between the user's programs, yes, that becomes visible to the
> user and would require some training on how to explicitly transfer data
> between the programs when needed.

Flatpak does this by having each Flatpak app in a (separate) sandbox.
Communication between apps goes through components in what you might call
the desktop TCB (trusted by this user, but not necessarily by the sysadmin),
such as the Wayland compositor, dbus-daemon --session, and
xdg-desktop-portal.

There are various tricks for making crossing the sandbox boundary automatic
while preserving user control. For example, if you do File->Open... in a
Flatpak app, the Open dialog that pops up is part of the trusted desktop
session, not part of the app itself (so it can see all your files). On
choosing a file to open, that file - but none of other files that you
declined to open - appears in the sandbox (on a FUSE filesystem).

I think Snap uses xdg-desktop-portal in a similar way. Qubes would not
be able to use it unmodified, because its isolation between contexts is
"heavier" (virtualization rather than containers), but it could certainly
use similar concepts.

> "Containerizing" things (at best) protects the outside from what's
> contained, not vice versa.

Right. In an OS that makes heavy use of Flatpak, like Endless, basically
all the user-facing apps are in Flatpak sandboxes (containers). Anything
that is not sandboxed (like desktop configuration), or is in a sandbox
that cannot provide a meaningful security boundary because that would
defeat the purpose of the program (like file managers, development tools
and sysadmin tools), is effectively part of the TCB of the desktop.

    smcv
