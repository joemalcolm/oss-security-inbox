X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3543" "Thursday" "6" "July" "2017" "22:12:58" "+0100" "Simon McVittie" "smcv@debian.org" "<20170706211258.gkd5rhnsononht6f@perpetual.pseudorandom.co.uk>" "67" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070621:12:58" "[oss-security] systemd fails to parse user that should run service" (number mark "        smcv@debian. Jul  6   67/3543  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170706192753.GA9945@takahe.colorado.edu>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "<20170705211451.GA16241@hurricane.linuxnetz.de>" "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>" "<20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>" "<20170706132816.GA3056@takahe.colorado.edu>" "<20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>" "<20170706192753.GA9945@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30486 invoked by uid 550); 6 Jul 2017 21:13:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30454 invoked from network); 6 Jul 2017 21:13:36 -0000
Message-ID: <20170706211258.gkd5rhnsononht6f@perpetual.pseudorandom.co.uk>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
 <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
 <20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>
 <20170706132816.GA3056@takahe.colorado.edu>
 <20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>
 <20170706192753.GA9945@takahe.colorado.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170706192753.GA9945@takahe.colorado.edu>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 6 Jul 2017 22:12:58 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Thu, 06 Jul 2017 at 13:27:53 -0600, Leonid Isaev wrote:
> On Thu, Jul 06, 2017 at 03:02:07PM +0100, Simon McVittie wrote:
> > > The problem is that my new and shiny
> > > script won't work as intended on old systemD versions which silently ignore
> > > User= directive.
> > 
> > I am not aware of any such version existing. The 2010 commit
> > "first attempt at proper service/socket logic", which was 6 months before
> > the release of systemd version 1 and was the first commit to introduce
> > ExecStart, also introduced User.
> 
> OK, but then there is no excuse to silently ignore any kind of error in
> User=. If systemd can not start unit as a specified user, it must fail it, just
> like ExecStart: if the command specified there is not found

I agree, and this was already done for usernames that were parsed as
syntactically valid (User=whatever on a system where there is no 'whatever'
user). The issue here was a combination of two things:

* Usernames that were considered to be syntactically invalid went
  through the error-handling code path for unknown configuration items
  (ignored on the assumption that they are some future extension point,
  rather than causing failure). https://github.com/systemd/systemd/pull/6300
  has now been proposed to change this, for User and a few other key
  directives.  This is basically Felipe's suggestion from the systemd-devel
  thread.

* What can be in a valid username is Unix folklore rather than a standard
  (POSIX defines a subset of usernames that are portable, but does not
  forbid systems from additionally accepting non-portable usernames, and
  in practice they do), and systemd's idea of what is a syntactically
  valid username accepts considerably fewer usernames than common
  useradd implementations (indeed it doesn't accept all POSIX portable
  user names either).

User="syntax error!" or User=0day (which are treated as equivalently
invalid, and go through the same code paths) were never "silently
ignored": they were ignored rather noisily, with multiple log messages
every time the unit in question was started.

> I thought the current behavior of ignoring some syntax "mistakes" was put in
> place by design because units have to be backwards copatible with older systemd
> versions.

Yes, it is: if some future systemd version adds a new directive,
perhaps AnonymizeMachineID or StackSizeMax or something,
it is a deliberate design choice that current systemd versions will
log a warning and ignore it. This lets upstreams be more aggressive
about enabling new features (many of which are non-critical but
good-to-have security hardening for services), without necessarily
having to wait for the systemd version that introduced those features to
become available in the oldest, most stable or most "enterprise"
distribution that they target.

This is a trade-off, and both possibilities (reject unknown directives,
or warn and ignore) are plausible design choices: which one is better is
a matter of opinion. The systemd developers chose to treat the advantages
of the warn-and-ignore approach as larger than its disadvantages.

In general the same is true for the *values* of directives: systemd needs
to choose something to do about known directives with values that it
cannot understand, and in general they are ignored with a warning on
the assumption that the new value is something that might have been
understood by a newer version of systemd. That isn't appropriate for
all directives, hence <https://github.com/systemd/systemd/pull/6300>.

    S
