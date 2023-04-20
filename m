Received: (qmail 1842 invoked by uid 550); 20 Apr 2023 13:03:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32210 invoked from network); 20 Apr 2023 12:56:57 -0000
Date: Thu, 20 Apr 2023 14:56:45 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230420125645.md-Zo%steffen@sdaoden.eu>
In-Reply-To: <20230420073459.003a5be2.hanno@hboeck.de>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <ZD/4ODBjTesPMECg@itl-email> <20230419215340.UruCC%steffen@sdaoden.eu>
 <20230420073459.003a5be2.hanno@hboeck.de>
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

Hanno B=C3=B6ck wrote in
 <20230420073459.003a5be2.hanno@hboeck.de>:
 |On Wed, 19 Apr 2023 23:53:40 +0200
 |Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
 |> IMO it is no vulnerability at all since it has "always" been _very
 |> clearly_ (even very lengthily) documented in the manual page.
 |
 |A vulnerability does not go away if it's documented, and I find that a
 |rather strange take.

Hm no, i do not, the latter not at all.  You can bundle a OpenPGP
/ signify / even OpenSSL signature with something and can get
secure download even over non-encrypted channels.  Even DNSSEC was
over unencrypted channels for twenty years, and still mostly is,
so, .. that i say that one day, _that_ is strange.
I mean, i do not want to start useless and fruitless discussions,
and it will be treated as a bug in HTTP::Tiny no matter what
i say, hysteria is king.

 |Also I think this discussion was had many times before, as plenty of
 |libraries in other language ecosystems defaulted to not checking certs
 |or doing incomplete checks, and over time they all defaulted to the
 |sane thing: To make the secure setting the default.
 |The fact that apparently noone has ever checked this for a major perl
 |library (I mean - CPAN itself, the package manager, is affected) is
 |quite telling tbh.

There i agree with you.  Now OpenSSL is very likely there, and in
appropriate versions, and a usable CA might even be available also
when HTTP::Tiny goes.  Having said that, i think in NetBSD they
struggle with whether they should install a complete CA by
default, even though some may not need / want it (whatever else
reason in their long discussions appeared), i think it is in
pkgsrc only for now.  Btw, the Mozilla CA contains _only_ entries
i fully and completely trust; especially so after the state of the
Netherlands left before Christmas last year.  No.  (And no mission
here, and no nagging requirement to make money from it, either.)

(P.S.: about thirty years ago i got a handwritten letter of
appreciation from a Dutch official, who overwhelmingly thanked me
for paying a ticket i got when we were there.  So much they
appreciated honest Germans by then!)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
