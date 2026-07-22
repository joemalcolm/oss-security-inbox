X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/6
Message-ID: <37442025.2795.1784721291664@appsuite.open-xchange.com>
Date: Wed, 22 Jul 2026 13:54:51 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@...erdns.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PowerDNS Security Advisory 2026-10 for PowerDNS Recursor: Multiple issues
Content-Type: text/plain; charset=utf-8

   Today we have released PowerDNS Recursor 5.2.12, 5.3.9 and 5.4.4.

   These releases provide fixes for PowerDNS Security Advisory

     * 2026-10 for PowerDNS Recursor: Multiple issues

   There are two CVEs associated with this advisory, one with severity
   High and one with severity Low.
     __________________________________________________________________

     * CVE-2026-52688: RRSIGs with too few labels can lead to bypass of
       DNSSEC wildcard validation
     * CVE-2026-62686: Wildcard CNAME proof validation bypass

   Please refer to the changelogs  ([1]5.2.12, [2]5.3.9 and [3]5.4.4) and
   the full [4]security advisory for additional details.

   Please send us all feedback and issues you might have via
   the [5]mailing list, or in case of a bug, via [6]GitHub.

   The tarballs ([7]5.2.12, [8]5.3.9, [9]5.4.4) (with signature files
   [10]5.2.12, [11]5.3.9, [12]5.4.4) are available from our
   download [13]server and packages for several distributions are
   available from our [14]repository.

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL [15]policy for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.12
   2. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.9
   3. https://doc.powerdns.com/recursor/changelog/5.4.html#change-5.4.4
   4. https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2026-10.html
   5. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   6. https://github.com/PowerDNS/pdns/issues/new/choose
   7. https://downloads.powerdns.com/releases/pdns-recursor-5.2.12.tar.bz2
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.3.9.tar.xz
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.4.4.tar.xz
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.2.12.tar.bz2.sig
  11. https://downloads.powerdns.com/releases/pdns-recursor-5.3.9.tar.xz.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.4.4.tar.xz.sig
  13. https://downloads.powerdns.com/releases/
  14. https://repo.powerdns.com/
  15. https://docs.powerdns.com/recursor/appendices/EOL.html
Download attachment "signature.asc" of type "application/pgp-signature" (486 bytes)
