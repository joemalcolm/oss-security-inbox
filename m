X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/04/10
Message-ID: <da870ab4-5c14-4a75-8001-d46dbdbd1a05@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 04 Oct 2011 14:50:19 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- phpPgAdmin -- Multiple XSS flaws fixed in v5.0.3
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-3598

Thanks.

-- 
    JB


----- Original Message -----
> Hello Josh, Steve, vendors,
> 
>    multiple cross-site scripting (XSS) flaws were reported in
>    phpPgAdmin:
> 
> 1) the 'title' argument of a particular web page was not sanitized
>     properly prior displaying the page header,
> 
> 2) the return ULR ('return_url') and return link name ('return_desc')
>     were not sanitized properly prior displaying the requested page
>     data.
> 
> A remote attacker could provide a specially-crafted URL, which once
> visited by an unsuspecting phpPgAdmin user could lead to arbitrary
> HTML
> or web script execution.
> 
> References:
> [1] https://secunia.com/advisories/46248/
> [2] https://bugs.gentoo.org/show_bug.cgi?id=385505
> [3] http://phppgadmin.sourceforge.net/doku.php?id=download
> [4]
> http://sourceforge.net/mailarchive/forum.php?thread_name=4E897F6C.90905%40free.fr&forum_name=phppgadmin-news
> 
> [5] https://bugzilla.redhat.com/show_bug.cgi?id=743205
> 
> Upstream patch:
> [6]
> https://github.com/phppgadmin/phppgadmin/commit/1df248203de055f97e092b50b1dd9643ccb73842
> 
> Could you allocate a CVE id for this?
> 
> Thank you && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
> 
