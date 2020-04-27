X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/27/4
Message-ID: <CAEhjM2Bg=HG5+qfTL8T9nEOkezHgtPzEipCqfLXOVG-ostLNNA@mail.gmail.com>
Date: Mon, 27 Apr 2020 15:41:01 -0400
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-9482] Apache NiFi Registry user log out issue
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2020-9482

[PRODUCT]:Apache NiFi Registry

[VERSION]:Apache NiFi Registry 0.1.0 to 0.5.0

[PROBLEMTYPE]:Authentication

[REFERENCES]:https://nifi.apache.org/registry-security.html#CVE-2020-9482

[DESCRIPTION]:If NiFi Registry uses an authentication mechanism other than
PKI, when the user clicks Log Out, NiFi Registry invalidates the
authentication token on the client side but not on the server side. This
permits the user's client-side token to be used for up to 12 hours after
logging out to make API requests to NiFi Registry.

