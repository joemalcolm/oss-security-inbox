Received: (qmail 14188 invoked by uid 550); 27 May 2026 04:22:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5647 invoked from network); 27 May 2026 02:32:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779849156;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=N53drFGgzkeVpiMy4jNMZTJ2tmztrki/WsVkeU1Li7k=;
	b=Rk7AWnZxJhtsi/tmYh3PnGsGWLnRGgWK8sIvZ2kJ1hcDGorHevJi1u0p2erY6DNnOrAB5P
	O6ZxrTxNX6RIJ8xuDdGdqiHArWE+rcD9vsyn9LfFrOWAZmMubPabEbsjyuxR/PcQFyJ58W
	QOvNhYpa7/oN/UQJeb55qQTMdxklBycmXiBPME1vbt3FRNo875HkcDtP3BOcjvuscYd+MO
	tmKWIY3KVb4BiAxydZuHGnkpMZz+lJvICkc0HNfHYKJZOdpnPjaxQfqVft1zfjtPyV0WeW
	avFnEABLt+MFTgN0V7DVgfmtshLE/Kkgj0XLErAPjeOJGjBe+wKlIwVQCHnCEw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <7F1B1BCB-FEE1-49FB-B5EE-AD67A2EC8A64@stig.io>
Date: Wed, 27 May 2026 04:32:24 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-48959: IO::Uncompress::Unzip versions before 2.220 for Perl
 allow CPU exhaustion via per-byte read loop in fastForward

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-48959                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-48959
  Distribution:  IO-Compress
      Versions:  before 2.220

      MetaCPAN:  https://metacpan.org/dist/IO-Compress
      VCS Repo:  https://github.com/pmqs/IO-Compress


IO::Uncompress::Unzip versions before 2.220 for Perl allow CPU
exhaustion via per-byte read loop in fastForward

Description
-----------
IO::Uncompress::Unzip versions before 2.220 for Perl allow CPU
exhaustion via per-byte read loop in fastForward.

fastForward() compares length $offset (the digit count of the offset, 1
to 19) against the chunk size $c instead of $offset itself, so $c
shrinks from 16 KiB to 1-19 bytes per iteration.

Extracting a named entry from an attacker supplied zip via
IO::Uncompress::Unzip->new($zip, Name =3D> $target) drives a per-byte
read loop scaling with the entry's compressed size, up to the non-Zip64
4 GiB cap.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to IO-Compress 2.220 or later.


References
----------
https://github.com/pmqs/IO-Compress/commit/68db44076f4c1a86a2ffe53a958eac6c=
abaf72e2.patch
https://metacpan.org/release/PMQS/IO-Compress-2.220/changes

Timeline
--------
- 2026-05-14: Issue reported.
- 2026-05-16: Version 2.220 released.


