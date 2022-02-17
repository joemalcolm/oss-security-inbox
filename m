X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1400" "Thursday" "17" "February" "2022" "18:50:04" "+0000" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "32" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0003" nil nil nil "2" nil nil (number mark "U       clopez@igali Feb 17   32/1400  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0003\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0003" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1379 invoked by uid 550); 17 Feb 2022 18:50:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1349 invoked from network); 17 Feb 2022 18:50:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=OM1vksV9sIQz7DRmPZOtGWmiaXcTEzCz13eTSuiwOa8=; b=MmB0B/ktOjOVYw8qdA6t6WRK/B
	XZssOPomvaKj/rXFcD+jpik/5vfcqY8ZpF/xdRj3t/tzU8gLI48jDE8QDUu89I/Jnjcll6Hts48Rn
	IdYmd7DwCT47PEAoeJ/8jKmNapkjo7+8vpTZesBtfvmYKScfYtrfw4HuawiLtDmj5BJbafnE/sPtH
	wHa7d03uKdXPIUnP4jSt/dKhOTffLxHI8OYWBsJbag8UvseGPIGcJZIVgyfaqwhpfGor3vBoPAMzk
	dUQ2LUUGqZQDs6ci01O12K3DAXH2k9x9yh+4VutdJJLPijDGj2JEjn4TRHkEKoVQMlxNI2TaWbuHL
	W0nHrskA==;
Message-ID: <1de1c123-434e-569b-234e-e86d5da97d77@igalia.com>
Date: Thu, 17 Feb 2022 18:50:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-GB
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0003

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
