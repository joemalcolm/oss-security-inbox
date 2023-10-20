Received: (qmail 32525 invoked by uid 550); 20 Oct 2023 21:59:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19754 invoked from network); 20 Oct 2023 20:30:37 -0000
Date: Fri, 20 Oct 2023 22:30:23 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20231020203023.7p2bZ%steffen@sdaoden.eu>
In-Reply-To: <jvb6rc36mumsok24coqvjzthbksnbja7hlewhuxljqx3itwahu@deg2z7j4ztug>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
 <20231019165354.kkjoxdbedeodyfik@yuggoth.org>
 <7039466aa03ec8a90e1ce3a2ae983421.a13627b7@limousine.hussar>
 <CAP9KPhDg3kpmsAyL74B5LuMmTq55pYoA+5LpJR0WkH0HO3Xw8g@mail.gmail.com>
 <CAP9KPhBoy-ES2LxZi1Ax7BaAHwF5B2--ZqWtYUVEBbQ4P66XiQ@mail.gmail.com>
 <jvb6rc36mumsok24coqvjzthbksnbja7hlewhuxljqx3itwahu@deg2z7j4ztug>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-537-gf0b6803016
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Re: with firefox on X11, any page can
 pastejack you anytime

nightmare.yeah27@aceecat.org wrote in
 <jvb6rc36mumsok24coqvjzthbksnbja7hlewhuxljqx3itwahu@deg2z7j4ztug>:
 |What about people like me who don't use the graphical emulator's
 |paste directly at all but interact via a tmux layer in between?

tmux:

   Dsbp, Enbp
           Disable and enable bracketed paste.  These are set automatically
           if the XT capability is present.

I was curious what happens if i embed the user-proram bracketed-paste end
marker (\x1B[201~) in the X selection, as the terminal i use does
not protect itself from doing anything on the selection data
except changing any \n to \r.  Actually 

  printf 'a\x03\x1b[201~echo du' > .T1
  printf 'a\x1b[201~\x03echo du' > .T2

and then xclip .T[12] and then .. whatever.  bash cannot be
"fooled", but the "a" is then invisible here

  printf 'a\x1b[201~\x03echo du' > .T2
  xclip .T2
  echo du~
^pasted
  -bash: cho: command not found

Dunno since when i can no longer copy-selection etc via tmux
without it actively changing what i want to copy!  'Thus that
printf stuff above.  If that is what you meant :-(

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
