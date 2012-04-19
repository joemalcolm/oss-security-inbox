X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/19/11
Message-ID: <20120419123645.GI27768@suse.cz>
Date: Thu, 19 Apr 2012 14:36:45 +0200
From: Miklos Vajna <vmiklos@...e.cz>
To: Caolán McNamara <caolanm@...hat.com>
Cc: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>, officesecurity@...ts.freedesktop.org, David Tardon <dtardon@...hat.com>, Carlo Di Dato <shinnai@...istici.org>
Subject: Re: [Officesecurity] CVE Request (minor) -- LibreOffice (X >= v3.5.0): DoS (excessive CPU use) in the RTF tokenizer
Content-Type: text/plain; charset=utf-8

On Thu, Apr 19, 2012 at 01:33:07PM +0100, Caolán McNamara <caolanm@...hat.com> wrote:
> On Thu, 2012-04-19 at 14:14 +0200, Jan Lieskovsky wrote:
> > Though Caolán , Miklos or LibreOffice upstream can clarify further if
> > this should be considered to be a security flaw (due to internal
> > implementation details I am not aware of and might lead to memory
> > corruption announced at [7]).
> 
> nah, insta-crash with a -1 passed to new(...) so throws bad_alloc,
> "safe" crash.

+1, as far as I see.

Miklos
