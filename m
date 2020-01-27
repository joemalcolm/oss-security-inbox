X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/27/2
Message-ID: <CAEhjM2AWN+kRYtkUrUoia56nZGrefj==pc5RFaqEQ_5U9o1bGQ@mail.gmail.com>
Date: Mon, 27 Jan 2020 12:07:56 -0500
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1933] Apache NiFi Information Disclosure
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2020-1928

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.10.0

[PROBLEMTYPE]:Information Disclosure

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2020-1928

[DESCRIPTION]:As reported by Andy LoPresto, the sensitive parameter parser
would log parsed values for debugging purposes. This would expose literal
values entered in a sensitive property when no parameter was present.

