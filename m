X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/3
Message-ID: <1117373754.2220.1784814198657@appsuite-pro-sync-core-mw-groupware-0.appsuite-pro-sync-core-mw-hazelcast-headless.appsuite.svc.cluster.local>
Date: Thu, 23 Jul 2026 15:43:18 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@...erdns.com>
To: oss-security@...ts.openwall.com
Subject: Re: PowerDNS Security Advisory 2026-10 for PowerDNS Recursor: Multiple issues
Content-Type: text/plain; charset=utf-8

It has been brought to our attention that the CVE number of the second issue is wrong. It should be CVE-2026-52686.

Regards, Otto

> On 22/07/2026 13:54 CEST Otto Moerbeek <otto.moerbeek@...erdns.com> wrote:
>
>
> Today we have released PowerDNS Recursor 5.2.12, 5.3.9 and 5.4.4.
>
>    These releases provide fixes for PowerDNS Security Advisory
>
>      * 2026-10 for PowerDNS Recursor: Multiple issues
>
>    There are two CVEs associated with this advisory, one with severity
>    High and one with severity Low.
>      __________________________________________________________________
>
>      * CVE-2026-52688: RRSIGs with too few labels can lead to bypass of
>        DNSSEC wildcard validation
>      * CVE-2026-62686: Wildcard CNAME proof validation bypass
>
>    Please refer to the changelogs  ([1]5.2.12, [2]5.3.9 and [3]5.4.4) and
>    the full [4]security advisory for additional details.
>
>    Please send us all feedback and issues you might have via
>    the [5]mailing list, or in case of a bug, via [6]GitHub.
>
>    The tarballs ([7]5.2.12, [8]5.3.9, [9]5.4.4) (with signature files
>    [10]5.2.12, [11]5.3.9, [12]5.4.4) are available from our
>    download [13]server and packages for several distributions are
>    available from our [14]repository.
>
>    Recently we made changes to our Open Source End of Life policy. Older
>    release trains are now supported for one year after the following major
>    release. Consult the EOL [15]policy for more details.
>
>    We are grateful to the PowerDNS community for the reporting of bugs,
>    issues, feature requests, and especially to the submitters of fixes and
>    implementations of features.
>
> References
>
>    1. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.12
>    2. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.9
>    3. https://doc.powerdns.com/recursor/changelog/5.4.html#change-5.4.4
>    4. https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2026-10.html
>    5. https://mailman.powerdns.com/mailman/listinfo/pdns-users
>    6. https://github.com/PowerDNS/pdns/issues/new/choose
>    7. https://downloads.powerdns.com/releases/pdns-recursor-5.2.12.tar.bz2
>    8. https://downloads.powerdns.com/releases/pdns-recursor-5.3.9.tar.xz
>    9. https://downloads.powerdns.com/releases/pdns-recursor-5.4.4.tar.xz
>   10. https://downloads.powerdns.com/releases/pdns-recursor-5.2.12.tar.bz2.sig
>   11. https://downloads.powerdns.com/releases/pdns-recursor-5.3.9.tar.xz.sig
>   12. https://downloads.powerdns.com/releases/pdns-recursor-5.4.4.tar.xz.sig
>   13. https://downloads.powerdns.com/releases/
>   14. https://repo.powerdns.com/
>   15. https://docs.powerdns.com/recursor/appendices/EOL.html

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

Download attachment "signature.asc" of type "application/pgp-signature" (476 bytes)
