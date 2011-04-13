X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/13/1
Message-ID: <4DA4F1A0.8000004@redhat.com>
Date: Wed, 13 Apr 2011 08:43:12 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Timo Warns <warns@...-sense.de>
Subject: Re: CVE Request: kernel: fs/partitions: Corrupted GUID partition tables can cause kernel oops
Content-Type: text/plain; charset=utf-8

On 04/13/2011 05:53 AM, Timo Warns wrote:
> The Linux kernel automatically evaluates partition tables of storage
> devices. The code for evaluating EFI GUID partitions (in
> fs/partitions/efi.c) contains a bug that causes a kernel oops on certain
> corrupted GUID partition tables.
>
> A patch is available at
> http://www.spinics.net/lists/mm-commits/msg83274.html

Please use CVE-2011-1577.

Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
