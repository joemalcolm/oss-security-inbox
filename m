Received: (qmail 14331 invoked by uid 550); 29 Apr 2026 15:09:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3135 invoked from network); 29 Apr 2026 14:29:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1777472955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3rJSRaMKvZeoFIrxXzfpNJZSiGIIWaojoy2t2wFM6WY=;
	b=O9ksL/Rv7Nc/SPRLz+HEHKwy+RvvVB2IlU5jpq6dZqW1yqPK7Ub8hkc/svkIUpsF037cXJ
	tcsDJ2PwsKJp7cKBiRKtb7d6+7ggqjuoOCawZxko1+VbQn2JHw03Jmd6HPBubSr1Yoh0fh
	sxQgTUBQIxjc/jGFpInfpkQpgJxr+ucEWuvY87B6LwctXFXPv2MMhHhiQzKXdQV2tzXa1O
	pZ5M+XF7B5Qzr6WqRDM5XiAHiKcdQlK0dAO8egXI/INKOgJ9yGz9WHkuBUtcW103gVU4xO
	8lemrlVXBCPbKJ76VYVkVNCj6YmGeukQwwbRfPKK59zDtWA1m24Z65lqx5DtiQ==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <CDD95EFB-3A8C-4E6A-BEA1-C5FE74E10DBF@stig.io>
Date: Wed, 29 Apr 2026 16:29:03 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-7111: Text::CSV_XS versions before 1.62 for Perl have a
 use-after-free when registered callbacks extend the Perl argument stack,
 which may enable type confusion or memory corruption

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-7111                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-7111
  Distribution:  Text-CSV_XS
      Versions:  before 1.62

      MetaCPAN:  https://metacpan.org/dist/Text-CSV_XS
      VCS Repo:  https://github.com/cpan-authors/Text-CSV_XS


Text::CSV_XS versions before 1.62 for Perl have a use-after-free when
registered callbacks extend the Perl argument stack, which may enable
type confusion or memory corruption

Description
-----------
Text::CSV_XS versions before 1.62 for Perl have a use-after-free when
registered callbacks extend the Perl argument stack, which may enable
type confusion or memory corruption.

The Parse, print, getline, and getline_all methods invoke registered
callbacks (for example after_parse, before_print, or on_error) and
cache the Perl argument stack pointer across the call. If a callback
extends the argument stack enough to trigger a reallocation, the return
value is written through the stale pointer into the freed buffer, and
the caller reads the original $self argument as the return value
instead.

Calling code that expects parsed data from getline_all receives the
Text::CSV_XS object in its place, leading to logic errors or crashes.
Text::CSV_XS objects used without any registered callbacks are not
affected.

Problem types
-------------
- CWE-825 Expired Pointer Dereference
- CWE-416 Use After Free

Solutions
---------
Upgrade to 1.62 or later.


References
----------
https://github.com/cpan-authors/Text-CSV_XS/commit/c17f31a5f2bf36674748eb4b=
6e25672f0571a224.patch
https://metacpan.org/release/HMBRAND/Text-CSV_XS-1.62/changes

Timeline
--------
- 2026-04-25: Fix committed to public Github repository
- 2026-04-26: CVE number reserved
- 2026-04-29: Version 1.62 with the fix released to CPAN

Credits
-------
Leon Timmermans, analyst

