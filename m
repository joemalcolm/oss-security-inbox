Received: (qmail 7224 invoked by uid 550); 3 Jun 2026 06:36:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5166 invoked from network); 3 Jun 2026 00:32:29 -0000
Date: Wed, 3 Jun 2026 02:32:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pjcj.net; s=dkim;
	t=1780446740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=4g6j42x5+SStaLu3s5bpxR0gOUzPXqom1NZVGK+dv8Q=;
	b=ZJOgrWTzl1a/R+KFLuetT8dykF1Nu7LGa68CZULb4XZpeltvZ3ec42Ax6hVr6CD95NdVde
	s60vBz9UDNh3ok2k+TcStXmn6L/XJ0O368LQZ8MGZEWUky3rm/7EyYoRQjSmZANn52r7FC
	ynBc1IMTheDCaFyNmCnAGsRzlXl8NB6Q2KIwopZGjGbgTV6SVWF7t+uBcJDw4P+nv9K0aj
	Y5y761xXTwI4qrASJGeh6UL/AtWtsUN/yVMg3V0zskuXcqRcfVpEZqkVtdQnopsXj3BBLE
	x043xV/ZNpYsKbA2YNy2GrpUVrXCalh2HD94vbV7ykTnlRZDrUugzbHo1TMhNg==
Authentication-Results: pjcj.com;
	auth=pass smtp.mailfrom=paul@pjcj.net
From: Paul Johnson <paul@pjcj.net>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <ah91fEAGU7F3q-EW@pjcj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-9334: Cpanel::JSON::XS versions before 4.41 for Perl allow
 type confusion via duplicate object keys when dupkeys_as_arrayref is enabled

========================================================================
CVE-2026-9334                                        CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-9334
  Distribution:  Cpanel-JSON-XS
      Versions:  before 4.41

      MetaCPAN:  https://metacpan.org/dist/Cpanel-JSON-XS
      VCS Repo:  https://github.com/rurban/Cpanel-JSON-XS


Cpanel::JSON::XS versions before 4.41 for Perl allow type confusion via
duplicate object keys when dupkeys_as_arrayref is enabled

Description
-----------
Cpanel::JSON::XS versions before 4.41 for Perl allow type confusion via
duplicate object keys when dupkeys_as_arrayref is enabled.

decode_hv() collapses duplicate object keys into an array reference
under dupkeys_as_arrayref. The branch reached for a duplicate key tests
`SvTYPE (old_value) != SVt_RV && SvTYPE (SvRV (old_value)) !=
SVt_PVAV`, which evaluates SvRV(old_value) before establishing that
old_value is a reference. When the existing value is a plain scalar
rather than an array reference, a non-reference scalar is dereferenced
as a reference.

A caller decoding untrusted JSON with dupkeys_as_arrayref enabled is
crashed, and the incompatible access follows a pointer taken from
attacker controlled scalar contents.

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')

Solutions
---------
Upgrade to Cpanel::JSON::XS 4.41 or later.


References
----------
https://github.com/rurban/Cpanel-JSON-XS/commit/11a7c550a0d8fac2f84414f24d5df9b2bfe346e2.patch
https://metacpan.org/release/RURBAN/Cpanel-JSON-XS-4.41/changes

Timeline
--------
- 2026-02-24: Issue reported.
- 2026-05-27: Version 4.41 released with fix.
- 2026-05-28: Fix verified.

-- 
Paul Johnson - paul@pjcj.net
