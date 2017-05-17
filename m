X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4086" "Wednesday" "17" "May" "2017" "13:05:30" "+0200" "Solar Designer" "solar@openwall.com" "<20170517110530.GA11230@openwall.com>" "84" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051711:05:30" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        solar@openwa May 17   84/4086  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30678 invoked by uid 550); 17 May 2017 11:06:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30518 invoked from network); 17 May 2017 11:05:56 -0000
Message-ID: <20170517110530.GA11230@openwall.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com> <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com> <20170516220345.GA10874@openwall.com> <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com> <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>
User-Agent: Mutt/1.4.2.3i
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	oss-security <oss-security@lists.openwall.com>,
	rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Wed, 17 May 2017 13:05:30 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: Marc Lehmann <schmorp@schmorp.de>

On Wed, May 17, 2017 at 03:23:14AM +0200, Marc Lehmann wrote:
> On Wed, May 17, 2017 at 12:15:55AM +0200, "Jason A. Donenfeld" <Jason@zx2c4.com> wrote:
> > On Wed, May 17, 2017 at 12:03 AM, Solar Designer <solar@openwall.com> wrote:
> > > On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> > >> A harmless example from rxvt - pushing back the new-line character:
> > >>
> > >> $ echo -ne "\eGQ;"
> > >> ;$ 0
> > >> bash: 0: command not found
> > >
> > > Does this also affect rxvt-unicode?
> > 
> > It does, actually. I've CCd rxvt-unicode upstream on this in order to
> > hear their assessment.
> 
> There can't be an assessment without knowledge of what to assess - there
> is little to no information in your mail. I can only guess that somebody
> for the hundredth time found out that terminals are more than dumb
> display devices and got excited that, somehow, this might be a security
> issue. Without knowing details, I can't say for sure, but most likely,
> this is a security issue the same way blindly feeding unknown commands to
> your shell is, i.e., it's a problem somewhere else - the protocol between
> terminals and programs is not a (strong) security barrier.
> 
> (your echo command is bash-specific, btw.)

You're right that we provided "little to no information" - sorry.  I'll
correct this now.

Jason's e-mail was in part prompted by my off-list message to him, where
I wrote about this issue (or non-issue depending on one's perspective):

---
I think it's pretty bad, because unlike many other terminals' automated
responses triggered by escapes, this one includes a linefeed.  So an
attack tarball/directory/whatever would include e.g. a program called
"1" and a text file with that escape sequence.  When someone cat's or
more's the file, the program would automatically be invoked _if_ they
have . in PATH.  While we normally shouldn't have . in PATH, I think
some people might.

The risk probability is low, but this is nevertheless a valid security
issue to patch.
---

(The pasted text appears to vary between "0" and "1".)

I haven't just "found out that terminals are more than dumb display
devices" and I haven't "got excited".  This is indeed well-known, and
has been discussed for decades.  I fully agree that the security barrier
should be inside each program - if a program processes untrusted input,
it must not blindly send that to the terminal.  Unfortunately, this
often fails in practice - many programs don't bother, many programs
don't do it right (e.g., it's common to let the 8-bit escapes through,
especially with some now mostly obsolete 8-bit locales), there are
subtle asynchronous multi-producer issues with UTF-8, and there are
clueless or/and risk-taking users/sysadmins who "cat", etc.  untrusted
files to terminals.  Sometimes the overhead of avoiding such risky
actions is prohibitive - e.g., sometimes one does need to issue a SQL
query for untrusted data from a SQL shell they already have started on
their terminal.

Thus, a sentiment expressed in past discussions in here is that terminal
emulators shouldn't have the riskiest escape sequences supported by
default.  It is fully expected that malicious escape sequences can make
a terminal unusable, requiring reset.  It is unexpected by many users
(as you correctly say, hundreds end up rediscovering this and bringing
it up as an issue) that with some terminal emulators malicious escape
sequences, through misfeatures (rather than implementation bugs, which
often also exist), can also paste text into their shell prompt (as
above), modify X clipboard contents (in xterm, luckily no longer in
typical distros' default config), etc.  Those who are aware and expect
this may prefer to have this risky and unneeded functionality disabled
by default.

It's about defense-in-depth and about not having a loaded gun hanging on
the wall unnecessarily.

In the message that started this current thread, I included links to
some recent past threads covering some of the aspects mentioned above:

http://www.openwall.com/lists/oss-security/2017/05/01/13

Alexander
