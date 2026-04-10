Received: (qmail 10020 invoked by uid 550); 11 Apr 2026 01:11:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26067 invoked from network); 10 Apr 2026 21:53:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1775858010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=TVDhuq5wGzJuO9skq1HuiaOVR6RH1x3fULoXGHOY5fw=;
	b=LipFt7PypkoblrI0O9ENZ4wDjHJNxStjXJRpmsI3a4etILXJhX8k8m4hwH22p1mRUU1t/L
	ZZF603b36kDcQQ0UOpeVR6eaNoU1Bq4ZagPTPdjgP0Q9an/YgizqYGjC5aFcyqVKNwbhZt
	EjUy4kVwe2iEwUP+Gk/G8AqY4DvS4n/YM7zI+iuiGorXNe7zknmFpXkNpFUsyYLDQGWwo5
	TaLL/Qj7lcjeifb2BoKrx/ZiIXAAwfp8rH7g0iEkXEjcnAuZMMgoOcgJNPeQTThIa6DqYT
	cQOFJYpSivoxk0sU6U2ZDrfO/chOxa7p0eyeSP0SjhwDjQdMTNcaNkeG62sx3Q==
Date: Fri, 10 Apr 2026 23:53:28 +0200
From: Stig Palmquist <stig@stig.io>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <adlwk7KgpcptKJUC@ava>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-40199: Net::CIDR::Lite versions before 0.23 for Perl
 mishandles IPv4 mapped IPv6 addresses, which may allow IP ACL bypass

========================================================================
CVE-2026-40199                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-40199
  Distribution:  Net-CIDR-Lite
      Versions:  before 0.23

      MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Lite
      VCS Repo:  https://github.com/stigtsp/Net-CIDR-Lite


Net::CIDR::Lite versions before 0.23 for Perl mishandles IPv4 mapped
IPv6 addresses, which may allow IP ACL bypass

Description
-----------
Net::CIDR::Lite versions before 0.23 for Perl mishandles IPv4 mapped
IPv6 addresses, which may allow IP ACL bypass.

_pack_ipv6() includes the sentinel byte from _pack_ipv4() when building
the packed representation of IPv4 mapped addresses like
::ffff:192.168.1.1. This produces an 18 byte value instead of 17 bytes,
misaligning the IPv4 part of the address.

The wrong length causes incorrect results in mask operations (bitwise
AND truncates to the shorter operand) and in find() / bin_find() which
use Perl string comparison (lt/gt). This can cause find() to
incorrectly match or miss addresses.

Example:

  my $cidr = Net::CIDR::Lite->new("::ffff:192.168.1.0/120");
  $cidr->find("::ffff:192.168.2.0");  # incorrectly returns true

This is triggered by valid RFC 4291 IPv4 mapped addresses
(::ffff:x.x.x.x).

See also CVE-2026-40198, a related issue in the same function affecting
malformed IPv6 addresses.

Problem types
-------------
- CWE-130 Improper Handling of Length Parameter Inconsistency

Solutions
---------
Upgrade to version 0.23 or newer, or apply the patch provided.


References
----------
https://github.com/stigtsp/Net-CIDR-Lite/commit/b7166b1fa17b3b14b4c795ace5b3fbf71a0bd04a.patch
https://metacpan.org/release/STIGTSP/Net-CIDR-Lite-0.23/changes
https://www.cve.org/CVERecord?id=CVE-2026-40198

Timeline
--------
- 2026-04-09: Vulnerability found
- 2026-04-10: Net-CIDR-Lite version 0.23 released

