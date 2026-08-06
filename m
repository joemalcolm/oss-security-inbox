X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/2
Message-ID: <54249789.5270.1786013442367@appsuite.open-xchange.com>
Date: Thu, 6 Aug 2026 12:50:42 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@...erdns.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PowerDNS Security Advisory 2026-11 for PowerDNS Authoritative Server, Recursor and dnsdist: A crafted DNS packet can cause increased memory and CPU consumption
Content-Type: text/plain; charset=utf-8

   Today we have released PowerDNS Authoritative Server 4.9.17, 5.0.7,
   5.1.4, Recursor 5.2.13, 5.3.10, 5.4.5, and dnsdist 1.9.16, 2.0.8,
   2.1.1.

   These releases provide fixes for PowerDNS Security Advisory

     * 2026-11 for PowerDNS Authoritative Server, Recursor and dnsdist: A
       crafted DNS packet can cause increased memory and CPU consumption

   The CVE associated with this advisory is of severity High.
     __________________________________________________________________

     * CVE-2026-52682: A crafted DNS packet can cause increased memory and
       CPU consumption

   Please refer to the changelogs  for Authoritative Server ([1]4.9.17,
   [2]5.0.7, [3]5.1.4), Recursor ([4]5.2.13, [5]5.3.10 and [6]5.4.5)  and
   dnsdist ([7]1.9.16, [8]2.0.8, [9]2.1.1) and the full [10]security
   advisory for additional details.

   Please send us all feedback and issues you might have via
   the [11]mailing list, or in case of a bug, via [12]GitHub.

   The tarballs for Authoritative Server ([13]4.9.17, [14]5.0.7, [15]5.1.4
   with signature files [16]4.9.17, [17]5.0.7, [18]5.1.4), Recursor
   ([19]5.2.13, [20]5.3.10, [21]5.4.5 with signature files [22]5.2.13,
   [23]5.3.10, [24]5.4.5) and dnsdist ([25]1.9.16, [26]2.0.8, [27]2.1.1
   with signature files [28]1.9.16, [29]2.0.8, [30]2.1.1) are available
   from our download [31]server and packages for several distributions are
   available from our [32]repository.

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL [33]policy for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://docs.powerdns.com/authoritative/changelog/4.9.html#change-4.9.17
   2. https://docs.powerdns.com/authoritative/changelog/5.0.html#change-5.0.7
   3. https://docs.powerdns.com/authoritative/changelog/5.1.html#change-5.1.4
   4. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.13
   5. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.10
   6. https://doc.powerdns.com/recursor/changelog/5.4.html#change-5.4.5
   7. https://www.dnsdist.org/changelog.html#change-1.9.16
   8. https://www.dnsdist.org/changelog.html#change-2.0.8
   9. https://www.dnsdist.org/changelog.html#change-2.1.1
  10. https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2026-11.html
  11. https://mailman.powerdns.com/mailman/listinfo/pdns-users
  12. https://github.com/PowerDNS/pdns/issues/new/choose
  13. https://downloads.powerdns.com/releases/pdns-4.9.17.tar.bz2
  14. https://downloads.powerdns.com/releases/pdns-5.0.7.tar.bz2
  15. https://downloads.powerdns.com/releases/pdns-5.1.4.tar.bz2
  16. https://downloads.powerdns.com/releases/pdns-4.9.17.tar.bz2.sig
  17. https://downloads.powerdns.com/releases/pdns-5.0.7.tar.bz2.sig
  18. https://downloads.powerdns.com/releases/pdns-5.1.4.tar.bz2.sig
  19. https://downloads.powerdns.com/releases/pdns-recursor-5.2.13.tar.bz2
  20. https://downloads.powerdns.com/releases/pdns-recursor-5.3.10.tar.xz
  21. https://downloads.powerdns.com/releases/pdns-recursor-5.4.5.tar.xz
  22. https://downloads.powerdns.com/releases/pdns-recursor-5.2.13.tar.bz2.sig
  23. https://downloads.powerdns.com/releases/pdns-recursor-5.3.10.tar.xz.sig
  24. https://downloads.powerdns.com/releases/pdns-recursor-5.4.5.tar.xz.sig
  25. https://downloads.powerdns.com/releases/dnsdist-1.9.16.tar.bz2
  26. https://downloads.powerdns.com/releases/dnsdist-2.0.8.tar.xz
  27. https://downloads.powerdns.com/releases/dnsdist-2.1.1.tar.xz
  28. https://downloads.powerdns.com/releases/dnsdist-1.9.16.tar.bz2.sig
  29. https://downloads.powerdns.com/releases/dnsdist-2.0.8.tar.xz.sig
  30. https://downloads.powerdns.com/releases/dnsdist-2.1.1.tar.xz.sig
  31. https://downloads.powerdns.com/releases/
  32. https://repo.powerdns.com/
  33. https://docs.powerdns.com/recursor/appendices/EOL.html


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
