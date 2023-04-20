Received: (qmail 19825 invoked by uid 550); 20 Apr 2023 15:28:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19807 invoked from network); 20 Apr 2023 15:28:52 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Thu, 20 Apr 2023 11:28:22 -0400
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <ZD/4ODBjTesPMECg@itl-email> <20230419215340.UruCC%steffen@sdaoden.eu>
 <20230420073459.003a5be2.hanno@hboeck.de>
 <20230420125645.md-Zo%steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
In-Reply-To: <20230420125645.md-Zo%steffen@sdaoden.eu>
Message-Id: <A35F9CEA-C1F9-4D2B-8771-ED4EBA113B17@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

> |Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
> |> IMO it is no vulnerability at all since it has "always" been _very
> |> clearly_ (even very lengthily) documented in the manual page.

> Hanno B=C3=B6ck replied:
> |A vulnerability does not go away if it's documented, and I find that a
> |rather strange take.

> On Apr 20, 2023, at 8:56 AM, Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
> Hm no, i do not, the latter not at all.  You can bundle a OpenPGP
> / signify / even OpenSSL signature with something and can get
> secure download even over non-encrypted channels.

That's true, but irrelevant. The problem is that this function fails to
perform the security function implied by its name. If
HTTP::Tiny supports TLS (instead of rejecting it), it needs to verify TLS c=
erts by default.

If there's function named "isodd()" where "isodd(4) =3D=3D=3D true", that's=
 a bug,
even if the documentation said that's what it did. The function/method name
implies functionality. You could call it a naming bug. Papering over bugs h=
elps no one.

The *default* of an externally-called function needs to be secure.

I'm sympathetic to the problem of loading in the *right* certs, but systems=
 generally
already have mechanisms for configuring certs. That seems like a solved pro=
blem.

--- David A. Wheeler=
