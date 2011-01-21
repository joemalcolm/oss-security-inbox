X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/21/3
Message-ID: <AANLkTimwAq7aVW4X_q_dr52nbt8fotHNhnyxpsoRHRqa@mail.gmail.com>
Date: Fri, 21 Jan 2011 17:36:53 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: Vasiliy Kulikov <segoon@...nwall.com>
Cc: oss-security@...ts.openwall.com,  "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: [PATCH] acpi: debugfs: fix buffer overflows, double free
Content-Type: text/plain; charset=utf-8

> On Fri, Jan 21, 2011 at 11:46 +0800, Eugene Teo wrote:
>> On 01/21/2011 04:08 AM, Vasiliy Kulikov wrote:
>> >File position is not controlled, it may lead to overwrites of arbitrary
>> >kernel memory.  Also the code may kfree() the same pointer multiple
>> >times.
>>
>> http://lkml.org/lkml/2011/1/20/348
>> https://bugzilla.redhat.com/CVE-2011-0023
>>
>> Please use CVE-2011-0023 (this does not include the unresolved flaw
>> described in the following paragraph below).
>>
>> >One more flaw is still present: if multiple processes open the file then
>> >all 3 static variables are shared, leading to various race conditions.
>> >They should be moved to file->private_data.
>
> Since ed3aada1bf34c this file is available to root only.  This may be
> exploited if and only if the file is chmod'ed/chown/ed to nonroot.

That upstream commit has an associated CVE name already. If we take
that into consideration, then this shouldn't be security relevant. I
will reject CVE-2011-0023.

Thanks, Eugene
