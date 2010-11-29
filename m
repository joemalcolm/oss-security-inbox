X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/29/1
Message-ID: <4CF3B7B7.7050906@redhat.com>
Date: Mon, 29 Nov 2010 22:24:55 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Josh Bressers <bressers@...hat.com>, coley <coley@...re.org>
Subject: Re: CVE request: kernel: Multiple DoS issues in block layer
Content-Type: text/plain; charset=utf-8

>> 2. By submitting certain I/O requests with 0 length, a local user could
>> cause a kernel panic:
>>
>> http://git.kernel.org/?p=linux/kernel/git/axboe/linux-2.6-block.git;a=commit;h=9284bcf4e335e5f18a8bc7b26461c33ab60d0689
>>
>
> Use CVE-2010-4163

Not a complete patch, need this too:
https://patchwork.kernel.org/patch/363282/

Eugene
