X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/17/2
Message-ID: <4D5C83F3.7010800@redhat.com>
Date: Thu, 17 Feb 2011 10:12:03 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Petr Matousek <pmatouse@...hat.com>, coley@...us.mitre.org
Subject: Re: CVE request -- kernel: deficiency in processing igmp host membership reports in br_multicast
Content-Type: text/plain; charset=utf-8

On 02/17/2011 08:09 AM, Petr Matousek wrote:
> "It was found that executing bridge snooping code triggered by host
> originated IGMP packets could cause corruption in 512-byte slabs,
> most commonly leading to crashes in jbd2. This could be possibly
> exploited by local unprivileged user to crash the host (DoS)."
>
> References:
> https://bugzilla.redhat.com/show_bug.cgi?id=678169
> http://git.kernel.org/?p=linux/kernel/git/davem/net-2.6.git;a=commitdiff;h=6b0d6a9b4296fa16a28d10d416db7a770fc03287

Please use CVE-2011-0716.

Eugene
