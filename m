X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/04/3
Message-ID: <20141204075749.GA15581@cantor.unex.es>
Date: Thu, 4 Dec 2014 08:57:49 +0100
From: Santiago Vila <sanvila@...x.es>
To: "Joshua J. Drake" <oss-sec-pmgetbl@...p.org>
Cc: oss-security@...ts.openwall.com, Tero Marttila <terom@...me.fi>
Subject: Re: CVE request: procmail heap overflow in getlline()
Content-Type: text/plain; charset=utf-8

On Wed, Dec 03, 2014 at 05:30:57PM -0600, Joshua J. Drake wrote:
> Is it possible to trigger this issue with untrusted input or only
> trusted input from procmailrc?

This is an issue with the handling of .procmailrc file, which contains
the filter rules for procmail. An external attacker is not supposed to
provide the .procmailrc file at /home/user, only the email to be
filtered, so, IMHO, this is a bug but maybe not a security bug.

Thanks.
