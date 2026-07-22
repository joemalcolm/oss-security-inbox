X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/3
Message-ID: <amB3yhMB9bqNw4YV@donburi.himad.notcom.org>
Date: Wed, 22 Jul 2026 11:12:56 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54432+more: Roundcube XSS/SSRF/etc prior to 1.6.17/1.7.2
Content-Type: text/plain; charset=utf-8

Roundcube, a webmail frontend, released versions 1.6.17 and 1.7.2 on Jul 5 that
address numerous XSS and other vulnerabilities. From the release announcement at
<https://roundcube.net/news/2026/07/05/security-updates-1.6.17-and-1.7.2>:

    * Fix an infinite loop in TNEF (winmail.dat) decoder (#10193), reported by
    stafra.
    
    * Fix various vulnerabilities in the password plugin using session-injected
    username, reported by Glendaenri and peppersghost.
    
    * Fix stored XSS via unescaped attachment MIME type on the
    attachment-validation warning page [CVE-2026-54432], reported by Bohdan
    Kurinnoy, Samsung R&D Institute Ukraine (SRUKR).
    
    * Fix SSRF bypass via specific local address URLs - two new cases, reported
    by Leenear.
    
    * Fix zero-click stored XSS in plain-text rendering [CVE-2026-54433],
    reported by Bohdan Kurinnoy, Samsung R&D Institute Ukraine (SRUKR).
    
    * Fix DoS via crafted compressed-RTF size in the TNEF (winmail.dat) file,
    reported by h0rk1p.

In a positive development, the announcement now includes some though not all CVE
identifiers; numbers in square brackets are in the original text. Interested
parties may consult for example
<https://security-tracker.debian.org/tracker/source-package/roundcube> for the
rest.

Also final reminder that support for the 1.5 LTS release has ended and it
presumably is vulnerable to at least some of the above, as well as to things
that got fixed in the 1.6.16/1.7.1 security roundup.

 -Valtteri
 
