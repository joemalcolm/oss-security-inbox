X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/1
Message-ID: <CA+WUWo8Z15E+QkHcPqmk82Y5J+4d33wVCUrVSSLMkLJBo2CizQ@mail.gmail.com>
Date: Tue, 16 Jun 2026 17:13:49 -0700
From: Ryo utomo <utomoryo395@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-36849] libtiff: Denial of Service via large SamplesPerPixel tag
Content-Type: text/plain; charset=utf-8

Hi,

I would like to disclose CVE-2026-36849, a denial of service vulnerability
in libtiff.

== Summary ==

An issue in libtiff v4.7.1 allows an attacker to cause a denial of service
via a crafted TIFF file containing a large SamplesPerPixel tag value.

== Affected Versions ==

libtiff v4.7.1 and prior

== Patch ==

https://gitlab.com/gitlab-org/build/omnibus-mirror/libtiff/-/commit/eedba405d3695b52faae65994c5904f228eca0bf

== References ==

- CVE: CVE-2026-36849
- Issue: https://gitlab.com/libtiff/libtiff/-/work_items/781

Regards,
Satriyo Utomo
(aleens-lab)

