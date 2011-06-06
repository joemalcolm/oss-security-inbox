X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/06/6
Message-ID: <4DECED00.5040205@redhat.com>
Date: Mon, 06 Jun 2011 17:06:40 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: Sebastian Krahmer <krahmer@...e.de>
CC: oss-security@...ts.openwall.com
Subject: Re: CVE request: pam_ssh not dropping root gid(s)
Content-Type: text/plain; charset=utf-8

Hello, Sebastian,

   thanks for the report.

On 06/06/2011 11:26 AM, Sebastian Krahmer wrote:
> Hi,
>
> In certain configs, pam_ssh is not completely dropping its privileges
> to user. It just forgets to call setgid() and initgroups(). A fix can be found at [1].
> Can someone assign a CVE?
>
> thx,
> Sebastian
>
> [1] https://bugzilla.novell.com/show_bug.cgi?id=665061

Unfortunately not able to access this entry. Would it be possible to 
make it public? (for further details & CVE assignment). Or will be
access granted per email address approach necessary?

Thank you & Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

>

