X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/03/7
Message-ID: <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
Date: Fri, 3 Feb 2017 11:29:20 +0000
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read
Content-Type: text/plain; charset=utf-8

On 03/02/17 05:52, Wade Mealing wrote:
> Mounting a crafted EXT4 image read-only leads to a memory corruption and
> SLAB-Out-of-Bounds Reads (according to KASAN).  Since the mounting
> procedure is a privileged operation, an attacker is probably not able
> to trigger this vulnerability on the commandline.
> Instead the automatic mounting feature of the GUI via a crafted
> USB-device is required.
> 
> From full disclosure at:
> 
> http://seclists.org/fulldisclosure/2016/Nov/75
> 
> If it has been assigned elsewhere, I am unable to see it.

The bugzilla link from the above isn't accessible.  Are we missing any
useful information?


jch
