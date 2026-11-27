X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/11
Message-ID: <20261127164815.hrHKKHJ6@steffen%sdaoden.eu>
Date: Fri, 27 Nov 2026 17:48:15 +0100
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

Alexander Bluhm wrote in
 <awleJmUnVkfJaJKB@...0s.bluhm.invalid>:
 |On Thu, Nov 26, 2026 at 11:38:51AM +0000, John Haxby wrote:
 |>> On 26 Nov 2026, at 08:36, Jakub Wilk <jwilk@...lk.net> wrote:
 |>> * Robert Rothenberg <rrwo@...nsec.org>, 2026-11-25 00:32:
 |>>> Workarounds
 |>>> -----------
 |>>> Replace Strong::Random with a cryptographically secure source such \
 |>>> as Crypt::URandom or Crypt::SysRandom.
 |>> 
 |>> There's also RAND_bytes() in Net::SSLeay, which is more likely to \
 ...
 |What would help the Perl ecosystem, would be one and only one of
 |these *::Random modules in Core.  Then every platform maintainer
 |can patch it to the platform's best way.  And Perl applications can
 |migrate to this API without the need to choose between good, bad,
 |and ugly random sources.

I absolutely concur.  Even a built-in function, like rand() is
one, detected by whatever their OS-etc-aware configure figures
out.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
