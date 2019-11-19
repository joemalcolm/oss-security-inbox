X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/19/12
Message-ID: <CAEhjM2Dr85nH_JNFJQ=f+uS7ptcht+zhKSL0w1gTXa6QvD+mWA@mail.gmail.com>
Date: Tue, 19 Nov 2019 13:41:36 -0500
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-10080] Apache NiFi XXE information disclosure
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2019-10080

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.3.0 to 1.9.2

[PROBLEMTYPE]:Information Disclosure

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2019-10080

[DESCRIPTION]:As reported by RunningSnail, the XMLFileLookupService in NiFi
versions 1.3.0 to 1.9.2 allowed trusted users to inadvertently configure a
potentially malicious XML file. The XML file has the ability to make
external calls to services (via XXE) and reveal information such as the
versions of Java, Jersey, and Apache that the NiFI instance uses.

