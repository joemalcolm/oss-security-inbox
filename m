Received: (qmail 13577 invoked by uid 550); 27 May 2026 04:21:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20417 invoked from network); 27 May 2026 02:27:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779848866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uWFSctPseGxZiT/N5wG9V5XtdpMlLJdCRhtHZ0nDZME=;
	b=HpzsUnc6dBCLpm3h0eUSnGOilZvSpHq2qPaauXb0SZSjLb9dqJlL3Niw6x3uzAj53loT9u
	iCvp2YRuqZwW/nY/FPAoYzEkoHn0UsHv0bTJWuoAtkJQv31TLhfPeLxrRKu4FgIDEaK94m
	pKviqccjBYE8w33yb0vfYTTfi/n8P6uueNXwksS1DqLZUnNG02Tag5DZiGMKS3kWmUDxwo
	1pY3Mf0wgPNcf2MHGJ0MNQisN1mAKk7LKaEQy0nfhCBnXGSiGgB0Ch/ESb8cQURipbGgNa
	5/gC929QSH9ezDUMLo5qI4ZjzN9X4bMe0pIyMxrOWe/MQMxKGyGJtShF2u8wpA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <528D729E-AF97-4D42-AB5B-330B47BAF258@stig.io>
Date: Wed, 27 May 2026 04:27:33 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2025-15649: IO::Uncompress::Unzip versions before 2.215 for Perl
 propagate uncaught exception when parsing zip header with malformed DOS date

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2025-15649                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2025-15649
  Distribution:  IO-Compress
      Versions:  before 2.215

      MetaCPAN:  https://metacpan.org/dist/IO-Compress
      VCS Repo:  https://github.com/pmqs/IO-Compress


IO::Uncompress::Unzip versions before 2.215 for Perl propagate uncaught
exception when parsing zip header with malformed DOS date

Description
-----------
IO::Uncompress::Unzip versions before 2.215 for Perl propagate uncaught
exception when parsing zip header with malformed DOS date.

_dosToUnixTime() decodes the local-file-header last-modification date
field and calls Time::Local::timelocal() without an eval guard. A
header whose date field decodes to an out-of-range month, day, or hour
causes timelocal() to die.

The exception propagates out of IO::Uncompress::Unzip->new($file) where
callers expect undef plus $UnzipError.

Problem types
-------------
- CWE-248 Uncaught Exception

Solutions
---------
Upgrade to IO-Compress 2.215 or later.


References
----------
https://github.com/pmqs/IO-Compress/commit/fd28c1d2374eee9811f6d0c5bddc0957=
abdf1da8.patch
https://github.com/pmqs/IO-Compress/issues/65
https://metacpan.org/release/PMQS/IO-Compress-2.215/changes

Timeline
--------
- 2025-10-25: Issue reported.
- 2026-01-30: Version 2.215 released.


