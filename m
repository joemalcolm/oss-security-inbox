X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/03/02/8
Message-ID: <87wq2zwe6o.fsf@redhat.com>
Date: Mon, 02 Mar 2015 17:34:55 +0100
From: Martin Prpic <mprpic@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: Maven downloads JARs via HTTP
Content-Type: text/plain; charset=utf-8

gremlin@...mlin.ru writes:

> On 2015-03-02 14:07:00 +0100, Martin Prpic wrote:
>
>  > "Maven Central can now be accessed via HTTPS. I think the
>  > default configuration should be switched to use that, rather
>  > than the current unsecured HTTP transport."
>
> Does it use any sort of package signing and signature verification?

Seeing as the patch only does s/http/https/, I would say, unfortunately, no.

https://git-wip-us.apache.org/repos/asf?p=maven.git;a=patch;h=92161918

-- 
Martin Prpič / Red Hat Product Security
