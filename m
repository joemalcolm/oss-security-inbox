X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/06/13
Message-ID: <52F3D571.6080806@redhat.com>
Date: Thu, 06 Feb 2014 19:33:21 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Linux kernel: SELinux local DoS
Content-Type: text/plain; charset=utf-8

On 02/06/2014 06:44 PM, P J P wrote:

> Linux kernel built with the NSA SELinux Support(CONFIG_SECURITY_SELINUX)
> is vulnerable to a crash caused by an empty SELinux security context.
> When a file has an empty security context, listing it via 'ls(1)' could
> trigger this crash. Only user/processes with CAP_MAC_ADMIN privileges
> are allowed to set the SELinux security context of a file.

Note that this also affects systems providing facilities which allow 
unprivileged users to mount crafted file systems.  Some of these 
services do not require physical access to the machine to trigger file 
system mounting.

-- 
Florian Weimer / Red Hat Product Security Team
