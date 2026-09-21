X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/8
Message-Id: <483CCEF8-5A86-4432-A798-73A424683A5B@stig.io>
Date: Mon, 21 Sep 2026 19:21:07 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93012: Email::Sender::Transport::Sendmail versions before 2.602 for Perl allow arbitrary command execution on Windows sending a message whose envelope address reaches the shell in _sendmail_pipe
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93012                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93012

  Distribution:  Email-Sender
      Versions:  before 2.602
      MetaCPAN:  https://metacpan.org/dist/Email-Sender
      VCS Repo:  https://github.com/rjbs/Email-Sender


Email::Sender::Transport::Sendmail versions before 2.602 for Perl allow
arbitrary command execution on Windows sending a message whose envelope
address reaches the shell in _sendmail_pipe

Description
-----------
Email::Sender::Transport::Sendmail versions before 2.602 for Perl allow
arbitrary command execution on Windows sending a message whose envelope
address reaches the shell in _sendmail_pipe.

On MSWin32 the envelope sender and every recipient go into a single
command string, which open() passes to a shell. Every other platform
gets the list form, which runs sendmail directly. When the caller
supplies no envelope, Email::Sender::Simple takes the recipients from
the To and Cc headers and the sender from the From header.

An attacker who controls one of those header addresses runs commands as
the sending process.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
  Command ('OS Command Injection')

Workarounds
-----------
For Windows deployments that cannot upgrade to Email-Sender 2.602, use
a transport that does not build a command line, such as
Email::Sender::Transport::SMTP.

Solutions
---------
Upgrade to Email-Sender 2.602 or later.

References
----------
https://github.com/rjbs/Email-Sender/commit/9a587bc9ff4edae13239190c2651da2c76b1e72c.patch
https://metacpan.org/release/RJBS/Email-Sender-2.602/changes

Timeline
--------
- 2026-09-21: Version 2.602 released with fix.


