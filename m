X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/23/2
Message-ID: <70018822-411e-40dd-9944-59272d6e2850@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 23 Sep 2011 11:34:32 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- apt
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-3374.

Thanks.

-- 
    JB


----- Original Message -----
> apt-key in Ubuntu is not verifying the key correctly when it is
> fetched
> via 'apt-key net-update'. This was reported here:
> 
> http://seclists.org/fulldisclosure/2011/Sep/221
> 
> and tracked here:
> https://launchpad.net/bugs/856489
> 
> Based on the man page, Debian should not be affected. Derivatives of
> Ubuntu probably are.
> 
> --
> Jamie Strandboge             | http://www.canonical.com
> 
