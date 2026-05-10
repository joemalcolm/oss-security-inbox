Received: (qmail 5265 invoked by uid 550); 10 May 2026 23:21:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3814 invoked from network); 10 May 2026 20:25:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778444748;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=M3F/JSSV+oO6DK6Uxj4qO9LQhMtUFbTy5ZW5BlmfcoE=;
	b=sh5r/MyuJaAtOvgkrRkrJ+yAlFh4NGtHoPVaiVNaf5fLhpb05STRmKNwZUn0/LjkEiDO4J
	5s0OCxu3DpJuGn4Ssb5gYOm5cVXx5cNel4hFpYtgEs1hAecsT1yBhCh3GngToVW26oSC5v
	iqsyd77py+dGu7mYOF10pxIvphUzEDuvpbthyeyXsrcOEhU4HDLLDdjLgQtKiOu+yVSZ8z
	fR6CaipS5L8s88PlGMcZ3V6moH+KgXQ6N6Pmr1MmB2nad9A+m5XVBz0XB6PI84K/X94D8d
	Mw4F9TJ01yZ07pxaKcNBo1xsLaH32OHGeQI9wzc/ExCXoiJxlvjjQ3VL7YcKEw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <13E246DC-BA21-4EDB-98EE-306E89489A0C@stig.io>
Date: Sun, 10 May 2026 22:25:36 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-45191: Net::CIDR::Lite versions before 0.24 for Perl does
 not properly consider extraneous zero characters in CIDR mask values, which
 may allow IP ACL bypass

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-45191                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-45191
  Distribution:  Net-CIDR-Lite
      Versions:  before 0.24

      MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Lite
      VCS Repo:  https://github.com/stigtsp/Net-CIDR-Lite


Net::CIDR::Lite versions before 0.24 for Perl does not properly
consider extraneous zero characters in CIDR mask values, which may
allow IP ACL bypass

Description
-----------
Net::CIDR::Lite versions before 0.24 for Perl does not properly
consider extraneous zero characters in CIDR mask values, which may
allow IP ACL bypass.

Mask forms like "/00" and "/01" pass validation and parse to the same
prefix as their unpadded value.

See also CVE-2026-45190.

Problem types
-------------
- CWE-1289 Improper Validation of Unsafe Equivalence in Input

Solutions
---------
Upgrade to version 0.24 or newer, or apply the patch provided.


References
----------
https://github.com/stigtsp/Net-CIDR-Lite/commit/24e2c439ec405e5256024b9acef=
d4f7008c5ed0c.patch
https://metacpan.org/release/STIGTSP/Net-CIDR-Lite-0.24/changes
https://www.cve.org/CVERecord?id=3DCVE-2026-45190

Timeline
--------
- 2026-05-10: Vulnerability found
- 2026-05-10: Net-CIDR-Lite version 0.24 released

