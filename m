X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/23/1
Message-ID: <17C874D1-EAF8-41E2-91EC-DEE13D8290D2@nsc.liu.se>
Date: Sat, 23 Jun 2018 17:48:14 +0200
From: Peter Kjellström <cap@....liu.se>
To: Michael Ellerman <mpe@...erman.id.au>
CC: oss-security@...ts.openwall.com,Solar Designer <solar@...nwall.com>
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

On Fri, 22 Jun 2018 14:08:03 +1000
Michael Ellerman <mpe@...erman.id.au> wrote:

> Solar Designer <solar@...nwall.com> writes:
> > On Thu, Jun 21, 2018 at 01:54:16PM +0200, Sven Schwedas wrote:  
> >> On 2018-06-21 12:28, Lukas Odzioba wrote:  
...
> > On a related note, attached is a generic Linux /proc/cpuinfo parser
> > I  
> 
> I guess by "generic" you mean Intel & AMD? :)
> 
> It won't work on powerpc, or arm, or arm64 ...
> 
> You should be able to determine all of the info you need from the
> sysfs topology files, which work across arches.
> 
> See the script below for example, which shows CPUs grouped by core.
...

This is sliding OT a bit I guess, but may I suggest the fairly mature
hwloc (used by many projects in need of numa/core/smt topology):

https://www.open-mpi.org/projects/hwloc/

 $ lstopo

/Peter K
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
