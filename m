X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/28/8
Message-Id: <BE24F8FC-A62D-4400-8D0D-923C90D48203@noxss.org>
Date: Fri, 28 Nov 2008 23:31:05 +0100
From: Jeremias Reith <jr@...ss.org>
To: oss-security@...ts.openwall.com
Cc: Steffen Joeris <steffen.joeris@...lelinux.de>
Subject: Re: CVE requset: WordPress XSS vulnerability in RSS Feed Generator
Content-Type: text/plain; charset=utf-8

On Nov 28, 2008, at 22:39 , Steffen Joeris wrote:

> Hi
>
>> a XSS vulnerability has been discovered in WordPress.
>>
>> Vendor info:
>> http://wordpress.org/development/2008/11/wordpress-265/
>>
>> Detailed information:
>> http://www.securityfocus.com/archive/1/498652 (Note: It should be
>> "prior to 2.6.5" in the summary)
> I might be off here, but doesn't the patch[0] create another XSS by  
> removing
> wp_specialchars?
>
> Cheers
> Steffen
>
> [0]:
> http://trac.wordpress.org/changeset?old_path=tags%2F2.6.3&old=&new_path=tags%2F2.6.5&new=


Looks fine to me.

You probably missed that the added clean_url() is applied on the  
entire URL instead of wp_specialchars() to REQUSET_URI.


Cheers,
Jeremias
