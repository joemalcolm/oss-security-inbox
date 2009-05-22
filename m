X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/22/8
Message-ID: <YMcM4drr7xfTDUmugLVqtaoff/w@XX1fo6zQUfC4h0jjRC6IBz3oNH4>
Date: Fri, 22 May 2009 08:31:47 +0400
From: Eygene Ryabinkin <rea-sec@...elabs.ru>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: slim
Content-Type: text/plain; charset=utf-8

Steven, *, good day.

Thu, May 21, 2009 at 08:24:24PM -0400, Steven M. Christey wrote:
[...]
> SLiM Simple Login Manager 1.3.0 includes places the X authority magic
                                  ^^^^^^^^^^^^^^^^
> cookie (mcookie) on the command line when invoking xauth from (1)
> app.cpp and (2) switchuser.cpp, which allows local users to access the
> X session by listing the process and its arguments.

It either "includes" or "places", but, I think, not both at the same
time ;))  "Places" sounds more natural to me, but it seems to be just
the matter of taste.
-- 
Eygene
