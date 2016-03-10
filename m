X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1671" "Thursday" "10" "March" "2016" "05:12:01" "-0700" "Damien Miller" "djm@openbsd.org" "<bffeab9e56b0b9ef@openbsd.org>" "46" "[oss-security] Announce: Portable OpenSSH 7.2p2 released" "^Date:" nil nil "3" "2016031012:12:01" "[oss-security] Announce: Portable OpenSSH 7.2p2 released" (number mark "        djm@openbsd. Mar 10   46/1671  " thread-indent "\"[oss-security] Announce: Portable OpenSSH 7.2p2 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15438 invoked by uid 550); 10 Mar 2016 12:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11695 invoked from network); 10 Mar 2016 12:12:13 -0000
Message-Id: <bffeab9e56b0b9ef@openbsd.org>
Date: Thu, 10 Mar 2016 05:12:01 -0700 (MST)
From: Damien Miller <djm@openbsd.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Announce: Portable OpenSSH 7.2p2 released
To: oss-security@lists.openwall.com

Portable OpenSSH 7.2p2 has just been released. It will be available
from the mirrors listed at http://www.openssh.com/ shortly.

OpenSSH is a 100% complete SSH protocol 2.0 implementation and
includes sftp client and server support. OpenSSH also includes
transitional support for the legacy SSH 1.3 and 1.5 protocols that
may be enabled at compile-time.

Once again, we would like to thank the OpenSSH community for
their continued support of the project, especially those who
contributed code or patches, reported bugs, tested snapshots or
donated to the project. More information on donations may be found
at: http://www.openssh.com/donations.html

Changes since OpenSSH 7.2p1
===========================

This release fixes a security bug:

 * sshd(8): sanitise X11 authentication credentials to avoid xauth
   command injection when X11Forwarding is enabled.

   Full details of the vulnerability are available at:
   http://www.openssh.com/txt/x11fwd.adv

Checksums:
==========

 - SHA1 (openssh-7.2p2.tar.gz) = 70e35d7d6386fe08abbd823b3a12a3ca44ac6d38
 - SHA256 (openssh-7.2p2.tar.gz) = pyeB0aBDh2oiT/GwAy2qQJTYdWWmhSh1nBwsq1SCVIw=

Please note that the SHA256 signatures are base64 encoded and not
hexadecimal (which is the default for most checksum tools). The PGP
key used to sign the releases is available as RELEASE_KEY.asc from
the mirror sites.

Reporting Bugs:
===============

- Please read http://www.openssh.com/report.html
  Security bugs should be reported directly to openssh@openssh.com

OpenSSH is brought to you by Markus Friedl, Niels Provos, Theo de
Raadt, Kevin Steves, Damien Miller, Darren Tucker, Jason McIntyre,
Tim Rice and Ben Lindstrom.

