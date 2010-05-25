X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/25/8
Message-ID: <2004764319.260691274810477782.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 25 May 2010 14:01:17 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: Re: kernel: btrfs: check for read permission on src file in the clone ioctl
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-1636

Thanks.

-- 
    JB


----- "Eugene Teo" <eugene@...hat.com> wrote:

> The existing [btrfs] code would have allowed you to clone a file that
> 
> was only open for writing. Not an expected behaviour.
> 
> Upstream commit:
> http://git.kernel.org/linus/5dc6416414fb3ec6e2825fd4d20c8bf1d7fe0395
> 
> Reference:
> https://bugzilla.redhat.com/show_bug.cgi?id=593226
> 
> I'm not requesting a CVE name for this as it did not affect any of Red
> 
> Hats' supported Linux kernels.
> 
> Thanks, Eugene
> -- 
> main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i);
> }
