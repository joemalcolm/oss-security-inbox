X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/9
Message-ID: <237664774.155074.1792573537020@appsuite.open-xchange.com>
Date: Wed, 21 Oct 2026 11:05:37 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@...erdns.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PowerDNS Security Advisory 2026-12 for PowerDNS Recursor: Multiple issues
Content-Type: text/plain; charset=utf-8

   Today we have released PowerDNS Recursor 5.3.12 and 5.4.8.

   These releases provide fixes for PowerDNS Security Advisory

     * 2026-12 for PowerDNS Recursor: Multiple issues

   There are several CVEs associated with this advisory, three with
   severity High and the remaining with severity Medium or Low.
     __________________________________________________________________

     * CVE-2026-73206: A crafted DNS packet can cause a denial of service
       decompressing the DNS names in the packet
     * CVE-2026-73205: A malicious client can cause too many TCP
       connections in TIME_WAIT state
     * CVE-2026-85555: DNSSEC validation bypass and cache poisoning in
       PowerDNS Recursor via out-of-band NS resolution
     * CVE-2026-85556: Missing OPT RR owner-name validation bypasses ECS
       hardening
     * CVE-2026-85557: Single web client not doing TLS handshake
       monopolizes web access
     * CVE-2026-85558: Recursor retains closed TCP client addresses until
       process exit
     * CVE-2026-85559: Out-of-bounds read in Recursor findScopeZero

   Please refer to the changelogs  ([1]5.3.12 and [2]5.4.8) and the full
   [3]security advisory for additional details.

   Please send us all feedback and issues you might have via
   the [4]mailing list, or in case of a bug, via [5]GitHub.

   The tarballs ([6]5.3.12, [7]5.4.8) (with signature files [8]5.3.12,
   [9]5.4.8) are available from our download [10]server and packages for
   several distributions are available from our [11]repository.

   We made changes to our Open Source End of Life policy. Older release
   trains are now supported for one year after the following major
   release. Consult the EOL [12]policy for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.12
   2. https://doc.powerdns.com/recursor/changelog/5.4.html#change-5.4.8
   3. https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2026-12.html
   4. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   5. https://github.com/PowerDNS/pdns/issues/new/choose
   6. https://downloads.powerdns.com/releases/pdns-recursor-5.3.12.tar.xz
   7. https://downloads.powerdns.com/releases/pdns-recursor-5.4.8.tar.xz
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.3.12.tar.xz.sig
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.4.8.tar.xz.sig
  10. https://downloads.powerdns.com/releases/
  11. https://repo.powerdns.com/
  12. https://docs.powerdns.com/recursor/appendices/EOL.html


--

kind regards,
Otto Moerbeek
Developer PowerDNS


Phone: +49 2761 75252 00 Fax: +49 2761 75252 30
Email: otto.moerbeek@...erdns.com


-------------------------------------------------------------------------------------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne HRB 95366
Managing Board: Andreas Gauger, Dirk Valbert
Chairman of the Board: Dr. Paul-Josef Patt

PowerDNS.com B.V., Koninginnegracht 5, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt
-------------------------------------------------------------------------------------
Download attachment "signature.asc" of type "application/pgp-signature" (486 bytes)
