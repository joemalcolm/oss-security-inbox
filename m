X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/1
Message-ID: <878q3bkg6s.fsf@complete.org>
Date: Sun, 01 Nov 2026 22:31:07 -0600
From: John Goerzen <jgoerzen@...plete.org>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in C-Kermit
Content-Type: text/plain; charset=utf-8

A recent code quality sweep and audit uncovered multiple vulnerabilities
in C-Kermit, some of which can lead to an RCE when working with a
malicious peer.  They have been condensed into 3 advisories, and are
awaiting CVE allocation.

The three are:

Remote code execution in C-Kermit
  https://github.com/OpenKermit/ckermit/security/advisories/GHSA-c5px-7h4c-gj8p

Auth bypass and TLS cert spoofing
  https://github.com/OpenKermit/ckermit/security/advisories/GHSA-5pc4-gh6q-5h4w

Arbitrary file write and safeguard bypass during file transfers
  https://github.com/OpenKermit/ckermit/security/advisories/GHSA-vhrv-7jrq-95qj

All are fixed in C-Kermit 11.1.515.  Due to the extensive corrective
work in that version, is is also possible that other vulnerabilities
were also corrected in that version without being immediately recognized
as such.

There is no safe version of C-Kermit; these go back to the original
C-Kermit from 1984 and its predecessor Unix Kermit from 1983.  The rest
have been present for around 20 years.

As context for integrators, C-Kermit is a communications suite that grew
out of its original serial file transfer protocol.  By the late 1990s,
it had gained capabilities as  general serial communications program, a
network client and server (telnet, HTTP, and FTP, etc).  However, its
most common use remains talking to embedded, legacy, and vintage systems
over serial lines.  Therefore, while some of these vulnerabilities are
exploitable by a malicious peer or MITM attacker, the vulnerabilities
are less likely to be encountered in the common use of C-Kermit.  In
particular, TLS/SSL has only rarely been used with C-Kermit, and the
only known IKSD (Kermit server) on the Internet today is already
patched.  Nevertheless, I don't want to under-estimate the importance of
a vulnerability, so I of course encourage upgrading to 11.1.515 or
above.

Full releases are available at:

https://github.com/OpenKermit/ckermit/releases

C-Kermit was originally a project of Columbia University.  When Columbia
canceled funding, they released it under an Open Source license.  One of
its founders, Frank da Cruz, continued to maintain it as a volunteer
project until 2025.  After Frank's retirement from the project, as it
was apparent no other maintainer was going to be active, I started the
Open Kermit project to continue maintenance of C-Kermit.

- John
