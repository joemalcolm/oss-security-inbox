X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/27/7
Message-ID: <CAOSRhRMb5htcjczxk5WaE-0EQxTLO1o_KZz=HRFik4nKthi4mg@mail.gmail.com>
Date: Thu, 27 Oct 2011 16:58:18 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- kernel: sysctl: restrict write access to dmesg_restrict
Content-Type: text/plain; charset=utf-8

>>
>> I also agree with Vasiliy's point that LXC security boundaries in the
>> mainline kernel are not well defined at this point, so the whole thing
>> is a bit silly.
>
> Just wondering - do you usually ack patches that you consider silly?
>

Just because a patch doesn't fix an immediate problem right now
doesn't mean it isn't the right thing to do.  For consistency's sake,
it makes sense that it should require CAP_SYS_ADMIN to modify this
sysctl, and it's certainty not a bad idea to move towards a more
well-defined security boundary for LXC for the future.  That's why I
ack'ed the patch.  I simply meant that assigning a CVE for this case
was silly because it doesn't represent a violation of a real security
boundary.

-Dan
