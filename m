X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/11/4
Message-ID: <3b969e4e-2c02-9b18-c1a2-412b5b698548@linux.intel.com>
Date: Thu, 11 Oct 2018 13:30:33 -0700
From: Dave Hansen <dave.hansen@...ux.intel.com>
To: Solar Designer <solar@...nwall.com>, oss-security@...ts.openwall.com
Subject: Re: Linux kernel: "Meltdown leaks with Global kernel mapping"
Content-Type: text/plain; charset=utf-8

On 10/09/2018 04:41 AM, Solar Designer wrote:
> There are mentions of "r/w kernel text issue" and "unused hole" issue -
> is this why "two"?  But "r/w kernel text" feels irrelevant to Meltdown.

The description says:

> The current PTI code leaves the entire area of the kernel binary
> between '_text' and '_end' as Global (on non-PCID hardware).
> However, that range contains both read-write kernel data, and two
> "unused" holes in addition to text.

I said two issues because I saw two distinct problems:

1. 'read-write kernel data'
2. '"unused" holes'

Does that clear it up?
