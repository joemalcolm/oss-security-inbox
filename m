Received: (qmail 7406 invoked by uid 550); 22 Dec 2022 22:33:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32052 invoked from network); 22 Dec 2022 22:25:11 -0000
Date: Thu, 22 Dec 2022 22:03:51 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20221222210351.oQ5Sn%steffen@sdaoden.eu>
In-Reply-To: <Y6SJDbKBk471KE4k@p183>
References: <Y6SJDbKBk471KE4k@p183>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-377-g1137594da7
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] [patch] proc.5: tell how to parse
 /proc/*/stat correctly

..now sending this..

Shawn Webb wrote in
 <20221222150448.5wyrhot7ikhp75j7@mutt-hbsd>:
 |On Thu, Dec 22, 2022 at 03:44:45PM +0100, Jakub Wilk wrote:
 ...
 |We knew way back then the dangers of VFS-based wizardry. Did we lose
 |that knowledge somehow?

I think often problems materialize due to insufficient knowledge
of special cases and/or the complete picture.  And you need to dig
around in kernel sources to find answers, and for Linux in
particular "one thing (sysfs/procfs entry) has that name and uses
these values ranges here, and those over there".  (From my
superficial view doing backlight / volume / fan control.)
Names are also not self-describing, and then i very much like
FreeBSD's sysctl(8) -d flag, as every sysctl has a documentation
string entry; one can even do "sysctl -a -d".  For example

  kern.evdev.rcpt_mask: Who is receiving events: bit0 - sysmouse, bit1 - kbdmux, bit2 - mouse hardware, bit3 - keyboard hardware

Even manual references (punctuation issue)

  vm.overcommit: Configure virtual memory overcommit behavior. See tuning(7) for details.

But of course for one BSD is a more holistic approach, and then
this does not prevent errors from happening.  But -- how often
have i wished i would get just a little information at a glance!

Some interfaces are very old, established and more or less stable,
and origin in a time where many problems where not yet
"completely" intellectually penetrated.  You need to move the
entire infrastructure to make this better.  .. Appears strange in
a so rapidly moving environment like Linux kernel, with >50 MB
merges for a minor revision..  All those young dudes which eagerly
carry the news to see their footsteps disappearing in the sand,
heh!!  And then lots of software is done as a hobby, famous xkcd
"dependency" thing[1].

  [1] https://xkcd.com/2347/

P.S.: shawn.webb@ possibly means introducing something like libXO
for (some / all?) procfs entries?  (And _i_ long dream of
a FILE.txt with the equivalent to sysctl(8)'s -d.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
