Received: (qmail 32125 invoked by uid 550); 19 Apr 2023 21:54:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31826 invoked from network); 19 Apr 2023 21:53:52 -0000
Date: Wed, 19 Apr 2023 23:53:40 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230419215340.UruCC%steffen@sdaoden.eu>
In-Reply-To: <ZD/4ODBjTesPMECg@itl-email>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <ZD/4ODBjTesPMECg@itl-email>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-450-g9589f04a75
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert
 default, affecting CPAN.pm and other modules

Demi Marie Obenour wrote in
 <ZD/4ODBjTesPMECg@itl-email>:
 |On Tue, Apr 18, 2023 at 05:46:30PM +0200, Stig Palmquist wrote:
 |> HTTP::Tiny v0.082, a Perl core module since v5.13.9 and available
 |> standalone on CPAN, does not verify TLS certs by default. Users must
 |> opt-in with the verify_SSL=>1 flag to verify certs when using HTTPS.
 ...
 |IMO this is an HTTP::Tiny vulnerability.

IMO it is no vulnerability at all since it has "always" been _very
clearly_ (even very lengthily) documented in the manual page.
(Really, even i got that right in my s-cdda-to-db.pl.)
Now you could say it could at build time, or at require time, or
what, do the equivalent to HTTP::Tiny::can_ssl() automatically and
itself, and make that the default (so that it kicks
automatically).
I am just wondering, since i for myself first test can_ssl() in
order to react accordingly, that is, how do i know?, through _it_.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
