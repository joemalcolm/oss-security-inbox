X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/03/1
Message-ID: <4D215E0B.9050703@redhat.com>
Date: Mon, 03 Jan 2011 10:56:35 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
CC: Eugene Teo <eugene@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: irda: prevent integer underflow in IRLMP_ENUMDEVICES
Content-Type: text/plain; charset=utf-8

On 12/23/2010 08:53 AM, Eugene Teo wrote:
> From Dan Rosenbugs :>, "If the user-provided len is less than the
> expected offset, the IRLMP_ENUMDEVICES getsockopt will do a
> copy_to_user() with a very large size value.  While this isn't be a
> security issue on x86 because it will get caught by the access_ok()
> check, it may leak large amounts of kernel heap on other architectures.
>  In any event, this patch fixes it."

Assigned CVE-2010-4529 to this one.


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
