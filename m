Received: (qmail 1570 invoked by uid 550); 20 May 2026 09:52:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1543 invoked from network); 20 May 2026 09:52:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=iG2XuOq6zmHbi3ule8YGYCLcra2oCdg35KPjki59bPg=; b=vWf8Ctq0UvHlW5YZkyK1ulqU2i
	auwnw0czt8Y+42kQ/G8uYzZ1XjtSkf/Cyj3rm8i1g24uZfvlWVBDYZ1CiYSfFVSBlM6HZbheyk0gA
	dQVVSwzmERcqzH9zv5r80du0EachmlydEyZbiph8UQNHaxJMgjNAX+l0qteJClCqML8H3LW2N+aFz
	GcW88CCWchFGao3LHMConLW/9YmnJ4zxjL7uez/1tBgD7sKfSWPBZPsOxz6DWfISqX2xH2HdHohQO
	mCRwj1BIDuJPjLwn6EbchqTDV/TGpQkVBdeioVKbPD6d/vFBif9WDnQHdg18Lym63LJK59KTWuR4Y
	CCJgucEQ==;
Date: Wed, 20 May 2026 10:51:52 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: arraybolt3@riseup.net
Message-ID: <ag2EONSuspJdhYfd@definition.pseudorandom.co.uk>
References: <20260518220116.170677b2@riseup.net>
 <agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
 <20260519193042.3feb8374@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260519193042.3feb8374@gmail.com>
X-Debian-User: smcv
Subject: Re: [oss-security] On the issue of MIME handlers that execute
 arbitrary code (e.g. Wine)

On Tue, 19 May 2026 at 19:30:42 -0400, Aaron Rainbolt wrote:
>I wonder if it would be worth proposing a change to whatever system
>component handles opening files (probably something in Glib, or
>xdg-utils, haven't researched that deeply yet)

It's a general-purpose specification that is designed to be implemented 
by an unlimited number of packages, some of them desktop-specific:

* GLib, and via that, gio(1), xdg-desktop-portal and flatpak-xdg-utils'
   xdg-open(1) reimplementation
* some Qt/KDE library (I'm less familiar with the KDE world, so I don't
   know whether this is done in the Qt layer or somewhere in kdelibs)
* xdg-utils' xdg-open(1) (the reference implementation of that name)
* Debian's mailcap package, which translates fd.o MIME handlers into
   traditional mailcap(5) handlers
* web browsers like Firefox and Chromium might reimplement it? not sure
* ...

so any change to how the spec is to be implemented would have to be 
fd.o consensus and spread across all of those.

(xdg-utils' implementation of xdg-open(1) sometimes calls helper 
utilities from GNOME, KDE, XFCE, etc., like GLib's gio(1), or sometimes 
implements a sufficiently large subset of the .desktop spec itself in 
shell script, depending how and where it's invoked - this is not great 
from a maintainability or predictability point of view, but it does mean 
that it can continue to take into account desktop-environment-specific 
behaviours that pre-date the de facto standardization of MIME type 
handlers and the URI scheme pseudo-MIME-types like 
x-scheme-handler/http.)

>so that handlers cannot
>be registered for certain "dangerous" file types (i.e. ELF/PE/Mach-O
>executables, scripts in various languages, etc.)? The only real
>downside I can see to that is the inability to text editors to
>register themselves as handlers for script MIME types, and in those
>instances, the editor can register itself as the handler for another
>applicable, more generic MIME type (i.e. text/plain), then change its
>behavior based on the more detailed MIME type of the file after it
>opens it.

I think the ability to double-click on a script (shell, Python, etc.) 
and have it open in a programmers' text editor would probably be 
considered to be a requirement by desktop environments, although 
associating a text editor with text/plain partially covers that.

If it's no longer possible to associate an action with a script MIME 
type specifically, then that would make it impossible to configure 
text/plain to open in a quick/simple Notepad-like editor like 
gnome-text-editor or KWrite, while having text/x-python3 open in a more 
complicated IDE like GNOME Builder or Emacs, or a Python-specific 
environment like IDLE. That seems like an unwelcome loss of 
functionality, and perhaps too much - I don't think it's common to 
associate these script file-types with something that will immediately 
run them?

I'm not sure whether it still does, but GNOME's file-roller (primarily a 
handler for zip, tar etc. archives) used to register a MIME handler for 
PE DLLs and executables that would show the PE object's various sections 
(data, executable code, resources) as pseudo-files that can be read and 
extracted. I'm not sure whether that was ever practically useful or just 
demo/"because we can" functionality, but in the past it has accidentally 
mitigated the dangerous handlers discussed in this thread by being a 
higher-priority handler for PE executables for GNOME users than the 
dangerous one! Not allowing handlers for PE executables would have the 
collateral damage of breaking its ability to have this file-type 
association, which is relatively safe because it's treating the 
executable as data in a specific format rather than executing anything.

     smcv
