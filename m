X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/19/7
Message-ID: <20260820005746.GH771367@igalia.com>
Date: Thu, 20 Aug 2026 00:57:46 +0200
From: Adrian Perez de Castro <aperez@...lia.com>
To: webkit-gtk@...ts.webkit.org, webkit-wpe@...ts.webkit.org
Cc: security@...kit.org, oss-security@...ts.openwall.com
Subject: WebKitGTK and WPE WebKit Security Advisory WSA-2026-0005
Content-Type: text/plain; charset=utf-8

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2026-0005
------------------------------------------------------------------------

Date reported           : August 20, 2026
Advisory ID             : WSA-2026-0005
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2026-0005.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2026-0005.html
CVE identifiers         : CVE-2026-28984, CVE-2026-43804,
                          CVE-2026-64713, CVE-2026-64719,
                          CVE-2026-64728, CVE-2026-64730,
                          CVE-2026-64757, CVE-2026-64783,
                          CVE-2026-64787.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2026-28984
    Versions affected: WebKitGTK and WPE WebKit before 2.52.4.
    Credit to Artem Dinaburg of Trail of Bits via Anthropic CVD.
    Impact: Processing maliciously crafted web content may lead to an
    unexpected Safari crash. Description: The issue was addressed with
    improved memory handling.
    WebKit Bugzilla: 311883

CVE-2026-43804
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to Heiko Kiesel of SEEMOO, TU Darmstadt.
    Impact: Visiting a website may lead to an app denial-of-service.
    Description: This issue was addressed through improved state
    management.
    WebKit Bugzilla: 316816

CVE-2026-64713
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to Kwak Kiyong, Song Nuri.
    Impact: Websites may know if the user has visited a given link.
    Description: This issue was addressed with improved checks.
    WebKit Bugzilla: 316827

CVE-2026-64719
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to Shaheen Fazim.
    Impact: Processing maliciously crafted web content may lead to an
    unexpected Safari crash. Description: An out-of-bounds access issue
    was addressed with improved bounds checking.
    WebKit Bugzilla: 319404

CVE-2026-64728
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to an anonymous researcher.
    Impact: Maliciously crafted web content may violate iframe
    sandboxing policy. Description: A permissions issue was addressed
    with improved validation.
    WebKit Bugzilla: 313220

CVE-2026-64730
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to Kagami Rosylight of Mozilla.
    Impact: Visiting a website that frames malicious content may lead to
    UI spoofing. Description: The issue was addressed with improved UI.
    WebKit Bugzilla: 311660

CVE-2026-64757
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to Milad Nasr and Nicholas Carlini with Claude, Anthropic.
    Impact: Processing maliciously crafted web content may lead to an
    unexpected Safari crash. Description: A memory corruption issue was
    addressed with improved state management.
    WebKit Bugzilla: 315082

CVE-2026-64783
    Versions affected: WebKitGTK and WPE WebKit before 2.52.6.
    Credit to 杉山 壮太, lattice, Behzad Najjarpour Jabbari (@_G4ru_), Junyeong Lee,
    Mooth.ai, OGINOME Tomohito, Using GLM From Z.AI, Gia Bui (@yabeow)
    from Calif.io.
    Impact: Processing maliciously crafted web content may lead to an
    unexpected Safari crash. Description: A use-after-free issue was
    addressed with improved memory management.
    WebKit Bugzilla: 313521

CVE-2026-64787
    Versions affected: WebKitGTK and WPE WebKit before 2.52.5.
    Credit to 杉山 壮太, Shubham Chaskar.
    Impact: Processing maliciously crafted web content may lead to an
    unexpected process termination. Description: A use-after-free issue
    was addressed with improved memory management.
    WebKit Bugzilla: 313703

We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security.

The WebKitGTK and WPE WebKit team,

Download attachment "signature.asc" of type "application/pgp-signature" (196 bytes)
