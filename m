X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/23/7
Message-ID: <53CFA4C6.4090205@redhat.com>
Date: Wed, 23 Jul 2014 14:04:22 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: [CVE request] Array allocation fixes in libgfortran
Content-Type: text/plain; charset=utf-8

Janne Blomqvist fixed several CVE-2002-0391-style integer overflows in 
array allocation in libgfortran, the run-time support library for the 
Fortran compiler which is part of the GNU Compiler Collection.  The 
upstream Subversion commit is here:

 
<https://gcc.gnu.org/viewcvs/gcc?limit_changes=0&view=revision&revision=211721>

These changes will be part of the next version of GCC (whose version 
number is still to be decided).

I think this warrants a CVE assignment.

-- 
Florian Weimer / Red Hat Product Security
