Received: (qmail 14188 invoked by uid 550); 2 Nov 2022 15:08:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20106 invoked from network); 2 Nov 2022 12:45:41 -0000
Date: Wed, 02 Nov 2022 13:45:27 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20221102124527.O5WVR%steffen@sdaoden.eu>
In-Reply-To: <CAFRnB2Wyc9uLMz8O-YLQ3JZ1-fUYWr+NpFecYyFYdA1YyB+sfA@mail.gmail.com>
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
 <tjtkiu$jeu$1@ciao.gmane.io>
 <CAFRnB2Wyc9uLMz8O-YLQ3JZ1-fUYWr+NpFecYyFYdA1YyB+sfA@mail.gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-329-gce485e68d3
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Re: OpenSSL X.509 Email Address 4-byte
 Buffer Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

  ...
 |On Wed, Nov 2, 2022 at 7:57 AM Tavis Ormandy <taviso@gmail.com> wrote:
 |> I don't know rust, so serious question - if this same buggy punycode

The problem with punycode is punycode as such.
It should have been URL-encoded UTF-8 maybe with normal
decomposition from the start, and the DNS limits should have been
raised, all that now well over twenty years ago.

Poul-Hennig Kamp of FreeBSD, varnish etc wrote just this week on
another ML

 |> The other ting to keep in mind is the immense existing codebase of
 |> unix kernels et al, not to mention application code depending on
 |> those kernels.
 |
 |This is the mistake we IT-people keep doing again and again:
 |
 |Forwards compatibility is /far/ more important than backwards compatibil\
 |ity.

It would have been grown out by now.  And many problems would
never happened, including those incompatibilities that they wanted
to avoid.  My one cent.

Other than that.  Sigh.  C is the culprit!!

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
