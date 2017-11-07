X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/07/10
Message-ID: <20171107210019.tey5xzfaqaswh7v3@eldamar.local>
Date: Tue, 7 Nov 2017 22:00:19 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Net::Ping::External command injections
Content-Type: text/plain; charset=utf-8

Hi

On Tue, Nov 07, 2017 at 05:51:27PM +0100, Matthias Weckbecker wrote:
> Hi,
> 
> Net::Ping::External [0] is prone to command injection vulnerabilities.
> 
> The issues are roughly 10 (!) years old [1], but the code is still being
> shipped these days (e.g. in ubuntu artful and debian stretch [2]).
> 
> I had contacted the author of the code a few days ago, but obviously did
> not get any reaction.
> 
> A patch is available here:
> 
>   http://matthias.sdfeu.org/devel/net-ping-external-cmd-injection.patch

This issue has been assinged CVE-2008-7319 by MITRE.

Regards,
Salvatore
