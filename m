X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/10/2
Message-ID: <alpine.BSF.2.21.9999.1808100926020.19950@aneurin.horsfall.org>
Date: Fri, 10 Aug 2018 09:29:05 +1000 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: oss-security@...ts.openwall.com
Subject: Re: Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)
Content-Type: text/plain; charset=utf-8

On Thu, 9 Aug 2018, Stiepan wrote:

> Could you please provide some more details on the issue? About the same 
> period, our secure e-mail provider suffered an unprecedented DDoS with 
> some e-mail messages never reaching us.

Would this be the well-known TCP re-assembly bug?  Send lots of small 
packets (say out of order), and the CPU spends most of its time in glueing 
them back together.

-- Dave
