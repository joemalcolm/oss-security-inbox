X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/12/3
Message-ID: <9d9dcfba-7dae-4d99-e036-86a1ad7ed4cb@igalia.com>
Date: Thu, 12 Mar 2020 18:52:34 +0100
From: Carlos Alberto Lopez Perez <clopez@...lia.com>
To: webkit-gtk@...ts.webkit.org, webkit-wpe@...ts.webkit.org
Cc: security@...kit.org, distributor-list@...me.org, oss-security@...ts.openwall.com, bugtraq@...urityfocus.com
Subject: WebKitGTK and WPE WebKit Security Advisory WSA-2020-0003
Content-Type: text/plain; charset=utf-8

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2020-0003
------------------------------------------------------------------------

Date reported           : March 12, 2020
Advisory ID             : WSA-2020-0003
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2020-0003.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2020-0003.html
CVE identifiers         : CVE-2020-10018.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2020-10018
    Versions affected: WebKitGTK before 2.28.0 and WPE WebKit before
    2.28.0.
    Credit to Sudhakar Verma, Ashfaq Ansari & Siddhant Badhe - Project
    Srishti of CloudFuzz.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue
    (use-after-free) was addressed with improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
March 12, 2020



Download attachment "signature.asc" of type "application/pgp-signature" (898 bytes)
