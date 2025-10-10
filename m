Received: (qmail 19759 invoked by uid 550); 10 Oct 2025 08:35:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19690 invoked from network); 10 Oct 2025 08:35:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=I9pZe3RDug
	5mq36H2z30tXoVA957DUl25fn8XxzjCgk=; h=subject:to:date:from;
	d=openbsd.org; b=WFNUbC/5mnnXrq+ldm5cncBb2Lsjj3RUTh7nuXuBSG9y3OFCstRrs
	u/NE8xVw3hW/Tc4tNWUj1l8onvz96hnvaCbDWg0SC3dE0tcDwMBgVF7FaX2ubRUU4LV1+f
	UTT4mtA3KrUUFgFHXKAjVkpWmczfuc3VusU0xiripi1cdm4AfzaadkNx7tOTJMiTZGOhVE
	GA2U1Dnqi39faQUurN25KT7ZZR7BY594fNTHJk5y+96NbZPW3XYJKZINx6OAH1tfo9h96b
	4PYQWDDM5N8eiXFPjmQyBdI/mrwV7GX/uNK4SZfuA2vsn1H0d7pEvlrebjIG3Vo0r7ZszI
	4gH+f9d/g==
From: Damien Miller <djm@cvs.openbsd.org>
Date: Fri, 10 Oct 2025 02:34:52 -0600 (MDT)
To: oss-security@lists.openwall.com
Message-ID: <dd126c0edfbc705b@cvs.openbsd.org>
Subject: [oss-security] Announce: OpenSSH 10.2 released

OpenSSH 10.2 has just been released. It will be available from the
mirrors listed at https://www.openssh.com/ shortly.

OpenSSH is a 100% complete SSH protocol 2.0 implementation and
includes sftp client and server support.

Once again, we would like to thank the OpenSSH community for their
continued support of the project, especially those who contributed
code or patches, reported bugs, tested snapshots or donated to the
project. More information on donations may be found at:
https://www.openssh.com/donations.html

Future deprecation warning
--------------------------

 * A future release of OpenSSH will deprecate support for SHA1 SSHFP
   records due to weaknesses in the SHA1 hash function. SHA1 SSHFP
   DNS records will be ignored and ssh-keygen -r will generate only
   SHA256 SSHFP records.

   The SHA256 hash algorithm, which has no known weaknesses, has
   been supported for SSHFP records since OpenSSH 6.1, released in
   2012.

Changes since OpenSSH 10.1
==========================

This is a bugfix release, primarily to fix a problem that rendered
ssh(1) unusable when ControlPersist was enabled.

Bugfixes
--------

 * ssh(1): fix mishandling of terminal connections when
   ControlPersist was active that rendered the session unusable.
   bz3872

 * ssh-keygen(1): fix download of keys from PKCS#11 tokens.

 * ssh-keygen(1): fix CA signing operations when the CA key is held
   in a ssh-agent(1). bz3877


Portability
-----------

 * All: support platforms without mmap(2), e.g. WASM builds such as
   https://hterm.org

 * All: fix builds on FreeBSD for missing fnctl.h include.

 * All: fix builds on MacOS <10.12 Sierra, which lacks
   clock_gettime(3)

 * sshd(8): don't PAM_RHOST if the remote host is the "UNKNOWN"
   placeholder name. Avoids potential hangs in some PAM modules as
   they try to resolve it. Note, sshd(8) only uses the "UNKNOWN"
   name when the connection is not on an IPv4 or IPv6 socket.

Checksums:
==========

SHA1 (openssh-10.2.tar.gz) = 6fcda8004bad0fb0eaee60e8308f91b605ad0dce
SHA256 (openssh-10.2.tar.gz) = y0rCEdrVc4OJRZLg0u3F0frAgz87ydeTktCk3rQfVj8=

SHA1 (openssh-10.2p1.tar.gz) = c34efade16109f065ec8c834f237bcedd8d7ef5c
SHA256 (openssh-10.2p1.tar.gz) = zMQsBBmTeVkmP6Hb0W2vwYxWuYTANWLSk3zlamD3mLI=

Please note that the SHA256 signatures are base64 encoded and not
hexadecimal (which is the default for most checksum tools). The PGP
key used to sign the releases is available from the mirror sites:
https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/RELEASE_KEY.asc

Reporting Bugs:
===============

- Please read https://www.openssh.com/report.html
  Security bugs should be reported directly to openssh@openssh.com

