Received: (qmail 31973 invoked by uid 550); 19 Jul 2023 14:40:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31933 invoked from network); 19 Jul 2023 14:40:53 -0000
From: Damien Miller <djm@cvs.openbsd.org>
Date: Wed, 19 Jul 2023 08:40:40 -0600 (MDT)
To: oss-security@lists.openwall.com
Message-ID: <e9c022742fc07cee@cvs.openbsd.org>
Subject: [oss-security] Announce: OpenSSH 9.3p2 released

OpenSSH 9.3p2 has just been released. It will be available from the
mirrors listed at https://www.openssh.com/ shortly.

OpenSSH is a 100% complete SSH protocol 2.0 implementation and
includes sftp client and server support.

Once again, we would like to thank the OpenSSH community for their
continued support of the project, especially those who contributed
code or patches, reported bugs, tested snapshots or donated to the
project. More information on donations may be found at:
https://www.openssh.com/donations.html

Changes since OpenSSH 9.3
=========================

This release fixes a security bug.

Security
========

Fix CVE-2023-38408 - a condition where specific libaries loaded via
ssh-agent(1)'s PKCS#11 support could be abused to achieve remote
code execution via a forwarded agent socket if the following
conditions are met:

* Exploitation requires the presence of specific libraries on
  the victim system.
* Remote exploitation requires that the agent was forwarded
  to an attacker-controlled system.

Exploitation can also be prevented by starting ssh-agent(1) with an
empty PKCS#11/FIDO allowlist (ssh-agent -P '') or by configuring
an allowlist that contains only specific provider libraries.

This vulnerability was discovered and demonstrated to be exploitable
by the Qualys Security Advisory team. 
 
In addition to removing the main precondition for exploitation,
this release removes the ability for remote ssh-agent(1) clients
to load PKCS#11 modules by default (see below).

Potentially-incompatible changes
--------------------------------

 * ssh-agent(8): the agent will now refuse requests to load PKCS#11
   modules issued by remote clients by default. A flag has been added
   to restore the previous behaviour "-Oallow-remote-pkcs11".

   Note that ssh-agent(8) depends on the SSH client to identify
   requests that are remote. The OpenSSH >=8.9 ssh(1) client does
   this, but forwarding access to an agent socket using other tools
   may circumvent this restriction.

Checksums:
==========

- SHA1 (openssh-9.3p2.tar.gz) = 219cf700c317f400bb20b001c0406056f7188ea4
- SHA256 (openssh-9.3p2.tar.gz) = IA6+FH9ss/EB/QzfngJEKvfdyimN/9n0VoeOfMrGdug=

Please note that the SHA256 signatures are base64 encoded and not
hexadecimal (which is the default for most checksum tools). The PGP
key used to sign the releases is available from the mirror sites:
https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/RELEASE_KEY.asc

Reporting Bugs:
===============

- Please read https://www.openssh.com/report.html
  Security bugs should be reported directly to openssh@openssh.com


