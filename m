X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/10/2
Message-ID: <48759F2E.1020406@redhat.com>
Date: Thu, 10 Jul 2008 13:33:34 +0800
From: Eugene Teo <eteo@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: DNS vulnerability: other relevant software
Content-Type: text/plain; charset=utf-8

Florian Weimer wrote:
> * Mark J. Cox:
> 
>>> Additionally, Debian has noted (DSA 1605-1) that the GNU libc stub
>>> resolver could benefit from random query source ports as well, but
>>> no patches are currently available to implement this:
>> Note that GNU libc stub resolver when used with a recent kernel
>> (2.6.24+) will give you random UDP source ports on each request
>> because of this Linux commit:
>>
>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=32c1da70810017a98aa6c431a5494a302b6b9a30
> 
> Is net_random() cryptographically secure?  The paper referenced in the
> source doesn't talk about this.

It isn't. It's actually a 32-bit pseudo-random number generator AFAIK.
Hmm.

Eugene
