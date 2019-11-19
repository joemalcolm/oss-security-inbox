X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/19/5
Message-ID: <alpine.LRH.2.21.1911190904540.22622@fairfax.gathman.org>
Date: Tue, 19 Nov 2019 09:08:32 -0500 (EST)
From: "Stuart D. Gathman" <stuart@...hman.org>
To: oss-security@...ts.openwall.com
Subject: Re: Mitigating malicious packages in gnu/linux
Content-Type: text/plain; charset=utf-8

On Tue, 19 Nov 2019, Morten Linderud wrote:

> On Tue, Nov 19, 2019 at 01:33:48PM +0200, Georgi Guninski wrote:
>> * As end user what can I do to mitigate malicious packages?
>
> The answer to this is complicated.

... an excellent overview from Morten, recommended reading


My tidbit is that when starting with a new package, I run it in a 
virtual machine until my confidence begins to exceed the annoyance
of going through a VM (generally a year or so).  A container may be
sufficient for a non-root application.

-- 
 	      Stuart D. Gathman <stuart@...hman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.
