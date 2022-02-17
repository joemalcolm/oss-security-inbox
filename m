X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/17/1
Message-ID: <1de1c123-434e-569b-234e-e86d5da97d77@igalia.com>
Date: Thu, 17 Feb 2022 18:50:04 +0000
From: Carlos Alberto Lopez Perez <clopez@...lia.com>
To: webkit-gtk@...ts.webkit.org, webkit-wpe@...ts.webkit.org
Cc: security@...kit.org, distributor-list@...me.org, oss-security@...ts.openwall.com, bugtraq@...urityfocus.com
Subject: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0003
Content-Type: text/plain; charset=utf-8

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0003
------------------------------------------------------------------------

Date reported           : February 17, 2022
Advisory ID             : WSA-2022-0003
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0003.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0003.html
CVE identifiers         : CVE-2022-22620.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-22620
    Versions affected: WebKitGTK and WPE WebKit before 2.34.6.
    Credit to an anonymous researcher.
    Impact: processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A use after free
    issue was addressed with improved memory management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
February 17, 2022
