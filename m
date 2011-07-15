X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/15/5
Message-ID: <20110715104927.GA22533@dztty>
Date: Fri, 15 Jul 2011 11:49:27 +0100
From: Djalal Harouni <tixxdz@...ndz.org>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2011-1764 Exim: DKIM Format String
Content-Type: text/plain; charset=utf-8

A format string vulnerability affects the Exim SMTP server with DomainKeys
Identified Mail (DKIM) support, version between 4.70 and 4.75. The DKIM
logging mechanism did not use format string specifiers when logging some
parts of the DKIM-Signature header field. A remote attacker who is able
to send emails, can exploit this vulnerability and execute arbitrary
code with the privileges of the Exim daemon [1].

MITRE assigned CVE-2011-1764 to this vulnerability but the entry was not
updated [2]. We would appreciate if it can be updated, we are using this
CVE name in one of our new Nmap scripts smtp-vuln-cve2011-1764.nse [3].

Thanks.

[1] http://thread.gmane.org/gmane.mail.exim.devel/4946
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=2011-1764
[3] http://seclists.org/nmap-dev/2011/q3/221

-- 
tixxdz
http://opendz.org
