X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/19/11
Message-ID: <CAEhjM2B+ETHZVMTjQfiDXAkFN4TTygM6HzQb7WEpdG5_9O=oOg@mail.gmail.com>
Date: Tue, 19 Nov 2019 13:41:36 -0500
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-12421] Apache NiFi 'Log out' button did not completely log user out
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2019-12421

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.0.0 to 1.10.0

[PROBLEMTYPE]:Authentication

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2019-12421

[DESCRIPTION]:As reported by Abdu Sahin, when using an authentication
mechanism other than PKI, when the user clicks Log Out in NiFi versions
1.0.0 to 1.9.2, NiFi invalidates the authentication token on the client
side but not on the server side. This permits the user's client-side token
to be used for up to 12 hours after logging out to make API requests to
NiFi.

