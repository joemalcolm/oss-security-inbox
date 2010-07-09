X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/09/5
Message-ID: <4C36B7F0.6020700@kernel.sg>
Date: Fri, 09 Jul 2010 13:47:28 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: Dan Rosenberg <dan.j.rosenberg@...il.com>
Subject: Re: kernel: gfs2 acl issue
Content-Type: text/plain; charset=utf-8

On 07/09/2010 11:56 AM, Dan Rosenberg wrote:
> To elaborate on the issue: the gfs2 filesystem in 2.6.32 kernels
> currently allows any user to set arbitrary ACLs for files they do not
> own, essentially granting full access to everything.  The source of
> this problem also caused other misbehavior of ACLs.  This fix resolved
> the issue for 2.6.33, but it was not backported, so 2.6.32 remains
> vulnerable.

Thanks Dan. I have informed Greg about 2.6.32.y. FWIW, 2.6.{33,34}.y are 
not affected.

Eugene

> On Thu, Jul 8, 2010 at 11:47 PM, Eugene Teo<eugeneteo@...nel.sg>  wrote:
>> Upstream commit 2646a1f6 (2.6.33-rc1) fixed an interesting gfs2 acl issue
>> late last year. Thanks Dan Rosenberg for informing us about this.
>>
>> http://git.kernel.org/linus/2646a1f61a3b5525914757f10fa12b5b94713648
>>
>> I didn't request a CVE name for this but if you need one, ping Steve.
>>
>> Thanks, Eugene
>> --
>> main(i) { putchar(182623909>>  (i-1) * 5&31|!!(i<7)<<6)&&  main(++i); }
>>


-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
