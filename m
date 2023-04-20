Received: (qmail 28239 invoked by uid 550); 20 Apr 2023 21:40:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5961 invoked from network); 20 Apr 2023 20:59:27 -0000
Date: Thu, 20 Apr 2023 22:59:15 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230420205915.JzlCB%steffen@sdaoden.eu>
In-Reply-To: <A35F9CEA-C1F9-4D2B-8771-ED4EBA113B17@dwheeler.com>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <ZD/4ODBjTesPMECg@itl-email> <20230419215340.UruCC%steffen@sdaoden.eu>
 <20230420073459.003a5be2.hanno@hboeck.de>
 <20230420125645.md-Zo%steffen@sdaoden.eu>
 <A35F9CEA-C1F9-4D2B-8771-ED4EBA113B17@dwheeler.com>
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

David A. Wheeler wrote in
 <A35F9CEA-C1F9-4D2B-8771-ED4EBA113B17@dwheeler.com>:
 |>|Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
 |>|> IMO it is no vulnerability at all since it has "always" been _very
 |>|> clearly_ (even very lengthily) documented in the manual page.
 |
 |> Hanno B=C3=B6ck replied:
 |>|A vulnerability does not go away if it's documented, and I find that a
 |>|rather strange take.
 |
 |> On Apr 20, 2023, at 8:56 AM, Steffen Nurpmeso <steffen@sdaoden.eu> wrot=
e:
 |> Hm no, i do not, the latter not at all.  You can bundle a OpenPGP
 |> / signify / even OpenSSL signature with something and can get
 |> secure download even over non-encrypted channels.
 |
 |That's true, but irrelevant. The problem is that this function fails to
 |perform the security function implied by its name. If

In danger of becoming a nitpicker, HTTP::Tiny is a tiny
implementation of something that supports retrieval via HTTP.
I am thankful it exists, i use it!  (Thanks!)
It does even support retrieval via HTTPS if so configured!!
And i use that if it is available and i can / need it.

This is camel land, maybe a bit like that unforgotten "A Camel
walked through the Eye of a Needle" (translation of German name)
by unforgotten Ephraim Kishon (he spoke fluent German).
Not to mention that all distros i personally use download perl
modules via their package system not cpan.
And a bit polemically even it could be that downloading something
via perl / HTTP::Tiny requires less CPU cycles than a simple
python script startup.

 |HTTP::Tiny supports TLS (instead of rejecting it), it needs to verify \
 |TLS certs by default.
 |
 |If there's function named "isodd()" where "isodd(4) =3D=3D=3D true", that=
's \
 |a bug,
 |even if the documentation said that's what it did. The function/method na=
me
 |implies functionality. You could call it a naming bug. Papering over \
 |bugs helps no one.

That is also polemic, so i guess i am fine.

 |The *default* of an externally-called function needs to be secure.

Well, if you use HTTPS then you will surely get a properly
encrypted connection.  The only possible question is, maximally,
to whom.  DNS could be spoofed, right.  But then again this can
happen to you on any government or larger company box, which
install CAs that allow decryption of the entire communication for
whatever purpose, a dedicated and permanent MITM.  But wait.  Now
it becomes political.

 |I'm sympathetic to the problem of loading in the *right* certs, but \
 |systems generally
 |already have mechanisms for configuring certs. That seems like a solved \
 |problem.

I am not sympathetic to "solved problem" paradigm or phrase.
I do not think history knows about "solved problems".
You may be temporarily right, however.  This is getting too far,
you know, i personally *do* have a CA, plus the one that
firefox-bin as compiled by Mozilla uses (never looked what *that*
is actually, i simply presume they do not use the global one), and
i also have $SSL_CERT_FILE set in the environment.

Hasta la victoria siempre!

P.S.:
  Aqu=C3=AD se queda la clara
  La entra=C3=B1able transparencia
  De tu querida presencia
  OpenSSL.


--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
