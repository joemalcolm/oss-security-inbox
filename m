X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3042" "Saturday" "15" "June" "2019" "16:54:13" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1hcFgj-0001CA-PR@rmmprod05.runbox>" "60" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^CC:" nil nil "6" "2019061520:54:13" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "U       dwheeler@dwh Jun 15   60/3042  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190615205947.56f2315d@computer>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615205947.56f2315d@computer>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6105 invoked by uid 550); 15 Jun 2019 20:54:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6045 invoked from network); 15 Jun 2019 20:54:25 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailer: RMM6
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615205947.56f2315d@computer>
In-Reply-To: <20190615205947.56f2315d@computer>
Message-Id: <E1hcFgj-0001CA-PR@rmmprod05.runbox>
CC: "oss-security" <oss-security@lists.openwall.com>
Date: Sat, 15 Jun 2019 16:54:13 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: "oss-security" <oss-security@lists.openwall.com>

On Sat, 15 Jun 2019 20:59:47 +0200, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> I think what you're describing has been going on for a while, even
> before oss-fuzz.
> A combination of compiler sanitizers and better fuzzing techniques has
> scaled up bug finding and fixing to a level we haven't had before.
>=20
> For distributions that promise to backport all security fixes that
> creates a situation where it's almost impossible to keep that promise,
> they just don't have the manpower to scale up at the same speed as
> people find bugs.
> Maybe the main takeaway here is to just recognize that, and maybe
> distros should be more honest here and be clear what they can and can't d=
o.

I think that's fair, but I think projects have their part to play too:

1. Projects should work much harder at avoiding backwards-incompatible chan=
ges.
  Some projects (though *not* the Linux kernel) seem to take a very
  cavalier attitude to breaking changes.  Yes, change is sometimes necessar=
y,
  but projects need to work harder at providing graceful upgrades.
  (Slow deprecations, providing altenative differently-named 'new' interfac=
es
  with different semantics that let people gradually transition, and so on).
  IN PARTICULAR: I believe the primary reason that distros
  often backport, instead of using the "current" version, is because their
  users correctly fear backwards-incompatible changes. If projects would st=
op
  being the problem, then distros wouldn't feel the need to solve the probl=
em.
2. Everyone needs test suites to detect problems from changes & upgrades.
  Since everyone is making changes, including upgrading components,
  everyone should have test suites to detect problems before they ship.
  Then upgrading will be much easier and less likely to cause problems.
3. Projects should be using static analysis tools to detect problems
  ahead-of-time.  Yes, they have false positives and false negatives.
  Be kind to your users, and use tools to help find & fix the bugs
  instead of inflicting them on your users.
4. Input validation, input validation, input validation.
   If projects' software would be pickier about what they accept,
   many vulnerabilities and bugs wouldn't have a chance.
5. Apply other good security techniques, like hardening against
   the inevitable problems.
6. I'd like to see more projects fuzzing themselves before they ship.
  I'm probably dreaming on this point, but I can dream :-).
These won't solve everything, but it will reduce the trauma.

Many of these points are covered by the CII Best Practices badge.
I encourage OSS projects to work to get a badge:
  https://bestpractices.coreinfrastructure.org/
(Full disclosure: I lead that project.  But I hope it's useful anyway :-) .)

I'm not revealing any grand new ideas.  They're kind of basic.
However, they seem to be ignored by too many projects today.
I think if more projects would "do unto others as you
would have them do unto you", then handling
this stuff would be a lot less painful :-).

--- David A. Wheeler
