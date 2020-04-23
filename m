X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/23/11
Message-ID: <326221db60085d047ec552343f0f3a5e0e14ae7e.camel@gathman.org>
Date: Thu, 23 Apr 2020 12:33:34 -0400
From: "Stuart D. Gathman" <stuart@...hman.org>
To: oss-security@...ts.openwall.com
Subject: Re: spoofing of local email sender via a homoglyph attack
Content-Type: text/plain; charset=utf-8

On Thu, 2020-04-23 at 17:32 +0300, PromiseLabs Pentest Research wrote:
> 
> is that it could be used to advance a social-engineer attack into 
> tricking the recipients believing that they are getting an email from
> a 
> high-level position at the company.
> 
> It's related to the from header.

This is not really job of postfix to block.  It is trivial to block
internationalized local mail in a milter (note: I maintain pymilter) -
or just refuse to create non-ascii mailboxes.  

You don't even need utf-
8 for this attack - the infamous Arial font makes homoglyphs like lBM
(which looks exactly like IBM in Arial) possible, and email localpart
is case sensitive.  So I also recommend forcing all local mailboxes to
be all lower case.  (Some businesses force to all upper case instead.) 


If anything, this is a security bug in the *font* (which the term
homoglyph implies), and the CVE should specify the problematic font or
fonts.

