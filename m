X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/19/10
Message-ID: <CAEhjM2CozkQMViJxNmK94gw5T9bs6f2NM4vDknCJ7hEGSCjwWA@mail.gmail.com>
Date: Tue, 19 Nov 2019 13:41:39 -0500
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-10083] Apache NiFi process group information disclosure
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2019-10083

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.3.0 to 1.9.2

[PROBLEMTYPE]:Information Disclosure

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2019-10083

[DESCRIPTION]:As reported by Mark Payne, when updating a Process Group via
the API in NiFi versions 1.3.0 to 1.9.2, the response to the request
includes all of its contents (at the top most level, not recursively). The
response included details about processors and controller services which
the user may not have had read access to.

