X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/20/4
Message-ID: <4F6881C9.4060906@redhat.com>
Date: Tue, 20 Mar 2012 21:10:33 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request -- kernel: execshield: predictable ascii armour base address
Content-Type: text/plain; charset=utf-8

On 03/20/2012 06:20 PM, Petr Matousek wrote:
> When running a binary with a lot of shared libraries, predictable base
> address is used for one of the loaded libraries.
> 
> This flaw could be used to bypass ASLR.
> 
> References:
> http://scarybeastsecurity.blogspot.com/2012/03/some-random-observations-on-linux-aslr.html
> https://bugzilla.redhat.com/show_bug.cgi?id=804947

Use CVE-2012-1568.

Eugene
