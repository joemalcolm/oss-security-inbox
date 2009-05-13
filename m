X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/13/4
Message-Id: <200905131151.44822.oeriksson@mandriva.com>
Date: Wed, 13 May 2009 11:51:44 +0200
From: Oden Eriksson <oeriksson@...driva.com>
To: oss-security@...ts.openwall.com
Subject: Re: php mb_ereg_replace()
Content-Type: text/plain; charset=utf-8

onsdag 13 maj 2009 09:40:20 skrev  Sebastian Krahmer:
> Hi,
>
> anyone aware of Bugtraq ID 34873 (http://www.securityfocus.com/bid/34873)?
> Seems there is no CVE or anything else (not even a patch).
>
> Sebastian

Got this reply from Derick Rethans asking on security@....net:

> It was brought to my attention there is a new security issue in php as shown 
> here:
> 
> http://www.securityfocus.com/bid/34873
> 
> Could you please advice?

How is this a bug, the documentation for mb_ereg_replace writes:

"If e  is specified, replacement  string will be evaluated as PHP 
expression. "

In the example "e" is specified, so of course it will execute the code. 

regards,
Derick

-- 
Regards // Oden Eriksson

