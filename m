X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8234" "Friday" "28" "September" "2018" "19:17:40" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1538180260.9906.1@mail.igalia.com>" "199" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0007" "^Cc:" nil nil "9" "2018092900:17:40" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0007" (number mark "U       mcatanzaro@i Sep 28  199/8234  " thread-indent "\"[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0007\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28614 invoked by uid 550); 29 Sep 2018 00:36:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18155 invoked from network); 29 Sep 2018 00:18:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=y9pX3SL3+afsRetHcl4hhCxwYzRLnZplj1cMTnfGCWY=;
	b=LCFVwk53FBvOwzPNDIHI/1T/31gtJzM0cAdgUUOtrGzVijtebY81bckcbsA6FYrbx7pIxsQKxrergMzMFc9ZXvQhjEj9jbO75wj2h5dm7cccBqdyeDPjFTspajz/vSgECeHEl8gXmUFYCfMU2miMcWsbBlMcziWxkfgCYBJkRgPRjQ88Ak/X76KA5b++QKEvwUS5XTo5g8ASG4N9fa9puS8zFW84uWEoh0WFDT7nvpcunZ0F92XHX+vHdiapvYMOBSLgpqxUYRJPkRQSlkG4rQmSziNISyC/4XdOyG79iGpWqZNMgNhoM8HEhZrRxo9m6oQkKdQM/2+KWjYB4yV99A==;
Message-Id: <1538180260.9906.1@mail.igalia.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Fri, 28 Sep 2018 19:17:40 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0007
To: webkit-gtk@lists.webkit.org

-----------------------------------------------------------------------
WebKitGTK+ and WPE WebKit Security Advisory                WSA-2018-0007
------------------------------------------------------------------------

Date reported           : September 26, 2018
Advisory ID             : WSA-2018-0007
WebKitGTK+ Advisory URL :=20
https://webkitgtk.org/security/WSA-2018-0007.html
WPE WebKit Advisory URL :=20
https://wpewebkit.org/security/WSA-2018-0007.html
CVE identifiers         : CVE-2018-4207, CVE-2018-4208, CVE-2018-4209,
                          CVE-2018-4210, CVE-2018-4212, CVE-2018-4213,
                          CVE-2018-4191, CVE-2018-4197, CVE-2018-4299,
                          CVE-2018-4306, CVE-2018-4309, CVE-2018-4311,
                          CVE-2018-4312, CVE-2018-4314, CVE-2018-4315,
                          CVE-2018-4316, CVE-2018-4317, CVE-2018-4318,
                          CVE-2018-4319, CVE-2018-4323, CVE-2018-4328,
                          CVE-2018-4358, CVE-2018-4359, CVE-2018-4361.

Several vulnerabilities were discovered in WebKitGTK+ and WPE WebKit.

CVE-2018-4207
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. This issue was
    addressed with improved checks.

CVE-2018-4208
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. This issue was
    addressed with improved checks.

CVE-2018-4209
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. This issue was
    addressed with improved checks.

CVE-2018-4210
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction with indexing types caused a failure. An
    array indexing issue existed in the handling of a function in
    JavaScriptCore. This issue was addressed with improved checks.

CVE-2018-4212
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. This issue was
    addressed with improved checks.

CVE-2018-4213
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. This issue was
    addressed with improved checks.

CVE-2018-4191
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. A memory corruption
    issue was addressed with improved validation.

CVE-2018-4197
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4299
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Samuel Gro=CE=B2 (saelo) working with Trend Micro's Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4306
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4309
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to an anonymous researcher working with Trend Micro's Zero
    Day Initiative.
    A malicious website may be able to execute scripts in the context of
    another website. A cross-site scripting issue existed in WebKit.
    This issue was addressed with improved URL validation.

CVE-2018-4311
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Erling Alf Ellingsen (@steike).
    Cross-origin SecurityErrors includes the accessed frame=E2=80=99s origi=
n.
    The issue was addressed by removing origin information.

CVE-2018-4312
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4314
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4315
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4316
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to crixer, Hanming Zhang (@4shitak4) of Qihoo 360 Vulcan
    Team.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved state management.

CVE-2018-4317
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4318
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2018-4319
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to John Pettitt of Google.
    A malicious website may cause unexepected cross-origin behavior. A
    cross-origin issue existed with iframe elements. This was addressed
    with improved tracking of security origins.

CVE-2018-4323
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4328
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Ivan Fratric of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4358
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to @phoenhex team (@bkth_ @5aelo @_niklasb) working with
    Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4359
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Samuel Gro=C3=9F (@5aelo).
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4361
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Google OSS-Fuzz.
    Unexpected interaction causes an ASSERT failure. A memory corruption
    issue was addressed with improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK+ and
WPE WebKit. It is the best way to ensure that you are running safe
versions of WebKit. Please check our websites for information about the
latest stable releases.

Further information about WebKitGTK+ and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK+ and WPE WebKit team,
September 26, 2018

