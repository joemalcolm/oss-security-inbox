X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/03/14
Message-ID: <538DD8BF.7060708@upv.es>
Date: Tue, 03 Jun 2014 16:16:31 +0200
From: Hector Marco <hecmargi@....es>
To: fulldisclosure@...lists.org
CC: oss-security@...ts.openwall.com, bugtraq@...urityfocus.com, advisories <advisories@...xperts.de>, bugs@...uritytracker.com
Subject: Bug in bash <= 4.3 [security feature bypassed]
Content-Type: text/plain; charset=utf-8

Hi everyone,

Recently we discovered a bug in bash. After some time after reporting
it to bash developers, it has not been fixed.

We think that this is a security issue because in some circumstances
the bash security feature could be bypassed allowing the bash to be a
valid target shell in an attack.

We strongly recommend to patch your bash code.

Why don't fix this bug by simple adding mandatory "if" clause ?
Any comments about this issue are welcomed.


Details at:
http://hmarco.org/bugs/bash_4.3-setuid-bug.html



Thanks you,

Hector Marco
http://hmarco.org
