X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/01/8
Message-ID: <CAG8=FRj-qsUUXTt0dUPV3u67GfZUZi0kV76smZD_ZWSbkq+a+Q@mail.gmail.com>
Date: Mon, 1 Nov 2021 21:44:31 +0100
From: Emmanuel Lecharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-41973: Apache MINA HTTP listener DOS
Content-Type: text/plain; charset=utf-8

Severity: critical

Description:

In Apache MINA, a specifically crafted, malformed HTTP request may
cause the HTTP Header decoder to loop indefinitely. The decoder
assumed that the HTTP Header begins at the beginning of the buffer and
loops if there is more data than expected. Please update MINA to 2.1.5
or greater.

References:

https://lists.apache.org/thread.html/r0b907da9340d5ff4e6c1a4798ef4e79700a668657f27cca8a39e9250%40%3Cdev.mina.apache.org%3E


-- 
Regards,
Cordialement,
Emmanuel Lécharny
www.iktek.com
