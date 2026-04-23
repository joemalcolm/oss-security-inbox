X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/23/1
Message-ID: <384797100.10590.1776928977319@appsuite.open-xchange.com>
Date: Thu, 23 Apr 2026 09:22:57 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@...erdns.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PowerDNS Security Advisory 2026-03 for PowerDNS Recursor: Multiple issues
Content-Type: text/plain; charset=utf-8

   We have released PowerDNS Recursor 5.2.9, 5.3.6 and 5.4.1.

   These releases provide fixes for PowerDNS Security Advisory

     * 2026-03 for PowerDNS Recursor: Multiple issues

   There are several CVEs associated with this advisory, all of severity
   Medium.
     __________________________________________________________________

     * CVE-2026-33256 Unbounded memory allocation by internal web server,
       affected 5.3.5, 5.4.0
     * CVE-2026-33257 Insufficient input validation of internal web
       server, affected 5.2.8
     * CVE-2026-33258 Crafted zones can cause increased resource usage,
       affected 5.2.8, 5.3.5, 5.4.0
     * CVE-2026-33259 Concurrent modification of RPZ data can lead to
       denial of service, affected 5.2.8 5.3.5, 5.4.0
     * CVE-2026-33260 Insufficient input validation of internal web
       server, affected 5.2.8
     * CVE-2026-33261 Null pointer access in aggressive NSEC(3) cache,
       affected 5.2.8, 5.3.5, 5.4.0
     * CVE-2026-33262 Insufficient validation of cookie reply, affected
       5.4.0
     * CVE-2026-33601 Insufficient validation of ZONEMD record, affected
       5.2.8, 5.3.5, 5.4.0
     * CVE-2026-33600 Null pointer dereference in RPZ transfer, affected
       5.2.8, 5.3.5, 5.4.0

   Please refer to the changelogs  (5.2.9[1], 5.3.6[2] and 5.4.1[3]) and
   the full security advisory[4] for additional details.

   Please send us all feedback and issues you might have via the mailing
   list[5], or in case of a bug, via GitHub[6].

   The tarballs (5.2.9[7], 5.3.6[8], 5.4.1[9]) (with signature files
   5.2.9[10], 5.3.6[11], 5.4.1[12]) are available from our
   download server[13] and packages for several distributions are
   available from our repository[14].

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL policy[15] for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.9
   2. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.6
   3. https://doc.powerdns.com/recursor/changelog/5.4.html#change-5.4.1
   4. https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2026-03.html
   5. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   6. https://github.com/PowerDNS/pdns/issues/new/choose
   7. https://downloads.powerdns.com/releases/pdns-recursor-5.2.9.tar.bz2
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.3.6.tar.xz
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.4.1.tar.xz
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.2.9.tar.bz2.sig
  11. https://downloads.powerdns.com/releases/pdns-recursor-5.3.6.tar.xz.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.4.1.tar.xz.sig
  13. https://downloads.powerdns.com/releases/
  14. https://repo.powerdns.com/
  15. https://docs.powerdns.com/recursor/appendices/EOL.html
Download attachment "signature.asc" of type "application/pgp-signature" (486 bytes)
