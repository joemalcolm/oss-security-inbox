Received: (qmail 16297 invoked by uid 550); 5 May 2023 00:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12002 invoked from network); 4 May 2023 23:56:16 -0000
Date: Fri, 05 May 2023 01:56:03 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: "David A. Wheeler" <dwheeler@dwheeler.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20230504235603.SFmyd%steffen@sdaoden.eu>
In-Reply-To: <C2F1E269-0FD7-45A2-A0E1-F1AC29383C09@dwheeler.com>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
 <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
 <CAMZuV15xa4hH1TTd_ToPzEi55W04yzoMckiPnE_CtRtqoPYLxQ@mail.gmail.com>
 <C2F1E269-0FD7-45A2-A0E1-F1AC29383C09@dwheeler.com>
Mail-Followup-To: "David A. Wheeler" <dwheeler@dwheeler.com>,
 oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-461-g2a5db04708
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert
 default, affecting CPAN.pm and other modules

David A. Wheeler wrote in
 <C2F1E269-0FD7-45A2-A0E1-F1AC29383C09@dwheeler.com>:
 |
 |> On May 4, 2023, at 2:23 PM, Rainer Canavan <rainer.canavan@avenga.com> \
 |> wrote:
 |> I'd suspect that the issue in
 |> HTTP::Tiny would end up DISPUTED, since not validating TLS names is
 |> not the generally expected behavior, although it is documented (in
 |> bold no less).
 |
 |I would also expect it to be at most disputed, not rejected.
 |As Jeffry Walton noted, failing to validate a certificate is considered
 |by many to be a vulnerability, there's even a specific CWE for this case:
 |https://cwe.mitre.org/data/definitions/295.html
 |
 |Per the OP:
 |
 |> On Apr 18, 2023, at 11:46 AM, Stig Palmquist <stig@stig.io> wrote:
 |> ... We have generated a list of over 300 potentially affected
 |> CPAN distributions.
 |
 |A default that potentially causes over 300 other vulnerabilities sounds \
 |like
 |a root cause vulnerability to me. Clearly many users do *not* treat \
 |this as expected behavior.
 |A change of the default would, for many, produce the expected behavior.

Unfortunately the moderator rejected my last message.

But still i want to say that the package HTTP::Tiny, which has
a tremendous list of contributors, made a conscious decision that
is noted several times, and lengthily explained, and they have all
rights in the world to do so, which would be true even if their
findings were false, which they are not.  Quite the opposite.

Maybe they should change their SYNOPSIS example (it is well
received here that there is a complete UNIX manual page locally
available, thank you) to

    my $response =3D HTTP::Tiny->new(
          ...it can be assumed people need adjustments..,
          verify_SSL =3D> HTTP::Tiny::can_ssl()
        )->get('http://example.com/')

or something (though verify_SSL for HTTP could be taken
unseriously by nitpicking manual readers).

I see more problems with a community which only uses copy+paste
from stackoverflow or other such sides, i only wonder, because
whenever _i_ try to find something, i only get back pages (if
anything) where people are fooled, or where other people "which
seem to know" answer in a way that could possibly understood "if
one would know", but otherwise one has to look up to an olymp of
understanding that one fails to reach oneself.  My impression.

There also already were security problems by people who plugged
together dozens of modules which themselves required dozens of
modules, leading to an impenetrable djungle of dependencies and
running code.

In fact the only plug-in or how is it named that i run with the
firefox-bin (somewhat containerized, which btw is a problem with
GMail.com and their OAuth 2.0 flow=3Dredirect approach, as the local
script which performs authorization "must create a temporary HTTP
server" to which the browser redirects, and that must thus run in
the same container as the browser, and there you go, my email
client must somehow reach into the container where that
multi-million-lines-of-code web browser is running, and i can tell
you HOW messy that was to get right.  Oh, have i already narrated
that i got donated a used Android smartphone (i do not buy those
myself due to the environmental problems, and the working
conditions, .. of the resources, ..BOY I CAN TELL YA.. btw), and
i have to turn on microphone and device detection to make
a picture with the camera, and HOW complicated it is to get rid of
all the rights, and that it takes a LONG time to get back from
that screen, so LONG that i tap again, and am two levels above,
now is this behaviour so desired, i do not know), anyway, that
plug-in is umatrix, and if you look how many scripts, and images,
and the scripts and hidden? frames, load more, and more scripts
are loaded, that i think that the entire world knows that i am
reading that page, from which IP, and i do not know what else.
It is understood that getting these data points is a large market
in the US, if i recall a Bruce Schneier note correctly.

No no.
A responsible and conscious programmer must at least look a little
bit into the manual of a module or library that she uses, and how
good if then there _is_ a good manual, locally, to be read.
perl always did a tremendous job regarding this, already before
Y2K!  This is a good community with helpful people, and someone
was even capable to tell me

  +   # We use :encoding to ensure our I/O layer is UTF-8, but that does no=
t help
  +   # for the command line of the audio encode applications we start, sin=
ce our
  +   # carefully prepared UTF-8 strings will then be converted according t=
o the
  +   # Perl I/O layer for STDOUT!  Thus we need to enwrap the open() calls=
 that
  +   # start the audio encoders in utf8_echomode_on() and utf8_echomode_of=
f()
  +   # calls!  I have forgotten who gave this working solution on a perl I=
RC
  +   # channel which i entered via browser on 2013-05-06, i apologise: tha=
nk you!
  +   sub utf8_echomode_on {binmode STDOUT, ':encoding(utf8)'}
  +   sub utf8_echomode_off {binmode STDOUT, ':pop'}
  [Whoever you were, please call up so i can give you credit!!
  Thanks!!]

  [Hey moderator!  I mean come on, did YOU know that??]

Sorry but without wanting to be personally demeaning, screaming
"Security vulnerability!" is just territorial pissing and/or
self-opinionatedness in this very case.
Like i said correctly though context-free in the moderator-
rejected email,

  Where the streets have no name.  He.  But on the other hand

    Und Frau Holle,       And Mother Hulda (Old Mother Frost),
    hot gern' die Wolle,  likes the wool,
    vom Dromedar,         of the dromedary,
    aus Afrika.           from Africa.

  This is --- with cojones --- Alf Poier and his song "Weil der
  Mensch z=C3=A4hlt" ("Because [it is] the human [that] counts").

To add to this that already the second sentence is

  Es sterb'n bald alle V=C3=B6gel,
  es sterb'n bald alle K=C3=A4fer,
  im Bett da liegt der Adam
  und vermehrt sie mit der Eva

and yes it is true all birds are soon dying, just as will all
bugs, and in bed there is Adam, and breeds them with Eve.
Having said that, some kind of bugs will not die out, just like
"cockroaches behind the tilework" (another moderator-rejected term
of his song :-).

So to tank over this conscious package decision, that does a very
good job for many years, so good it is now included in the perl
base, with all this artillery shooting, to hint for slick,
obedient, ideologically styled, chin muscle stretching security is
nothing but fascism.

Having said that, maybe they will now have to change the idea in
equal spirit as shown above.  I consider this a sad but
understandable move.  I personally understood their decision, but,
like i said, always use and used verify_SSL.  One can only hope
that the future will bring a replacement for this western centric
CA list with something that comes via DNS domain chains, even
though this of course has its own problems.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|~~
|..and in spring, hear David Leonard sing..
|
|The black bear,          The black bear,
|blithely holds his own   holds himself at leisure
|beating it, up and down  tossing over his ups and downs with pleasure
|~~
|Farewell, dear collar bear
