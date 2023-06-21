X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/06/21/5
Message-ID: <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
Date: Thu, 22 Jun 2023 01:44:04 +1000 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: CVE-2023-31975: memory leak in yasm
Content-Type: text/plain; charset=utf-8

On Wed, 21 Jun 2023, Jeffrey Walton wrote:

> Memory leaks on exit are par for the course in GNU software per
> https://www.gnu.org/prep/standards/standards.html#Memory-Usage .

Don't bother with this, don't bother with that, etc...  Call me old-school 
(which I am), but I cannot abide sloppy programming[*].

At the risk of starting a culture war, that is one of the reasons why I 
avoid GNU libraries whenever possible.

[*]
And don't even mention "AI-generated code".

-- Dave
