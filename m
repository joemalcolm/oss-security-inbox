X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/27/3
Message-ID: <CAEhjM2ByDcfuf-mGxZBjjqqD+brvH6sFHTEt--MMsqB3W8iUOQ@mail.gmail.com>
Date: Mon, 27 Jan 2020 12:08:03 -0500
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1933] Apache NiFi XSS Attack
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2020-1933

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.0.0 to 1.10.0

[PROBLEMTYPE]:XSS Attack

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2020-1933

[DESCRIPTION]:As reported by Jakub Palaczynski (ING Tech Poland), malicious
scripts could be injected to the UI through action by an unaware
authenticated user in Firefox. Did not appear to occur in other browsers.

