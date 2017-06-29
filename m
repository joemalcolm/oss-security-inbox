X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2135" "Thursday" "29" "June" "2017" "16:23:46" "+0200" "Solar Designer" "solar@openwall.com" "<20170629142346.GA30874@openwall.com>" "52" "Re: [oss-security] TIOCSTI not going away" "^Date:" nil nil "6" "2017062914:23:46" "[oss-security] TIOCSTI not going away" (number mark "        solar@openwa Jun 29   52/2135  " thread-indent "\"Re: [oss-security] TIOCSTI not going away\"\n") "<20170603165813.GA20708@openwall.com>" ("<20170603165813.GA20708@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8076 invoked by uid 550); 29 Jun 2017 14:24:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7853 invoked from network); 29 Jun 2017 14:23:56 -0000
Message-ID: <20170629142346.GA30874@openwall.com>
References: <20170603165813.GA20708@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170603165813.GA20708@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 29 Jun 2017 16:23:46 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TIOCSTI not going away
To: oss-security@lists.openwall.com

On Sat, Jun 03, 2017 at 06:58:13PM +0200, Solar Designer wrote:
> On LKML, CC'ed to the kernel-hardening mailing list, Matt Brown has been
> pushing for the upstream Linux kernel to introduce an option (likely to
> be disabled by default) that would block the TIOCSTI ioctl.  Alan Cox
> repeatedly NAK'ed this:
> 
> http://www.openwall.com/lists/kernel-hardening/2017/05/
> 
> Sorry there's no one specific message/thread to link to - there were
> multiple patch revisions, and multiple NAKs with different wording.
> 
> Alan's reasoning is that userspace apps like this have to be allocating
> a new pty anyway, and the kernel change wouldn't help much since TIOCSTI
> isn't the only way to cause trouble (although per my reading of the
> examples given, other ways/troubles are either not exactly as bad or not
> exactly as generic).

While TIOCSTI is apparently not going away on Linux, it is on OpenBSD,
and here's some analysis of the apparently almost non-existent impact
this will have on Emacs (which was one of the primary examples cited for
keeping TIOCSTI on Linux):

https://marc.info/?l=openbsd-tech&m=149868123704451

Theo de Raadt wrote:

"There are indications that a few ports use TIOCSTI.  The list is
pretty small, and I have not reviewed whether the use of TIOCSTI
actually occurs during runtime on OpenBSD:

    x11vnc tcsh ucblogo brltty epic4 trn libsanitizer
    jvim2.0r+onew2.2.10-wnn4 emacs qemu ngspice

I hope those programs get fixed quickly"

Jeremie Courreges-Anglas wrote:

"TIOCSTI is only used once in editors/emacs.  The return value of
ioctl(2) isn't checked.  This is in the "suspend-emacs" function, ie
what's called when pressing ^Z, can take an optional string to be sent
to the parent process.

I could spot only one place in emacs-25.2 where this optional string is
used, lisp/obsolete/ledit.el, an obsolete mode for Franz Lisp"

Maybe Christos could comment on tcsh?

Whatever happens (or doesn't happen) for upstream Linux, there will be
system(s) dropping TIOCSTI or at least introducing a way to disable it,
so reducing userspace programs' dependencies on TIOCSTI makes sense.

Alexander
