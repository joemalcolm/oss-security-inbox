X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/31/15
Message-ID: <CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>
Date: Tue, 31 Jan 2017 20:00:29 +0100
From: Pierre Kim <pierre.kim.sec@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE requests: OpenBSD httpd - 2 DoS
Content-Type: text/plain; charset=utf-8

Hello,

Can you assign 2 CVE entries regarding OpenBSD httpd ?

- DoS: CPU exhaustion with SSL client-initiated renegotiation,
- DoS: Memory exhaustion by sending crafted HTTP requests with Bytes-range.

Errata for 6.0/5.9 is in progress, the memory exhaustion has been
patched today in -current
(see http://marc.info/?l=openbsd-cvs&m=148587359420912&w=2 ).
The advisory will be posted when
http://www.openbsd.org/errata{59,60}.html are updated.

Thank you,

Regards,

-- 
Pierre Kim
pierre.kim.sec@...il.com
@PierreKimSec
https://pierrekim.github.io/
