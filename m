Received: (qmail 5126 invoked by uid 550); 20 Oct 2023 13:28:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3347 invoked from network); 20 Oct 2023 13:27:44 -0000
Date: Fri, 20 Oct 2023 15:27:41 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20231020132741.GA4951@openwall.com>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed> <3a2a90f88bf54fd7687234a8f5a92c43.49e9d693@crystals.bloom>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3a2a90f88bf54fd7687234a8f5a92c43.49e9d693@crystals.bloom>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you anytime

On Tue, Oct 17, 2023 at 03:17:36AM +0300, turistu wrote:
> In firefox running on X11, any script from any page can freely write to the
> primary selection, and that can be easily exploited to run arbitrary code
> on the user's machine.

What about other web browsers running on X11, most notably Chrome and
Chromium?  If the issue is unique to Firefox or at least not universal
across browsers, that's an extra reason for Firefox to make a change.

On Fri, Oct 20, 2023 at 02:10:06AM +0300, Turistu wrote:
> OK this was probably too technical and terse for people not familiar
> with X11 programming and terminology, so thing goes like this:
> 
> 1. If you're a user who has first learned to use a GUI on e.g. Windows,
> and who is used to copy & paste with Ctrl-C Ctrl-V (or with left-click,
> choose Copy from the menu, and then again left-click, choose Paste),
> then congratulations! this DOES NOT AFFECT YOU.
> 
> (Unless you're using some clipboard tools which merges the primary and
> clipboard selection, but I guess you don't ;-))
> 
> 2. But if you're a *native* X11 user who is used to just select the text and
> then paste it with a middle-click or shift-Insert, then this means you're
> pretty much done, and you should immediately either stop using firefox or
> try the workaround and patch described in my report. This also includes
> Wayland users.

Or isolate Firefox to its own X server (or at least a separate one from
where you run terminal emulators managing important stuff), like it
happens when you run it in its own VM (or perhaps many instances of it
in many VMs) on Qubes OS.  Indeed this also removes the convenience of
being able to paste stuff from Firefox with middle-click to outside of
its VM - you have to be explicit by using Qubes' Ctrl-Shift-C and
Ctrl-Shift-V - but that's currently the price for having control.  The
remaining security issue is that some JavaScript running in Firefox can
still race you when you do explicitly copy/paste stuff from Firefox.

Alexander
