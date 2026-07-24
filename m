X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/22
Message-ID: <9d2046db-61e3-4ace-9a2a-30989c42c646@oracle.com>
Date: Fri, 24 Jul 2026 08:24:30 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

On 7/24/2026 3:20 AM, John Haxby wrote:
> And I don't care if you say you have a kernel with a formal proof -- you'll still have bugs in somewhere in the application stack.
Or in the hardware its run on - formal proofs didn't defend from Spectre
and Meltdown when we all learned that CPUs did things differently than
our models of them assumed they did, and the proof of an OS is unlikely
to cover all the code running in the firmware of the underlying devices.

-- 
	-Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

