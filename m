X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/06/16/2
Message-ID: <CAB8XdGAOHxx1sk1-RpZyJtvXiZ7sSKKN3aRCnUTLwXBuraAWGw@mail.gmail.com>
Date: Wed, 16 Jun 2021 10:49:44 +0100
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-30468: Apache CXF Denial of service vulnerability in parsing JSON via JsonMapObjectReaderWriter
Content-Type: text/plain; charset=utf-8

A vulnerability in the JsonMapObjectReaderWriter of Apache CXF allows
an attacker to submit malformed JSON to a web service, which results
in the thread getting stuck in an infinite loop, consuming CPU
indefinitely.

This issue affects Apache CXF versions prior to 3.4.4; Apache CXF
versions prior to 3.3.11.

For more information please refer to the CXF security advisories page:
http://cxf.apache.org/security-advisories.html
