X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/28/10
Message-ID: <20131128114149.GA31082@lorien.valinor.li>
Date: Thu, 28 Nov 2013 12:41:49 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: team@...urity.debian.org
Subject: CVE Request: adequate: privilege escalation via tty hijacking
Content-Type: text/plain; charset=utf-8

Hi Kurt,

I would like to request a CVE for an issue with 'adequate':

 http://bugs.debian.org/730691 (adequate: privilege escalation via tty
 hijacking):

----cut---------cut---------cut---------cut---------cut---------cut-----
Package: adequate
Version: 0.4
Severity: serious
Tags: security
Justification: user security hole

If root uses the --user option, then the user can hijack the tty with
the 
TIOCSTI ioctl.

This is similar to CVE-2005-4890.

-- 
Jakub Wilk
----cut---------cut---------cut---------cut---------cut---------cut-----

Fix for this was commited at:

 https://bitbucket.org/jwilk/adequate/commits/94e5fc5d810057bffb673501ed809f7c2dabd9ee

Could a CVE be assigned to this issue?

Regards,
Salvatore
