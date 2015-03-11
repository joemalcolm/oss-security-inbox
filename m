X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/03/11/3
Message-ID: <420269753.1243110.1426076807630.JavaMail.zimbra@redhat.com>
Date: Wed, 11 Mar 2015 08:26:47 -0400 (EDT)
From: Siddharth Sharma <siddharth@...hat.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: Re: CVE request: spencer regexp
Content-Type: text/plain; charset=utf-8

Hi,

Is there a CVE which was assigned to this flaw ?

Regards,
-------------------------------------------
Siddharth Sharma / Red Hat Product Security

----- Original Message -----
From: "Moritz Muehlenhoff" <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Sent: Monday, February 16, 2015 11:49:15 PM
Subject: [oss-security] CVE request: spencer regexp

Hi,
please assign a CVE ID for this:

http://www.kb.cert.org/vuls/id/695940
https://guidovranken.wordpress.com/2015/02/04/full-disclosure-heap-overflow-in-h-spencers-regex-library-on-32-bit-systems/

This affects multiple source packages including local copies of the
code. However, in many cases the code is only used when building for
Android or Windows.

Current WIP status for source packages in Debian:
https://security-tracker.debian.org/tracker/TEMP-0778389-A8C6F9

Cheers,
        Moritz
