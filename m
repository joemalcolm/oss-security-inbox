X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/24/5
Message-ID: <61545434.253592.1306236243890.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 24 May 2011 07:24:03 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: exim STARTTLS fix
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hi,
> 
> while reviewing EXIM git for the last security issues, I also found the
> STARTTLS fix:
> 
> http://git.exim.org/exim.git/commitdiff/da80c2a8ed49427334af613c00df65ae301cacdd
> 
> Is fixed with exim 4.76 apparently.
> 

That commit suggests it's not an issue, but rather some extra paranoid
buffer wiping. Is there a reason to believe this is a problem?

I'd rather not assign an ID if it's not needed.

Thanks.

-- 
    JB
