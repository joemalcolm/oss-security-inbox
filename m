X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/21/14
Message-ID: <CABqVa3-YDpT4-BWCrt5Zo3qu4_o=XBhQn=5eWBM=zomUoFW-rg@mail.gmail.com>
Date: Mon, 21 Nov 2011 09:15:42 -0700
From: Kurt Seifried <kurt@...fried.org>
To: oss-security@...ts.openwall.com
Subject: Re: kernel: hfs: add sanity check for file name length
Content-Type: text/plain; charset=utf-8

On Sun, Nov 20, 2011 at 11:04 PM, Eugene Teo <eugene@...hat.com> wrote:
> https://lkml.org/lkml/2011/11/9/303
> https://bugzilla.redhat.com/show_bug.cgi?id=755431
> http://git.kernel.org/linus/bc5b8a9003132ae44559edd63a1623
>
> On a corrupted file system the ->len field could be wrong leading to a
> buffer overflow.
>
> Thanks, Eugene
>

Please use CVE-2011-4330 for this issue.

-- 
Kurt Seifried
kurt@...fried.org
