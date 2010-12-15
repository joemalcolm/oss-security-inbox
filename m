X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/15/6
Message-ID: <4D089A5C.50707@internetionals.nl>
Date: Wed, 15 Dec 2010 11:37:16 +0100
From: Justin Ossevoort <justin@...ernetionals.nl>
To: oss-security@...ts.openwall.com
CC: Tomas Hoger <thoger@...hat.com>
Subject: Re: Breaking the links: Exploiting the linker
Content-Type: text/plain; charset=utf-8

On 15/12/10 10:45, Tomas Hoger wrote:
> Maybe you want to suggest something like this instead:
> 
>   LD_LIBRARY_PATH=${LD_LIBRARY_PATH:+$LD_LIBRARY_PATH:}/path/to/app

And then ofcourse with the recommended quotes:

LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+$LD_LIBRARY_PATH:}/path/to/app"

Regards,

    justin....
