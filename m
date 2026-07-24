X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/24
Message-ID: <3601cec6-c3c9-467e-8aab-433f33423ae4@cpansec.org>
Date: Fri, 24 Jul 2026 16:02:59 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-58586: Image::WebP versions through 0.2 for Perl bundle a vulnerable version of libwebp
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-58586                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-58586
   Distribution:  Image-WebP
       Versions:  through 0.2

       MetaCPAN:  https://metacpan.org/dist/Image-WebP


Image::WebP versions through 0.2 for Perl bundle a vulnerable version
of libwebp

Description
-----------
Image::WebP versions through 0.2 for Perl bundle a vulnerable version
of libwebp.

Image::WebP does not link to the system libwebp. Instead, it uses a
bundled copy of libwebp 0.3.0 (released 2013-03-20). That version has
multiple known vulnerabilities, including CVE-2023-4863.

Any caller that decodes an untrusted WebP image reaches the bundled
decoder. Because the library is compiled into the module, upgrading the
system libwebp does not remediate this.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Solutions
---------
Image::WebP has not been updated since 2013. Migrate to a different
solution, such as Imager with Imager::File::WEBP.


References
----------
https://metacpan.org/release/ZAPAD/Image-WebP-0.2/source/webp-src/NEWS
https://www.cve.org/CVERecord?id=CVE-2023-4863

