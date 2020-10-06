X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4556" "Tuesday" "6" "October" "2020" "15:50:09" "+0100" "Simon McVittie" "smcv@debian.org" "<20201006145009.GA45857@espresso.pseudorandom.co.uk>" "84" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100614:50:09" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       smcv@debian. Oct  6   84/4556  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<e5512902-f52d-61e0-bd4e-8d73ce5ea9ad@archlinux.org>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<e5512902-f52d-61e0-bd4e-8d73ce5ea9ad@archlinux.org>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23721 invoked by uid 550); 6 Oct 2020 14:50:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23703 invoked from network); 6 Oct 2020 14:50:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=1tuZaFygRnnbQ6o8ZH3X2XIu5RV0nE4dPwVQmR2rR8M=; b=CKKrU1XhjMlamAkJfhGUqF0CDh
	ADfSSo3iCLMoxR3gQ2Ox2ai6pEHXKpfSeNC/IBLZ7f5aiFjOSZeBpKegT3I6lNXbu0Jr200Dsbbbh
	K4iroBv+OUCeyt/gtfq5uOVktKsz/2vRo7OIS3J9huuHmg0WUT5hHVgldWrh0wOFWy9BJBmGPZp7/
	rO5b0v5U5Ho09PTAnoePOK1TDDMA0R57H+fnhUK+KgNIoji3DpxiSQJjFxUhZ0xMYXahlya5gY90B
	JNmOZQM6VWNncndh55HAhvYFnr1HPY8RExMBE+18FlGe0Wf5VNZD2AUNWbhUTLCiFPPiBuPQ9WXYK
	QehWUhAQ==;
Date: Tue, 6 Oct 2020 15:50:09 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20201006145009.GA45857@espresso.pseudorandom.co.uk>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <e5512902-f52d-61e0-bd4e-8d73ce5ea9ad@archlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5512902-f52d-61e0-bd4e-8d73ce5ea9ad@archlinux.org>
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Mon, 05 Oct 2020 at 19:30:22 -0400, Eli Schwartz wrote:
> flatpak tries to provide a GUI appstore for popular applications in
> sandboxes, with permission models for allowing resources into the
> sandbox, e.g XDG Desktop Portal to broker access to files from the host
> system through a trusted agent.
> 
> Though my understanding is in order to be (conveniently?) usable,
> programs end up in practice needing to be granted access to the entire
> host filesystem and therefore aren't really isolated after all.

It depends on the program. If it does its file access via the typical
GTK or KDE File->Open and File->Save As... dialogs, then access to those
files can be mediated by xdg-desktop-portal (the dialog exists outside
the sandbox, and magics only the selected files into existence inside),
and the boundary is quite strong.

If the program does its file access by "knowing" that it has full access
to everything, then, yes, you're going to have to give it access to
everything it might conceivably need, statically, and the boundary is
extremely leaky. The app framework cannot fix this, but maybe the app can.

The developers of xdg-desktop-portal and related components have been
doing what they can to make this transparent - for example, GTK 3 and
4 apps automatically use the portals for various things if they detect
that they're in a Flatpak sandbox, so that app authors don't have to
change how their app works. However, this is not always possible, and
some years- or decades-old assumptions about access to the host system
are harder to unpick.

The other big problem with the Flatpak sandboxing model is X11,
which just isn't a good privilege boundary: practical X11 apps assume
that they can do things that ought to be only available to apps in the
TCB. In GNOME this is mitigated by using Wayland by default, and Flatpak
apps can be flagged to lose their X11 access when run under Wayland. I
think KDE Plasma is heading in a similar direction. However, I suspect
the audience of this mailing list contains a lot of the sort of people
who either don't use GNOME or Plasma, or have switched GNOME or Plasma
into X11 mode because Wayland breaks some feature that only ever worked
because every X11 app trusts every other X11 app (such as screen-sharing
by grabbing frames from the X server, or clever input-mapping tricks by
injecting fake keyboard and mouse events into the X server, or
screensavers that work in terms of X11 grabs).

I don't know as many technical details of Snap and Firejail, but I'm
fairly confident that they are running into the same problems that
Flatpak does.

I would encourage security experts who are interested in this field to
"do their own homework" and research what has already been done, and what
is already known to be a missing piece of the puzzle.

A conversation on oss-security is not going to change any of this,
however well-intentioned: some security experts making statements about
how (GNU/)Linux desktops "need to change" does not get code written, does
not shift apps away from un-sandboxable patterns and towards sandboxable
patterns, does not fill in missing functionality in Wayland that will let
people use as a more-sandbox-friendly alternative to X11, and so on. If
you want to see the situation improve, please help to improve it. The
people doing the work, at least in GNOME (and I'm sure elsewhere too),
are mostly the same few overworked developers who are also maintaining
all the other core parts of the desktop.

> Apparently both giving power to the user *and* preventing software from
> running rogue, is indeed hard.

Yes, and harder still is retrofitting an app-store-like permissions
model onto arbitrary programs that were originally designed to be run
with full user privileges, without breaking them in the process.

Again, Flatpak, Snap and Firejail are all attempts at this. They all
have to make tradeoffs to be practically useful enough to be adopted,
because a framework with perfect security and no working applications
(or no users) is not practically useful.

An additional threat here is that some of the same container and namespace
tricks that we rely on to put up security boundaries between applications
expose attack surface that can be exploited to break the security boundary
between users (for example
https://security-tracker.debian.org/tracker/source-package/bubblewrap,
https://security-tracker.debian.org/tracker/source-package/firejail, and
the attack surface referred to in
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=898446).

    smcv
