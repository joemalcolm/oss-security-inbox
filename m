X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/01/10
Message-ID: <58d40b9e-35ab-6576-d190-774c869c2a58@redhat.com>
Date: Wed, 1 Mar 2017 17:57:23 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-10228: glibc iconv program can hang when invoked with the -c option
Content-Type: text/plain; charset=utf-8

The iconv program (not the iconv function) provided by glibc can hang 
(enter an infinite loop) when invoked with the -c option and an invalid 
multi-byte sequence is encountered in the input:

   https://sourceware.org/bugzilla/show_bug.cgi?id=19519

We have received an independent report of this issue, so we are treating 
this as a (minor) security bug now on the glibc upstream side.

(Note to Red Hat Product Security: We already have a couple of product 
bugs for this.)

Thanks,
Florian
