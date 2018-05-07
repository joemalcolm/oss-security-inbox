X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1828" "Monday" "7" "May" "2018" "09:53:04" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1525704784.21704.0@mail.igalia.com>" "45" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0004" nil nil nil "5" "2018050714:53:04" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0004" (number mark "U       mcatanzaro@i May  7   45/1828  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2018-0004\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26400 invoked by uid 550); 7 May 2018 15:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20429 invoked from network); 7 May 2018 14:53:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=tJhLoUvnOvSEfEjwOngNzetuRTE9y8lnFgvW0sE4RRI=;
	b=YjjN+0Fr9R9dJ0jFN+2rx7I56AvKGJ3gYSx7qvbPrUkc3d4hTd0/FgoTtq8aC4wvtMK1U8Hk62iEQCu2DJQWZ7w7L8Ed9h1ivKEMXitF0Y6SKnPAxExirrizP9UoII3Ax+AgUpqXOtBXgEAv8F+gORXwC/iI1U0TqOoa2JA1qhvKQzh3lgWohvi6cUtAxtDJ2PkB4VmViIH6gXnOkBkgT7mu3mDmXU++8JEsA5/LbVEvpHpvgQiu8f8eofE8q2ojGgukgCPV4cugnXHEq+WQ/0ZzcJe3zHgATABl/25bTdmMHDcii2FHmw33BGoyhzliAKEfcRsTo2n9I8N+8WT7fA==;
Date: Mon, 07 May 2018 09:53:04 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1525704784.21704.0@mail.igalia.com>
X-Mailer: geary/0.12.2
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2018-0004

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2018-0004
------------------------------------------------------------------------

Date reported      : May 07, 2018
Advisory ID        : WSA-2018-0004
Advisory URL       : https://webkitgtk.org/security/WSA-2018-0004.html
CVE identifiers    : CVE-2018-4121, CVE-2018-4200, CVE-2018-4204.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2018-4121
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Natalie Silvanovich of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4200
    Versions affected: WebKitGTK+ before 2.20.2.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved state management.

CVE-2018-4204
    Versions affected: WebKitGTK+ before 2.20.1.
    Credit to Richard Zhu (fluorescence) working with Trend Micro's Zero
    Day Initiative, found by OSS-Fuzz.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
May 07, 2018

