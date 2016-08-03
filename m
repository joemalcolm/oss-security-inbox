X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/03/6
Message-ID: <f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>
Date: Wed, 3 Aug 2016 09:27:00 +0200
From: Daniel J Walsh <dwalsh@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: cve request: systemd-machined: information exposure for docker containers
Content-Type: text/plain; charset=utf-8



On 08/01/2016 12:24 PM, Shiz wrote:
>> On 28 Jul 2016, at 16:42, Simon McVittie <smcv@...ian.org> wrote:
>>
>> *Which* unprivileged user processes?
>>
>> If the unprivileged user processes are not in a container, they can get a
>> significant amount of the same information by reading the host's /proc.
> Except if a host is running with hidepid={1,2}, which is not entirely uncommon
> especially in hardened systems. In that regard it /does/ qualify as infoleak.
>
> - Shiz
Then simply rpm -e oci-register-machine

