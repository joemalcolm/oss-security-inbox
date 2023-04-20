Received: (qmail 28528 invoked by uid 550); 20 Apr 2023 21:40:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19845 invoked from network); 20 Apr 2023 21:26:12 -0000
Date: Thu, 20 Apr 2023 23:26:00 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230420212600.v56eE%steffen@sdaoden.eu>
In-Reply-To: <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=QxeKT9DXK=MoFVoFDGav9w@mail.gmail.com>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <ZD/4ODBjTesPMECg@itl-email> <20230419215340.UruCC%steffen@sdaoden.eu>
 <20230420073459.003a5be2.hanno@hboeck.de>
 <20230420125645.md-Zo%steffen@sdaoden.eu>
 <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=QxeKT9DXK=MoFVoFDGav9w@mail.gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-450-g9589f04a75
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert
 default, affecting CPAN.pm and other modules

Jeffrey Walton wrote in
 <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=3DQxeKT9DXK=3DMoFVoFDGav9w@mail.gmail.com>:
 |On Thu, Apr 20, 2023 at 9:05=E2=80=AFAM Steffen Nurpmeso <steffen@sdaoden=
.eu> \
 |wrote:
 |> Hanno B=C3=B6ck wrote in
 |>  <20230420073459.003a5be2.hanno@hboeck.de>:
 |>|On Wed, 19 Apr 2023 23:53:40 +0200
 |>|Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
 |>|> IMO it is no vulnerability at all since it has "always" been _very
 |>|> clearly_ (even very lengthily) documented in the manual page.
 |>|
 |>|A vulnerability does not go away if it's documented, and I find that a
 |>|rather strange take.
 |>
 |> Hm no, i do not, the latter not at all.  You can bundle a OpenPGP
 |> / signify / even OpenSSL signature with something and can get
 |> secure download even over non-encrypted channels.  Even DNSSEC was
 |> over unencrypted channels for twenty years, and still mostly is,
 ...
 |According to the HTTP::Tiny docs:
 |
 |    Server identity verification is controversial and potentially tricky
 |    because it depends on a (usually paid) third-party Certificate
 |    Authority (CA) trust model to validate a certificate as legitimate.
 |    This discriminates against servers with self-signed certificates or
 |    certificates signed by free, community-driven CA's such as CAcert.org.
 |
 |I think some of the premises no longer hold.

What i thought over twenty years ago.
All DNS zones should provide the TLS keys to be used to
communicate securely with them.  So you have a chain of trust that
can be followed top down, and everone owning a domain could
provide its own keys.  Only one crypto machinery for it all.
And IANA should spread the root servers a bit more, i miss lights
on North Korea, Kuba, Russia, China.

 |The threat models I have seen depend upon authentic comms. You have to
 |know which server you are talking to to ensure confidentiality and
 |authenticity. There's nothing controversial about them.

You usually ask via DNS to get name -> address mapping.
Then you connect to the address.

 |There's also the pervasive spying the world has evidence of since
 |leaks like Snowden. We know folks are being spied upon by the

Polemically i would ask you why you need leaks for this.
More funeral dry than polemically.  I am happy that the German
police finally got their digital radio, everybody was joking for
more than a decade that the criminals have much better equipment.
But you know, i find this sympathic.  They still are policemen.

 |government, and we know people can be tortured or die from it if they
 |live under a despot regime. There's nothing controversial about using

Sorry not with me on the list.  Hundreds of millions of people
will loose their home because of climate change, today they suffer
because of plundering of the rich nations (G7 i think they are
called), all over the planet.  Thirty years ago the US controlled
banana production saw the most terrible chemicals and wage
slavery, we see children dismantle poisonous electronic parts, and
your battery car caused massive environmental damage.  No one can
describe the illnesses and pain caused by G7, so let us entitle
a despot regime.  (And not talking about prison and camp
conditions in USA.  At all.)

 |HTTPS to help achieve confidentiality.

Hallelujah!

 |I don't think HTTPS discriminates against servers with self-signed
 |certificates. A user is free to limit trust to a single, self-signed
 |certificate. The docs show the user how to do it.

That seems very, very complicated for non-nerds.
I fail to see user-enabled documentation for how to achieve this,
but i am only using command line / console programs, it can be the
desktop environments make this easy.

Firefox (the Google money takers) puts this into the "unsecure
don't don't twilight", and that over, and over, and over again.
It could, for example, give you options, once, always, ask again,
ask again more easily, do not ask again until YYYY-MM-DD (maybe
taking into account the certificate expiration).
What.Do.I.Know.

 |I don't think HTTPS discriminates against free, community-driven CA's.
 |Let's Encrypt is quite popular and still free.

Luckily CACert.org is still alive.  I thankfully can use it to
gain a S/MIME certificate.
Mind you, the IETF has created the conditions to get something
LetsEncrypt-alike for S/MIME, i was not optimistic it comes for
real.

 |A more interesting question (to me) is, how does HTTP::Tiny
 |differentiate between comms that need server authentication (like
 |fetching a web page) versus those that don't (like a download with a
 |GPG signature). The answer is likely, HTTP::Tiny cannot.
 |SinceHTTP::Tiny cannot determine when the user needs HTTPS (or not),
 |it should default to HTTPS.

It simply creates a connection to the HTTP(S) URL it is given it,
no?  The rest depends upon the programmer using HTTP::Tiny.
The connection surely is securely encrypted.

 |In general, nowadays, I think the person who is maintaining HTTP::Tiny
 |is plunging on the wrong sword. There are better battles to fight
 |nowadays.

Yes.  Push forward per-domain keys into DNS, maybe.
Cut'em out, Ride 'em in.  Rawhide!

 |(Sorry to wander off-topic).

Yes, i became beasty, being off-topic is my attitude.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
