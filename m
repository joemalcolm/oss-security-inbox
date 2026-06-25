X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/7
Message-ID: <1513665631.8123.1782393533302@appsuite.open-xchange.com>
Date: Thu, 25 Jun 2026 15:18:53 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@...erdns.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PowerDNS Security Advisory 2026-08 for PowerDNS Recursor: Multiple issues
Content-Type: text/plain; charset=utf-8

   Today we have released PowerDNS Recursor 5.2.11, 5.3.8 and 5.4.3.

   These releases provide fixes for PowerDNS Security Advisory

     * 2026-08 for PowerDNS Recursor: Multiple issues

   There are several CVEs associated with this advisory, the first with
   severity High (but only applicable to specific configurations), the
   rest of severity Medium.
     __________________________________________________________________

     * CVE-2026-33612: ZoneToCache can poison the cache
     * CVE-2026-40012: Information about ECS zero scoped answers might
       leak to clients that use a specific ECS
     * CVE-2026-42005: Unbounded resource consumption in internal
       webserver
     * CVE-2026-42390: ZONEMD validation can be bypassed
     * CVE-2026-42389: Reject more queries with invalid header values
     * CVE-2026-42388: Missing input validation for catalog zones
     * CVE-2026-42387: Insufficient input validation in ZoneToCache
     * CVE-2026-52690: Spoofed answers can mark an authoritative non-EDNS
       capable

   Please refer to the changelogs  ([1]5.2.11, [2]5.3.8 and [3]5.4.3) and
   the full [4]security advisory for additional details.

   Please send us all feedback and issues you might have via
   the [5]mailing list, or in case of a bug, via [6]GitHub.

   The tarballs ([7]5.2.11, [8]5.3.8, [9]5.4.3) (with signature files
   [10]5.2.11, [11]5.3.8, [12]5.4.3) are available from our
   download [13]server and packages for several distributions are
   available from our [14]repository.

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL [15]policy for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.11
   2. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.8
   3. https://doc.powerdns.com/recursor/changelog/5.4.html#change-5.4.3
   4. https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2026-08.html
   5. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   6. https://github.com/PowerDNS/pdns/issues/new/choose
   7. https://downloads.powerdns.com/releases/pdns-recursor-5.2.11.tar.bz2
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.3.8.tar.xz
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.4.3.tar.xz
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.2.11.tar.bz2.sig
  11. https://downloads.powerdns.com/releases/pdns-recursor-5.3.8.tar.xz.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.4.3.tar.xz.sig
  13. https://downloads.powerdns.com/releases/
  14. https://repo.powerdns.com/
  15. https://docs.powerdns.com/recursor/appendices/EOL.html
Download attachment "signature.asc" of type "application/pgp-signature" (486 bytes)
