X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/08/8
Message-ID: <20141008110759.68af90b7@pc>
Date: Wed, 8 Oct 2014 11:07:59 +0200
From: Hanno Böck <hanno@...eck.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: openssh on linux rce in sftp-only mode
Content-Type: text/plain; charset=utf-8

This seems CVE-worthy:
http://seclists.org/fulldisclosure/2014/Oct/35

Quote:
"OpenSSH lets you grant SFTP access to users without allowing full
command execution using "ForceCommand internal-sftp". However, if you
misconfigure the server and don't use ChrootDirectory, the user will be
able to access all parts of the filesystem that he has access to -
including procfs. On modern Linux kernels (>=2.6.39, I
think), /proc/self/maps reveals the memory layout and /proc/self/mem
lets you write to arbitrary memory positions. Combine those and you get
easy RCE."

It involves a number of issues coming together, however in the end it
is an RCE with a legit configuration.

Changelog:
http://www.openssh.com/txt/release-6.7
 * sftp-server(8): On platforms that support it, use prctl() to
   prevent sftp-server from accessing /proc/self/{mem,maps}

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
