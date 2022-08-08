X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/08/7
Message-ID: <2e838ffb-2a57-79ff-812c-3baf554e22f9@redhat.com>
Date: Mon, 8 Aug 2022 17:58:17 +0200
From: David Hildenbrand <david@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2022-2590: Linux kernel: Modifying shmem/tmpfs files without write permissions
Content-Type: text/plain; charset=utf-8

On 08.08.22 09:18, David Hildenbrand wrote:
> Hi,
> 
> I found a security issue (CVE-2022-2590) in the Linux kernel similar to
> Dirty COW (CVE-2016-5195), however, restricted to shared memory (shmem /
> tmpfs). I notified distributions one week ago and the embargo ended today.

I forgot to add an important part: Nadav Amit raised [1] that the dirty
bit is possibly problematic and essentially participated to the
discovery of this security issue.

s/I found/Nadav and I found/

Credit where credit is due.

[1] https://lore.kernel.org/all/20220619233449.181323-4-namit@vmware.com/

-- 
Thanks,

David / dhildenb

