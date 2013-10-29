X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/29/2
Message-ID: <526F2825.5070500@redhat.com>
Date: Tue, 29 Oct 2013 08:44:45 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: libxml2 external parsed entities issue
Content-Type: text/plain; charset=utf-8

On 10/28/2013 11:47 PM, Nicolas Grégoire wrote:

> For RedHat, it covers both but "libxml2 already provides mechanisms to
> disable external entities which applications can use. Closing this flaw
> as 'wontfix'": https://bugzilla.redhat.com/show_bug.cgi?id=915149
> 
> And the official page for the CVE isn't helpful:


libxml has an API to disable external entity expansion. Applications
linked against libxml, can use this API if they dont have enough
protections built-in. For this reason we believe that the
responsibility for correctly handling XEE lies with the app. and not
the library.




-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
