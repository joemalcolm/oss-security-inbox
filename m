Received: (qmail 7991 invoked by uid 550); 11 Apr 2026 01:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27747 invoked from network); 10 Apr 2026 21:45:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1775857499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=OEpTNiCGC72Gtau5UBfLNpBqb+jiX1vKcxMPmTp4KTY=;
	b=GzoVRuH+IzHe0SdDXxhwK054E5Wq5qt4mffptyVqGWdDdkspHXzULjZaQtUdBrt+rSv5Oq
	LNHYkp9W954shs6toeYgM8vkUVu1GJWUf9S3eZTjH/R2Q61y5+cmZiFqKOZBEcrEt3OHQJ
	y49JYz8VtFpRSus+S7HFbnAHnPLB1T72ZGOWrgl41m0K4K5JZEM/hhzz0NAZA6mW02N4vu
	SkfPUQpMXri5n9MJjKQ91nGZTLVhT5zuhylzyD8uB7WQz2UgzTDR1L5bBftzn/+rRux4FG
	qFKfCgvFmtzMw+4SCyuyfZYWgkEos4OfmbRrp0bknaSK1IyQSrm011g2PM3eGw==
Date: Fri, 10 Apr 2026 23:44:55 +0200
From: Stig Palmquist <stig@stig.io>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <adlu6vUp3UOxylFF@ava>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-40198: Net::CIDR::Lite versions before 0.23 for Perl does
 not validate IPv6 group count, which may allow IP ACL bypass

========================================================================
CVE-2026-40198                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-40198
  Distribution:  Net-CIDR-Lite
      Versions:  before 0.23

      MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Lite
      VCS Repo:  https://github.com/stigtsp/Net-CIDR-Lite


Net::CIDR::Lite versions before 0.23 for Perl does not validate IPv6
group count, which may allow IP ACL bypass

Description
-----------
Net::CIDR::Lite versions before 0.23 for Perl does not validate IPv6
group count, which may allow IP ACL bypass.

_pack_ipv6() does not check that uncompressed IPv6 addresses (without
::) have exactly 8 hex groups. Inputs like "abcd", "1:2:3", or
"1:2:3:4:5:6:7" are accepted and produce packed values of wrong length
(3, 7, or 15 bytes instead of 17).

The packed values are used internally for mask and comparison
operations. find() and bin_find() use Perl string comparison (lt/gt) on
these values, and comparing strings of different lengths gives wrong
results. This can cause find() to incorrectly report an address as
inside or outside a range.

Example:

  my $cidr = Net::CIDR::Lite->new("::/8");
  $cidr->find("1:2:3");  # invalid input, incorrectly returns true

This is the same class of input validation issue as CVE-2021-47154
(IPv4 leading zeros) previously fixed in this module.

See also CVE-2026-40199, a related issue in the same function affecting
IPv4 mapped IPv6 addresses.

Problem types
-------------
- CWE-1286 Improper Validation of Syntactic Correctness of Input

Solutions
---------
Upgrade to version 0.23 or newer, or apply the patch provided.


References
----------
https://github.com/stigtsp/Net-CIDR-Lite/commit/25d65f85dbe4885959a10471725ec9d250a589c3.patch
https://metacpan.org/release/STIGTSP/Net-CIDR-Lite-0.23/changes
https://www.cve.org/CVERecord?id=CVE-2026-40199

Timeline
--------
- 2026-04-09: Vulnerability found
- 2026-04-10: Net-CIDR-Lite version 0.23 released

