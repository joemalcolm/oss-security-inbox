X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/30/10
Message-ID: <1762732498.4418861.1367364508771.JavaMail.root@redhat.com>
Date: Tue, 30 Apr 2013 19:28:28 -0400 (EDT)
From: David Jorm <djorm@...hat.com>
To: oss-security@...ts.openwall.com, kseifried@...hat.com
Subject: Re: Re-emergence of CVE-2008-4796 in Nagios current
Content-Type: text/plain; charset=utf-8

> CVE-2008-4796 snoopy: command execution via shell metacharacters
> 
> Was found in Nagios core by Grant Murphy.
> 
> Filed upstream: http://tracker.nagios.org/view.php?id=449
> 
> We really need to start thinking about ways to find vulnerable copies
> of code and fixing them everywhere people have embedded them.

Debian uses clonewise:

https://github.com/silviocesare/Clonewise

It is the best solution I've seen so far. It's been on my TODO list forever and a day to get it running for Fedora.

David
