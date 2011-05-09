X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/09/5
Message-ID: <876933418.119306.1304965531432.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 9 May 2011 14:25:31 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: Re: CVE request -- virt-v2v: vnc password protection is missing after	vm conversion
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hello Steve, vendors.
> 
> Description:
> It was found that after virtual machine conversion using virt-v2v the
> target VM does not have VNC password enabled even though the source VM
> does.  An attacker able to connect to the target VM can possibly use this
> flaw to operate the VM with privileges of the logged in user.
> 
> References:
> https://bugzilla.redhat.com/show_bug.cgi?id=702754
> 
> Could you please allocate a CVE identifier for this issue?
> 

Please use CVE-2011-1773

Thanks.

-- 
    JB
