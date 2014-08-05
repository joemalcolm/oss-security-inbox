X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/05/3
Message-ID: <CACYkhxjkgmUZtcvNWFeoccdLcFwtxo+EFR5fwB+TwYCR3yCxtA@mail.gmail.com>
Date: Tue, 5 Aug 2014 14:38:05 +1000
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Possible CVE request: subversion MD5 collision authentication leak
Content-Type: text/plain; charset=utf-8

On 5 August 2014 08:32, Ben Reser <ben@...er.org> wrote:
> I think your understanding of the current state of MD5 collision attacks is out
> of date.  Chosen prefix attacks are possible.  See:
> http://www.win.tue.nl/hashclash/ChosenPrefixCollisions/
>
> The MD5 hash is created off the data in the following format:
> <$URL> $REALM
>
> An attacker trying to take advantage of this only needs the $URL portion to
> match their server.  The $REALM can then be whatever data is required to make
> the MD5 hash match the system they are trying to attack.

Just to clarify - does the attacker have control of both $REALM parameters?

A chosen prefix collision still requires the attacker provide both
inputs (or at-least
the suffix to both inputs).

Regards,
  Michael
