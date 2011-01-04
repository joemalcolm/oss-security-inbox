X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/04/4
Message-ID: <4D22EEAE.205@redhat.com>
Date: Tue, 04 Jan 2011 17:55:58 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Thomas Biege <thomas@...e.de>
Subject: Re: CVE request: kernel: Multiple DoS issues in block layer
Content-Type: text/plain; charset=utf-8

On 11/30/2010 02:38 PM, Thomas Biege wrote:
> Am Dienstag 30 November 2010 05:58:38 schrieb Eugene Teo:
>> On 11/29/2010 10:24 PM, Eugene Teo wrote:
>>>>> 2. By submitting certain I/O requests with 0 length, a local user could
>>>>> cause a kernel panic:
>>>>>
>>>>> http://git.kernel.org/?p=linux/kernel/git/axboe/linux-2.6-block.git;a=c
>>>>> ommit;h=9284bcf4e335e5f18a8bc7b26461c33ab60d0689
>>>>
>>>> Use CVE-2010-4163
>>>
>>> Not a complete patch, need this too:
>>> https://patchwork.kernel.org/patch/363282/
>>
>> Has anyone released an update with the regression? If so, we probably
>> need a new CVE name for this.
>
> No. :)

Looks like Mitre went to assign this with one anyway - CVE-2010-4668.

Eugene
