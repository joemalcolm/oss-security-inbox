X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/21/1
Message-ID: <4DAF8E7F.6070504@redhat.com>
Date: Thu, 21 Apr 2011 09:55:11 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Josh Bressers <bressers@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: missing socket check in can/bcm release
Content-Type: text/plain; charset=utf-8

On 04/21/2011 07:45 AM, Eugene Teo wrote:
> On 04/21/2011 04:52 AM, Josh Bressers wrote:
>> Please use CVE-2011-1598
>
> Updated patch: http://permalink.gmane.org/gmane.linux.network/192974

Correction: s/Updated patch//. This patch is for a similar issue but for 
can/raw release. I rather group these two patches with CVE-2011-1598 
than to have another name assigned for it. But I'm fine either way.

Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
