Received: (qmail 20029 invoked by uid 550); 30 Mar 2026 01:15:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19682 invoked from network); 29 Mar 2026 20:56:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1774817757;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=hwTn/cUhSsxMgjkm/0ZjdvCedKrTpuMLkDiLjOWlJdg=;
	b=vYzG0+0sSUvEl1PpSZt9BECY1L5b96fTfejCp5H0CVrJtRFn81rqUyq351FB4KYj5TgEIU
	beMWLoFMrjWNTc/AQ7i/pWFqwaACMppYlnkV7K19jtJJOpF3Lcf4L6J8ns3VPtsGMPWoLJ
	MyJ8vq8OibpOF8SHPjwGEUAgnNf22kmHsC0EqTbAJhghNjMi7wrsi5WMSZNeWFNTD8NdPR
	zrdsQLawOZuO8miIA0n+L24qF6TZjv7rWfqTDIrAYccgWPfR94rJmUpxEaFlnl6YdlBYKH
	S38/nEnxOwfSOCJEfbcIztnvfAfGdmaQuGEBsE4ZYSwKM4Q7AyUX4NUdSgLBRw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=stig@stig.io
Date: Sun, 29 Mar 2026 22:55:52 +0200
From: Stig Palmquist <stig@stig.io>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <acmRBjpjfsGHDxJz@ava>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-4176: Perl versions from 5.9.4 before 5.40.4-RC1, from
 5.41.0 before 5.42.2-RC1, from 5.43.0 before 5.43.9 contain a vulnerable
 version of Compress::Raw::Zlib

========================================================================
CVE-2026-4176                                        CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-4176
  Distribution:  perl
      Versions:  from 5.9.4 before 5.40.4-RC1
                 from 5.41.0 before 5.42.2-RC1
                 from 5.43.0 before 5.43.9

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5


Perl versions from 5.9.4 before 5.40.4-RC1, from 5.41.0 before
5.42.2-RC1, from 5.43.0 before 5.43.9 contain a vulnerable version of
Compress::Raw::Zlib

Description
-----------
Perl versions from 5.9.4 before 5.40.4-RC1, from 5.41.0 before
5.42.2-RC1, from 5.43.0 before 5.43.9 contain a vulnerable version of
Compress::Raw::Zlib.

Compress::Raw::Zlib is included in the Perl package as a dual-life core
module, and is vulnerable to CVE-2026-3381 due to a vendored version of
zlib which has several vulnerabilities, including CVE-2026-27171. The
bundled Compress::Raw::Zlib was updated to version 2.221 in Perl blead
commit c75ae9cc164205e1b6d6dbd57bd2c65c8593fe94.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Workarounds
-----------
Install Compress::Raw::Zlib 2.220 or later into your @INC include path,
so it takes precedence over the vulnerable core module shipped with
Perl.

Some OS distributions patch their perl package to build
Compress::Raw::Zlib against the system zlib rather than the vendored
copy. Users of these distributions may not be affected if their system
zlib has been updated to 1.3.2 or later, or includes backported patches
for the relevant vulnerabilities.


Solutions
---------
Update to Perl stable release 5.40.4 or 5.42.2 or later, which include
Compress::Raw::Zlib 2.222.


References
----------
https://www.cve.org/CVERecord?id=CVE-2026-3381
https://lists.security.metacpan.org/cve-announce/msg/37638919/
https://github.com/Perl/perl5/commit/c75ae9cc164205e1b6d6dbd57bd2c65c8593fe94
https://metacpan.org/release/PMQS/Compress-Raw-Zlib-2.221/source/Changes
https://metacpan.org/release/SHAY/perl-5.40.4/changes
https://metacpan.org/release/SHAY/perl-5.42.2/changes

Timeline
--------
- 2026-02-27: Compress::Raw::Zlib 2.221 committed to Perl blead.
- 2026-03-07: CVE-2026-3381 published for Compress::Raw::Zlib.
- 2026-03-14: CVE-2026-4176 reserved.
- 2026-03-29: Perl 5.40.4 and 5.42.2 released.

Credits
-------
Bernhard Schmalhofer, reporter
