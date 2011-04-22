X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/22/2
Message-ID: <4DB126BA.2050209@redhat.com>
Date: Fri, 22 Apr 2011 14:56:58 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: akuster <akuster@...sta.com>, Josh Bressers <bressers@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: missing socket check in can/bcm release
Content-Type: text/plain; charset=utf-8

On 04/22/2011 04:01 AM, akuster wrote:
> So this would affect kernels 2.6.25-rc1 and above? (if I figured it out
> correctly)

Yes, introduced in ffd980f9.

Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
