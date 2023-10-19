Received: (qmail 30081 invoked by uid 550); 19 Oct 2023 16:51:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24492 invoked from network); 19 Oct 2023 16:45:16 -0000
Date: Thu, 19 Oct 2023 18:45:04 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20231019164504.3Q5r4%steffen@sdaoden.eu>
In-Reply-To: <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-530-gb93147aede
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] with firefox on X11, any page can
 pastejack you anytime

Sam Bull wrote in
 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>:
 |On Wed, 2023-10-18 at 13:25 -0500, Grant Taylor wrote:
 |> I think that this is more a problem with X11 security than it is a 
 |> problem specific to Mozilla / Firefox.
 |
 |Also a problem with shell security. If you paste something with line \
 |breaks into bash, it
 |executes them. If you paste the same into fish, it doesn't (it'll display \
 |the multi-line
 |input and expect you to hit the enter key to execute it as a command).

That is plain not true, but depends on the "bracketed paste" mode
of readline which in turn depends on the terminal (emulator) and
likely even upon the ncurses library.
See bash(1) (Readline Variables, enable-bracketed-paste, default
on).  Btw Mr. Dickey (ncurses, xterm, vile, etc) has an
informative page on this:

  https://invisible-island.net/xterm/xterm-paste64.html

 --End of <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>

(Not that it matters, but the MUA i maintain does not yet support
bracketed paste mode, its own yanking mechanism works only like
that though.  I will implement it for v14.10, it is in TODO.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
