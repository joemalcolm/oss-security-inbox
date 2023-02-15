Received: (qmail 9702 invoked by uid 550); 15 Feb 2023 15:01:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9667 invoked from network); 15 Feb 2023 15:01:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=TGJ/7VRXDXPuZ3oVihzlJKo1t8SERUMZn8gc4bhUZZU=; b=MHeL2d+dgnNRqsgOCzPGljw4H6
	CKeDEk9cefp0wOxGNVGMWMSpgukMBZnOWWXuGCmEHqiTWviDoDpref2pyWRTdrB/FvzrS4u/upOjP
	iSgUvSeCx1nTq+060PO3vdIElUqGqjka+RbX8csejwO3L4DxdN2y7uAxoIH3BB/KtybmbtFoajgbb
	28zRx7wOEOEbHCJdpBnxLWoKgUJNvfH0ydgJ+TLYMpvHGF25ZexIgGLzhofibcPGIt/eNGTQqifbr
	Ej10EKJURUgDM+58AAkyl9fANgd2su+w1oA3mw6uZ0dzhXZhiWV9gbWrHxZmHr6nU61fHSGpV+r65
	ajyC5jjw==;
Message-ID: <f6168eac-5db1-e92c-778f-c6c2d4878e70@igalia.com>
Date: Wed, 15 Feb 2023 16:01:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-GB
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, oss-security@lists.openwall.com
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0002

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0002
------------------------------------------------------------------------

Date reported           : February 15, 2023
Advisory ID             : WSA-2023-0002
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0002.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0002.html
CVE identifiers         : CVE-2023-23529.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-23529
    Versions affected: WebKitGTK and WPE WebKit before 2.38.5.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A type confusion
    issue was addressed with improved checks.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
February 15, 2023
