X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/23/9
Message-ID: <20200423155806.GA6911@kiel.esmtp.org>
Date: Thu, 23 Apr 2020 17:58:06 +0200
From: Claus Assmann <ml+oss@...tp.org>
To: oss-security@...ts.openwall.com
Subject: Re: spoofing of local email sender via a homoglyph attack
Content-Type: text/plain; charset=utf-8

On Thu, Apr 23, 2020, PromiseLabs Pentest Research wrote:

> It's related to the from header.

> 220 *** OMITTED *** ESMTP Postfix
> mail from: john.doe@...ver.com
> 250 2.1.0 Ok

1. The correct syntax is
MAIL From:<john.doe@...ver.com>
See RFC 5321 et.al: no spaces, and <> around the address.

2. That's the envelope sender, not "the from header"
You can probably use
From: john.doe@...ver.com
in the header even without authentication (I haven't tried it; I
do not have postfix installed).

