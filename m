Received: (qmail 15563 invoked by uid 550); 25 Feb 2026 21:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23852 invoked from network); 25 Feb 2026 20:39:32 -0000
From: "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@orthanc.ca>
To: oss-security@lists.openwall.com
cc: kf503bla@duck.com, "bug-inetutils@gnu.org" <bug-inetutils@gnu.org>,
    "ron.benyizhak@safebreach.com" <ron.benyizhak@safebreach.com>,
    "simon@josefsson.org" <simon@josefsson.org>,
    "auerswal@unix-ag.uni-kl.de" <auerswal@unix-ag.uni-kl.de>,
    "justin.swartz@risingedge.co.za" <justin.swartz@risingedge.co.za>
In-reply-to: <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com> <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com> <20260224203337.GA17345@openwall.com> <a0bad9ebbf4507c4@orthanc.ca> <CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com> <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
Comments: In-reply-to kf503bla@duck.com
   message dated "Wed, 25 Feb 2026 07:46:07 -0500."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <18263.1772051960.1@orthanc.ca>
Date: Wed, 25 Feb 2026 12:39:20 -0800
Message-ID: <a0bae10a8982d3e5@orthanc.ca>
Subject: Re: [oss-security] Telnetd Vulnerability Report

kf503bla@duck.com writes:
> telnet is extremely old and just because there is still widespread use of =
> telnet or the daemon, doesn't provide a valid reason to keep using it. =
> these trivial vulnerabilities keep popping up and if you still insist of =
> using telnet, you deserve getting pwned

You still seem to completely miss the point of what telnet is/does.
It provedes a network terminal.  Nothing more, nothing less.   What
the telnet servver does with the connection is strictly an
implementation detail of the server.

If your telnetd implementation runs login(1) on a UNIX server, in
this day and age, that's bad.  But the solution is not to burn
telnet, any more than the solution to DOS attacks is to burn IP.

Telnet is "old" because iit is simple and does its job well.  It
doesn't need all the new shiny knobs people throw at everything,
nor does it need to grow HTML5 support.  It works as is, and it
works well.  But if you still use it for remote logins, that's
operator error, not a protocol security violation.

Telnet is still used all over the place for things that are not
login.  In my house this includes:

	* LG TV remote control
	* BluRay player remote control
	* Stereo receiver remote control
	* two laser printers
	* three of my ham radio transceivers
	* two oscilloscopes
	* one RF signal generator
	* vector network analyzer
	* function generator
	* several home brew radio controllers
	* two Fortinet switches

Other than the switches, none of these even understand the concept
of a login.  Having "logins" on an oscilloscopes is nonsensical.
Yes, they are all unsecure.  That is by design.  All these devices
are protected by putting them on networks that can only be accessed
by people who should be mucking with those bits of hardware.  I.e.
they run in trusted environments.  Again, this is by design.

I don't understand why people cannot grasp this concept any more.
Using networks to isolate hardware was one of the first things I
learned.


I think a lot of the misunderstaning here is due to conflation
of terminology.  There are three names for different things
being used interchangeably, and thus the confusion.  So let's
define some terms going forward:

	TELNET		The protocol, as defined by RFC 854,
			and extended by various options.
	telnet		A terminal-oriented TELNET client
	telnetd		A TELNET server implementation

Almost all of the confusion here centers on telnetd.  Or more
specifically, what telnetd does after accepting a connection.
Everyone seems to assume that telnetd's only mandate is to
invoke login(1) after accepting a connection.  THIS IS WRONG.
While that was common practice in the 1980s and 90s, telnetd
can invoke anything the telnetd server's writers want it to.

So all the noise people are banging on about boils down
specifically to what the specific telnetd server does after
accepting a connection.  This is NOT a TELNET issue, so we
can set the protocol aside.

What needs to be fixed here are the telnetd implementations.  What
we need on UNIX is a new telnetd that does NOT invoke login(1), but
instead which allows for an arbitrary program to be specified that
will be run on a connection.  (And many telnetds support this
already.)  This is a simple change that can be quickly deployed
across all UNIX distributions, and which immediately solves the
"login" issue people are railing about.  (As a side note, telnetd
on some of my hosts invokes a menu program that lets prople run
adventure, zork, or connect as a guest to a pdp-11 emulator.  Invoked
as 'telnetd -u nobody /usr/local/libexec/netmenu'.  Process isolated
so that only the network listener runs as root.)

But now, let's examine TELNET itself.  I think another big piece
of this puzzle is that anyone born after 1980 doesn't even know
what a terminal is, or does.  They live in a universe of windowing
system systems.  And therefore their ignorance of terminals leads
them to dismiss TELNET out of hand.  TELNET's implementation of
mapping a terminal interface to a network connection is more than
just banging bits back and forth across a TCP pipe.  At the time
it was designed, networks were a lot slower, and the protocol
provided assistance to work around that.  Probably the biggest boost
came from the "linemode" option.  This allowed for local editing
of a line of text before it was forwarded when the return key was
pressed.  This avoided the RTT delays of having the remote echo the
characters.  A big win back in the day.  But that option is still
relevant today.  When I telnet into my various bits of test equipment,
they do not have tty line mode drivers that implement UNIX style
line editing.  So backspace, control-[ABE], etc, just get entered
as command text, leading to an error message.  But when the devices
telnetd imlements linemode, I get local command line editing for
free (unlike nc(1)).  This is a *big* win.

But maybe my favourite option is RFC 2117.  This allows me to
remotely control a serial interface UART down to the control line
level (e.g. toggle RTS and CTS).  I use this extensively on my home
made embedded device controllers.  (Try *that* with ssh :-))

As to TELNET insecurity, please note the various data encryption
options: RFC 2946-2950 and others).

To conclude my rant, I respectfully suggest all the people
calling  for the banishment of TELNET and telnet and telnetd
to the void:

	* stop talking for a while
	* read *all* the TELNET-related RFCs
	* spend some time learning the history of terminals,
	  UNIX terminal drivers, and remote terminal access

That will put you in a position to make *informed* arguments on
this topic.

--lyndon (bofh apprentice for 40+ years)
