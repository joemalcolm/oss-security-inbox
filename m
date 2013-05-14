X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/05/14/10
Message-id: <154e78e4-3300-493e-96ca-390725a122fb@me.com>
Date: Tue, 14 May 2013 16:59:57 +0000 (GMT)
From: "Larry W. Cashdollar" <larry0@...com>
To: Open Source Security <oss-security@...ts.openwall.com>
Subject: Remote command Injection in Creme Fraiche 0.6 Ruby Gem
Content-Type: text/plain; charset=utf-8

TITLE: Remote command Injection in Creme Fraiche 0.6 Ruby Gem

DATE: 5/14/2013

AUTHOR: Larry W. Cashdollar (@_larry0)

DOWNLOAD: http://rubygems.org/gems/cremefraiche, http://www.uplawski.eu/technology/cremefraiche/

DESCRIPTION: Converts Email to PDF files.

VENDOR: Notifed on 5/13/2013, provided fix 5/14/2013

FIX: In ﻿Version 0.6.1

CVE: TBD (please assign?)

DETAILS: The following lines pass unsanitized user input directly to the command line.
A malicious email attachment with a file name consisting of shell metacharacters could inject commands into the shell.

If the attacker is allowed to specify a filename (via a web gui) commands could be injected that way as well.

218 cmd = "pdftk %s updateinfo %s output %s" %[pdf, infofile, tfile] 219 @log.debug('pdftk-command is ' << cmd) 220 pdftkresult = system( cmd)

GREETINGS: @vladz,@quine,@BrandonTansey,@sushidude,@jkouns,@sub_space and @attritionorg

ADVISORY: http://vapid.dhs.org/advisories/cremefraiche-cmd-inj.html
Content of type "text/html" skipped
