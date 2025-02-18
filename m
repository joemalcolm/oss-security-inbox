Received: (qmail 29925 invoked by uid 550); 18 Feb 2025 22:31:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29883 invoked from network); 18 Feb 2025 22:31:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=VTg6AVynp9
	S/U9SGa2VnbGKBT/C2wXcr4XUi4FgGjA0=; h=subject:to:date:from;
	d=openbsd.org; b=HugFz5AI1fZgI80699pNECA6aOvddXTYrbIAaphQc7mnyfhYWJEoS
	73/11yugx5rFuxg/DVYdtQdaqm37RYYTI/V7nfSdDuZHfcShQDhWA/Dmy0bi1Oxy9vIsud
	mQgvyjtzFo1kQ15Hay70EjoCaa6RvracLwx+e3SKr4wCm8hvu29FMGOjVNrIBh+Ne5R8kj
	LcmdIvEx0dzLl2rupOEeTj9RSOcW0hG9g3Sw/wRx5k5azldIg2usJm8WTEG7Kfiu14T4Iz
	elVfk8D+bB8BFbJxmZSwF19L5CP0B2IL0gFGa912E9pseOUgC9eh0PgWDNmu4b8KtQm1pa
	Go6vxzM3Q==
From: Damien Miller <djm@cvs.openbsd.org>
Date: Tue, 18 Feb 2025 15:30:59 -0700 (MST)
To: oss-security@lists.openwall.com
Message-ID: <f3c2a961c36d1833@cvs.openbsd.org>
Subject: [oss-security] Announce: OpenSSH 9.9p2 released

OpenSSH 9.9p2 has just been released. It will be available from the
mirrors listed at https://www.openssh.com/ shortly.

OpenSSH is a 100% complete SSH protocol 2.0 implementation and
includes sftp client and server support.

Once again, we would like to thank the OpenSSH community for their
continued support of the project, especially those who contributed
code or patches, reported bugs, tested snapshots or donated to the
project. More information on donations may be found at:
https://www.openssh.com/donations.html

Changes since OpenSSH 9.9p1
===========================

This release fixes two security bugs.

Security
========

* Fix CVE-2025-26465 - ssh(1) in OpenSSH versions 6.8p1 to 9.9p1
  (inclusive) contained a logic error that allowed an on-path
  attacker (a.k.a MITM) to impersonate any server when the
  VerifyHostKeyDNS option is enabled. This option is off by default.

* Fix CVE-2025-26466 - sshd(8) in OpenSSH versions 9.5p1 to 9.9p1
  (inclusive) is vulnerable to a memory/CPU denial-of-service related
  to the handling of SSH2_MSG_PING packets. This condition may be
  mitigated using the existing PerSourcePenalties feature.

Both vulnerabilities were discovered and demonstrated to be exploitable
by the Qualys Security Advisory team. We thank them for their detailed
review of OpenSSH.

For OpenBSD, fixes to these problems are available as errata; refer
to https://www.openbsd.org/errata.html
 
Bugfixes
========

 * ssh(1), sshd(8): fix regression in Match directive that caused
   failures when predicates and their arguments were separated by '='
   characters instead of whitespace (bz3739).

 * sshd(8): fix the "Match invalid-user" predicate, which was matching
   incorrectly in the initial pass of config evaluation.

 * ssh(1), sshd(8), ssh-keyscan(1): fix mlkem768x25519-sha256 key
   exchange on big-endian systems.

 * Fix a number of build problems on particular operating systems /
   configurations.

Checksums:
==========

 - SHA1 (openssh-9.9p2.tar.gz) = edefe960645780dee78059c444d4261667ad3056
 - SHA256 (openssh-9.9p2.tar.gz) = karbYD4IzChe3fll4RmdAlhfqU2ZTWyuW0Hhch4hVnM=

Please note that the SHA256 signatures are base64 encoded and not
hexadecimal (which is the default for most checksum tools). The PGP
key used to sign the releases is available from the mirror sites:
https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/RELEASE_KEY.asc

Reporting Bugs:
===============

- Please read https://www.openssh.com/report.html
  Security bugs should be reported directly to openssh@openssh.com


