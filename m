X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/23/3
Message-ID: <743eee56-be13-4ae7-8589-7416429ef79c@powerdns.com>
Date: Thu, 23 Apr 2026 16:43:23 +0200
From: Miod Vallat <miod.vallat@...erdns.com>
To: oss-security@...ts.openwall.com
Subject: PowerDNS Authoritative Server 4.9.14 and 5.0.4 released
Content-Type: text/plain; charset=utf-8

Today, we are releasing two new versions of the PowerDNS Authoritative
Server. These 4.9.14 and 5.0.4 versions provide fixes for the following
PowerDNS Security Advisory:
   * [1]PowerDNS Security Advisory 2026-05: Multiple Issues

The security issues being fixed with these releases are low or
medium-severity, and most of them involve specific backends and/or
configurations. They are:
   * CVE-2026-33257 An attacker can send a web request that causes
     unlimited memory allocation in the internal web server, leading to
     a denial of service. The web server is disabled and restricted by
     an ACL by default.
   * CVE-2026-33260 An attacker can send a web request that causes
     unlimited memory allocation in the internal web server, leading to
     a denial of service. The web server is disabled and restricted by
     an ACL by default.
   * CVE-2026-33608 Incomplete domain name sanitization may cause the
     bind backend to be rendered unusable when running in autosecondary
     mode.
   * CVE-2026-33609 Incomplete escaping of LDAP queries when running
     with 8bit-dns may cause wrong results to be returned.
   * CVE-2026-33610 A rogue primary server may cause file descriptor
     exhaustion and eventually a denial of service, when a PowerDNS
     secondary server forwards a DNS update request to it.
   * CVE-2026-33611 Adding ill-formed HTTP or SVCB records from the API
     or through pdnsutil can lead to permanent LMDB database corruption.

Please make sure to read the [2]Upgrade Notes before upgrading.

The tarballs ([3]4.9.14, [4]5.0.4) and their signatures ([5]4.9.14,
[6]5.0.4) are available at [7]downloads.powerdns.com. Packages for
various distributions are available from [8]repo.powerdns.com.

Please send us all feedback and issues you might have via the
[9]mailing list, or in case of a bug, via [10]GitHub.

References

  1. 
https://doc.powerdns.com/authoritative/security-advisories/powerdns-advisory-2026-05.html
  2. https://doc.powerdns.com/authoritative/upgrading.html
  3. https://downloads.powerdns.com/releases/pdns-4.9.14.tar.bz2
  4. https://downloads.powerdns.com/releases/pdns-5.0.4.tar.bz2
  5. https://downloads.powerdns.com/releases/pdns-4.9.14.tar.bz2.sig
  6. https://downloads.powerdns.com/releases/pdns-5.0.4.tar.bz2.sig
  7. https://downloads.powerdns.com/releases/
  8. https://repo.powerdns.com/
  9. https://mailman.powerdns.com/mailman/listinfo/pdns-users
10. https://github.com/PowerDNS/pdns/issues/new/choose

