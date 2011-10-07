X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/07/3
Message-ID: <4E8EC67B.60201@redhat.com>
Date: Fri, 07 Oct 2011 14:59:31 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: akuster <akuster@...sta.com>
CC: oss-security@...ts.openwall.com
Subject: Re: kexec-tools: Multiple security flaws by management of kdump core files and ramdisk images
Content-Type: text/plain; charset=utf-8

On 10/05/2011 10:09 PM, akuster wrote:
> What version does this affect ?

My mail should have been more verbose earlier. sorry for that!

The flaw exists in the set of shell scripts, shipped with Red Hat 
Enterprise Linux and Fedora kexec-tools packages.

(kdump.init and mkdumprd, more specifically)

I am not sure what other distros. ship these scripts.



-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
