X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/27/3
Message-ID: <4E07F77C.7070301@redhat.com>
Date: Mon, 27 Jun 2011 11:22:36 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Dan Rosenberg <dan.j.rosenberg@...il.com>
Subject: Re: CVE request: kernel: remote buffer overflow in bluetooth
Content-Type: text/plain; charset=utf-8

On 06/25/2011 07:15 AM, Dan Rosenberg wrote:
> A remote user can provide a small value for the command size field in
> the command header of an l2cap configuration request, resulting in an
> integer underflow when subtracting the size of the configuration request
> header.  This results in copying a very large amount of data via
> memcpy() and destroying the kernel heap. [1]
> 
> -Dan
> 
> [1] http://marc.info/?l=linux-kernel&m=130891911909436&w=2

Please use CVE-2011-2497.

Eugene
