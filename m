X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/06/18
Message-ID: <1017653588.507851.1307383387915.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 6 Jun 2011 14:03:07 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: pam_ssh not dropping root gid(s)
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hi,
> 
> In certain configs, pam_ssh is not completely dropping its privileges to
> user. It just forgets to call setgid() and initgroups(). A fix can be
> found at [1].  Can someone assign a CVE?
> 
> thx,
> Sebastian
> 
> [1] https://bugzilla.novell.com/show_bug.cgi?id=665061
> 

Is this a security flaw? From doing a little ssh-agent research, it sounds
harmless without another flaw. I'm not terribly familiar with it though, so
I could be missing something.

Thanks.

-- 
    JB
