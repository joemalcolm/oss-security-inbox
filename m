X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/12/4
Message-ID: <CAF6rxgmK7Bpqw4rDOi=+eG57b--o23o2_TSZRQEMW9daUQqJLQ@mail.gmail.com>
Date: Tue, 12 Feb 2013 11:51:14 -0500
From: Eitan Adler <lists@...anadler.com>
To: oss-security@...ts.openwall.com
Cc: fw@...eb.enyo.de, cve-assign@...re.org
Subject: Re: Re: e1000e/82574L hardware erratum
Content-Type: text/plain; charset=utf-8

On 12 February 2013 11:42,  <cve-assign@...re.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>>It's been reported that some Intel 82574L network controllers can be
>>brought into a non-processing state by receiving certain Ethernet
>>frames:
>>
>><http://blog.krisk.org/2013/02/packets-of-death.html>
>>
>>The packet is not malformed at the lower layers and will travel over
>>the Internet.
>
> Use CVE-2013-1634.

It should be noted that this is motherboard specific.  In particular
only motherboard manufacturers that ignored Intel guidelines are
affected (acc' to intel).

Their official statement is here:
http://communities.intel.com/community/wired/blog/2013/02/07/intel-82574l-gigabit-ethernet-controller-statement


-- 
Eitan Adler
