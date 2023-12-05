Received: (qmail 15671 invoked by uid 550); 5 Dec 2023 13:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15636 invoked from network); 5 Dec 2023 13:57:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=cT9pt4qsHtwGube0pBSxGN00A75ArgEPRWijy3e8dWo=; b=ZpzLCFMzFeuEjAsNJpRgzVqaiL
	J3JgNUqb4K+o/S/ZgxETWfVZh2zXLgipET0ZAfdmZ2deQUk5k5nthciPxrkz/Ram7lUx8i1i9KiTU
	OcsBPS9/TdAXc+Z2JyooPKwIqmLOmts9jrUEdudoCVCzPaG4dYEY6TQjqzV1ub1Ui2y3D4wj/rw8Y
	I/aPMl5Cl9OFV7vEbzVYJ3zPPOC/ytFXBADYb8ElzY0+dpl+O7y2jBmxFzYoKkUONCGG2GIwon/e9
	ZeWNQ99lETVOCnNtYEXv++McqgMMWgAZcCBYvduYMk96ii27AVj5IDgcICab4chsyPi6jXJuI0Buj
	A9cE6Bog==;
Message-ID: <a4993da7-a79b-c22b-b25c-337537a8f4b3@igalia.com>
Date: Tue, 5 Dec 2023 14:57:21 +0100
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
Content-Transfer-Encoding: 8bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0011


------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0011
------------------------------------------------------------------------

Date reported           : December 05, 2023
Advisory ID             : WSA-2023-0011
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0011.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0011.html
CVE identifiers         : CVE-2023-42916, CVE-2023-42917.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-42916
    Versions affected: WebKitGTK and WPE WebKit before 2.42.3.
    Credit to Clément Lecigne of Google's Threat Analysis Group.
    Impact: Processing web content may disclose sensitive information.
    Apple is aware of a report that this issue may have been actively
    exploited. Description: An out-of-bounds read was addressed with
    improved input validation.
    WebKit Bugzilla: 265041

CVE-2023-42917
    Versions affected: WebKitGTK and WPE WebKit before 2.42.3.
    Credit to Clément Lecigne of Google's Threat Analysis Group.
    Impact: Processing web content may lead to arbitrary code execution.
    Apple is aware of a report that this issue may have been actively
    exploited. Description: A memory corruption vulnerability was
    addressed with improved locking.
    WebKit Bugzilla: 265067


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
December 05, 2023
