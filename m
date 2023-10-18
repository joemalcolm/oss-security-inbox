X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/18/9
Message-ID: <a2402c1e2398b8f0818955dc1ced6be6d790b69f.camel@orlitzky.com>
Date: Wed, 18 Oct 2023 19:48:15 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: with firefox on X11, any page can pastejack you anytime
Content-Type: text/plain; charset=utf-8

On Wed, 2023-10-18 at 17:31 -0500, Grant Taylor wrote:
> On 10/18/23 2:30 PM, Michael Orlitzky wrote:
> > That's the crux of it but I don't think it frees Firefox from 
> > responsibility.
> 
> Please elaborate on what Firefox's responsibility is here?

Among other things, it should not let random webpages delete my data.
The data in the selection buffer do not belong to Firefox, and REALLY
do not belong to the webpages I visit. They belong to me; I put them
there. I should be the only one who can modify them. Same as when you
create a file on UNIX.

Javascript has been able to do all kinds of insane things in the past,
so there's some room for disagreement here. But the fact that they
disallow this with the usual Ctrl-C clipboard suggests that, at some
point, someone was smart enough to recognize this as a problem.


> > Despite the premise being contrary to common sense and fifty years 
> > of evidence, Firefox promises to sandbox all of the bad things that 
> > untrusted third-party code might do to you.
> 
> So perhaps Firefox needs to change their statement / stance. 

It _would_ save a lot of trouble if we all just admitted that the
modern web is stupid and will never work properly.

