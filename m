X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/18/3
Message-ID: <20090818155701.GA23586@redhat.com>
Date: Tue, 18 Aug 2009 16:57:01 +0100
From: Joe Orton <jorton@...hat.com>
To: oss-security@...ts.openwall.com
Subject: neon 0.28.6 - CVE-2009-2473, CVE-2009-2474
Content-Type: text/plain; charset=utf-8

neon 0.28.6 has been released today with two security fixes:

* SECURITY (CVE-2009-2473): Fix "billion laughs" attack against expat;
  could allow a Denial of Service attack by a malicious server.
* SECURITY (CVE-2009-2474): Fix handling of an embedded NUL byte in
  a certificate subject name with OpenSSL; could allow an undetected
  MITM attack against an SSL server if a trusted CA issues such a cert.

For more information: http://www.webdav.org/neon/ 
http://lists.manyfish.co.uk/pipermail/neon/2009-August/001044.html 
http://lists.manyfish.co.uk/pipermail/neon/2009-August/001045.html 
http://lists.manyfish.co.uk/pipermail/neon/2009-August/001046.html

Regards, Joe
