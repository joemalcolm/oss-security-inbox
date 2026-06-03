Received: (qmail 7849 invoked by uid 550); 3 Jun 2026 06:36:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11953 invoked from network); 3 Jun 2026 00:34:35 -0000
Date: Wed, 3 Jun 2026 02:34:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pjcj.net; s=dkim;
	t=1780446866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=cGt3kmUTJYgmoIDN6PJigl1lr625X0jxumr0Dz6SbFE=;
	b=nvBgcUJcuCYWlyWHMd0MioEqSWDYPtzM2JsmqWW0bM2IbslEogwGO3Y8FX+ZpAaxBvsaLp
	9xAtdk1d5sK3f4o89w0JZLNcDJbt/WnfQscKKLdnXoTKBShS9b+arddWcsjFhiOUegoZxd
	W92AdC0DepZIPCKH1nDt5kOpo8/Xy5wCD0AR0M6+lxhiBgaheQigzskn0qmcX9fXc1z7u6
	16Jp3skdQ/5tHfWicXqskqx+ry3quwsAW7F7Z2XJqwEkDIdQMBFUL67V+Mu5VfMaID9Pkd
	vjUfPUxhWTh2Ttqpax29SZqBjPwPPaLA1s/Xfhs2ZONJomCeay41a+2D5lcc9g==
Authentication-Results: pjcj.com;
	auth=pass smtp.mailfrom=paul@pjcj.net
From: Paul Johnson <paul@pjcj.net>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <ah92IamQXkTJ8Lpv@pjcj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-9516: Cpanel::JSON::XS versions before 4.41 for Perl allow
 denial of service via UTF-8 BOM prefixed input when a decode filter callback
 throws

========================================================================
CVE-2026-9516                                        CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-9516
  Distribution:  Cpanel-JSON-XS
      Versions:  before 4.41

      MetaCPAN:  https://metacpan.org/dist/Cpanel-JSON-XS
      VCS Repo:  https://github.com/rurban/Cpanel-JSON-XS


Cpanel::JSON::XS versions before 4.41 for Perl allow denial of service
via UTF-8 BOM prefixed input when a decode filter callback throws

Description
-----------
Cpanel::JSON::XS versions before 4.41 for Perl allow denial of service
via UTF-8 BOM prefixed input when a decode filter callback throws.

To skip a leading 3-byte UTF-8 BOM, decode_json() advances the input
scalar's string pointer past the mark with SvPV_set() and restores it
only on the normal return path. When decoding aborts through a Perl
exception, for example a filter_json_object callback that croaks, the
restore is skipped and the scalar is left with its string pointer
offset into its own buffer and a shortened length.

When that scalar is later freed, the allocator receives an invalid
pointer and the interpreter aborts. A single BOM prefixed document
decoded with a throwing filter callback crashes any caller.

Problem types
-------------
- CWE-763 Release of Invalid Pointer or Reference
- CWE-755 Improper Handling of Exceptional Conditions

Solutions
---------
Upgrade to Cpanel::JSON::XS 4.41 or later.


References
----------
https://github.com/rurban/Cpanel-JSON-XS/commit/dfe1b41a36caba51dc12a2917fe50285d1ffaa7b.patch
https://metacpan.org/release/RURBAN/Cpanel-JSON-XS-4.41/changes

Timeline
--------
- 2026-05-18: Issue reported.
- 2026-05-27: Version 4.41 released with fix.
- 2026-05-28: Fix verified.

-- 
Paul Johnson - paul@pjcj.net
