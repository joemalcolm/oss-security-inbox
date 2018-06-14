X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5816" "Thursday" "14" "June" "2018" "09:48:50" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1528987730.4808.1@mail.igalia.com>" "141" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0005" nil nil nil "6" "2018061414:48:50" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0005" (number mark "U       mcatanzaro@i Jun 14  141/5816  " thread-indent "\"[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0005\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23948 invoked by uid 550); 14 Jun 2018 15:01:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13629 invoked from network); 14 Jun 2018 14:49:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=OzfEjZzXpU3xIXzUhzaNh4ckLJtScYdfasGNM6s8z+c=;
	b=FM8DM5wU/39SPJZg02w3A+L7dSKG9SoMfMnm+ZuG4Hg2mwn7lTdbXj+8VncxgkOgUAY5GGiqVtlMZssaOIwQzBkmWjDYX1sGOtjg/Z449yk0xA5fnOmNTsjsMYl9SHXancTtbwckNpiBuzDHWjcDC/Q7f87RXTVZ+hLYdnQA51MCVTIcgr2msyrwDPKl1CZHJV+RK7MvOf0Jh+QHyM3MeJaACq0KGPL4nB9tG1A3LSmrqqbk8Eb0rYyRidpAILxVjAb2vjb+zahoTf3cmqjRzS0Pm6NDno0BQ8JJWzVg8J9523ps7NhSW4SqoDmuxzCGvkWqIEyGG3YhZXXwIAxXKg==;
Date: Thu, 14 Jun 2018 09:48:50 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1528987730.4808.1@mail.igalia.com>
X-Mailer: geary/0.12.2
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0005

------------------------------------------------------------------------
WebKitGTK+ and WPE WebKit Security Advisory                WSA-2018-0005
------------------------------------------------------------------------

Date reported           : June 13, 2018
Advisory ID             : WSA-2018-0005
WebKitGTK+ Advisory URL :=20
https://webkitgtk.org/security/WSA-2018-0005.html
WPE WebKit Advisory URL :=20
https://wpewebkit.org/security/WSA-2018-0005.html
CVE identifiers         : CVE-2018-4190, CVE-2018-4192, CVE-2018-4199,
                          CVE-2018-4201, CVE-2018-4214, CVE-2018-4218,
                          CVE-2018-4222, CVE-2018-4232, CVE-2018-4233,
                          CVE-2018-11646, CVE-2018-11712,
                          CVE-2018-11713, CVE-2018-12293,
                          CVE-2018-12294.

Several vulnerabilities were discovered in WebKitGTK+ and WPE WebKit.

CVE-2018-4190
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Jun Kokatsu (@shhnjk).
    Impact: Visiting a maliciously crafted website may leak sensitive
    data. Description: Credentials were unexpectedly sent when fetching
    CSS mask images. This was addressed by using a CORS-enabled fetch
    method.

CVE-2018-4192
    Versions affected: WebKitGTK+ before 2.20.1.
    Credit to Markus Gaasedelen, Nick Burnett, and Patrick Biernat of
    Ret2 Systems, Inc working with Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A race condition was
    addressed with improved locking.

CVE-2018-4199
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Alex Plaskett, Georgi Geshev, Fabi Beterke, and Nils of
    MWR Labs working with Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A buffer overflow issue was
    addressed with improved memory handling.

CVE-2018-4201
    Versions affected: WebKitGTK+ before 2.20.1.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4214
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to OSS-Fuzz.
    Impact: Processing maliciously crafted web content may lead to an
    unexpected application crash. Description: A memory corruption issue
    was addressed with improved input validation.

CVE-2018-4218
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Natalie Silvanovich of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4222
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Natalie Silvanovich of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An out-of-bounds read was
    addressed with improved input validation.

CVE-2018-4232
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Aymeric Chaib.
    Impact: Visiting a maliciously crafted website may lead to cookies
    being overwritten. Description: A permissions issue existed in the
    handling of web browser cookies. This issue was addressed with
    improved restrictions.

CVE-2018-4233
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Samuel Gro=DF (@5aelo) working with Trend Micro's Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-11646
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to Mishra Dhiraj.
    Maliciously crafted web content could trigger an application crash
    in WebKitFaviconDatabase, caused by mishandling unexpected input.

CVE-2018-11712
    Versions affected: WebKitGTK+ 2.20.0 and 2.20.1.
    Credit to Metrological Group B.V.
    The libsoup network backend of WebKit failed to perform TLS
    certificate verification for WebSocket connections.

CVE-2018-11713
    Versions affected: WebKitGTK+ before 2.20.0 or without libsoup
    2.62.0.
    Credit to Dirkjan Ochtman.
    The libsoup network backend of WebKit unexpectedly failed to use
    system proxy settings for WebSocket connections. As a result, users
    could be deanonymized by crafted web sites via a WebSocket
    connection.

CVE-2018-12293
    Versions affected: WebKitGTK+ before 2.20.3 and WPE WebKit before
    2.20.1.
    Credit to ADlab of Venustech.
    Maliciously crafted web content could achieve a heap buffer overflow
    in ImageBufferCairo by exploiting multiple integer overflow issues.

CVE-2018-12294
    Versions affected: WebKitGTK+ before 2.20.2.
    Credit to ADlab of Venustech.
    Maliciously crafted web content could trigger a use-after-free of a
    TextureMapperLayer object.


We recommend updating to the latest stable versions of WebKitGTK+ and
WPE WebKit. It is the best way to ensure that you are running a safe
version of WebKit. Please check our websites for information about the
latest stable releases.

Further information about WebKitGTK+ and WPE WebKit security advisories
can be found at https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK+ and WPE WebKit team,
June 13, 2018

