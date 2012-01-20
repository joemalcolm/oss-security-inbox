X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/20/10
Message-ID: <4725110.8qjRCcY8di@devil>
Date: Fri, 20 Jan 2012 09:42:20 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: spamdyke buffer overflow vulnerability
Content-Type: text/plain; charset=utf-8

According to secunia advisory:
https://secunia.com/advisories/47548/ :
Description:

Some vulnerabilities have been reported in spamdyke, which potentially can be 
exploited by malicious people to compromise a vulnerable system.

The vulnerabilities are caused due to boundary errors related to the incorrect 
use of the "snprintf()" and "vsnprintf()" functions, which can be exploited to 
cause buffer overflows.

The vulnerabilities are reported in versions prior to 4.3.0.


Solution
Update to version 4.3.0.


and from upstream changelog:
http://www.spamdyke.org/documentation/Changelog.txt :

Fixed a number of very serious errors in the usage of snprintf()/vsnprintf().
    The return value was being used as the length of the string printed into
    the buffer, but the return value really indicates the length of the string
    that *could* be printed if the buffer were of infinite size. Because the
    returned value could be larger than the buffer's size, this meant remotely
    exploitable buffer overflows were possible, depending on spamdyke's
    configuration.

and from upstream mailing list:
http://www.mail-archive.com/spamdyke-release@spamdyke.org/msg00014.html

it also fixes a series of major bugs 
that could lead to buffer overflows.  Depending on spamdyke's configuration, 
these could cause remotely exploitable security holes.  Please upgrade 
immediately!

Please assign a CVE

-- 
Agostino Sarubbo		ago -at- gentoo.org
Gentoo/AMD64 Arch Security Liaison
GPG: 0x7CD2DC5D

Download attachment "signature.asc" of type "application/pgp-signature" (491 bytes)
