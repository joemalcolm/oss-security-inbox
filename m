X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/25/1
Message-ID: <20260825013131.GA20983@openwall.com>
Date: Tue, 25 Aug 2026 03:31:31 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Paul Eggert <eggert@...ucla.edu>
Subject: Re: CVE-2026-41992 gzip 1.14 out-of-bounds memory buffer access
Content-Type: text/plain; charset=utf-8

Hi,

Paul kindly brought this issue to linux-distros on July 25, but we
failed to handle it correctly, in two ways: we should have moved the
thread to the full distros list because gzip is not Linux-specific, and
we should have kept track of the proposed public disclosure date of
August 1st, when Paul's oss-security posting should have been made.

But better late than never, and now that I've published statistics for
July to the wiki I'm confident there are no more leftovers like this.

As to the actual issue:

On Sat, Aug 22, 2026 at 10:46:15PM -0700, Paul Eggert wrote:
> CVSS Base Score: medium
> 
> Affected versions: gzip 1.14 and earlier
> 
> Description: Out-of-bounds memory buffer access that can be triggered if a 
> single gzip -d instance decompresses specially crafted LZW data followed by 
> specially crafted LZH data.
> 
> Users are recommended to apply the following patch, or to install gzip 1.15 
> whenever it comes out:
> 
> --- gzip-1.14/unlzh.c	2024-08-09 15:06:03.000000000 -0700
> +++ gzip-1.14-CVE-2026-41992/unlzh.c	2026-08-22 22:26:05.384251837 -0700
> @@ -307,6 +307,12 @@
>  static void
>  huf_decode_start ()
>  {
> +    /* Needed in case LEFT and RIGHT are reused from a previous
> +       LZW decompression.  It may be overkill to clear all of both
> +       arrays, but nobody has had time to analyze this carefully.  */
> +    memzero (left, (2 * NC - 1) * sizeof *left);
> +    memzero (right, (2 * NC - 1) * sizeof *right);
> +
>      init_getbits();  blocksize = 0;
>  }
>  
> 
> Credits: Thanks to Michał Majchrowicz and to Elias Hasas for reporting the 
> problem and supplying fixes.

My current unconfirmed understanding is that triggering this requires
running gzip on two files in one invocation, not on one file (or stream)
with both kinds of data in it, and that the impact is an out-of-bounds
read likely leading to a crash.  Paul, is all of this correct?

Is a reproducer publicly available?  Perhaps two files and gzip command
line that would use them.

Thanks,

Alexander
