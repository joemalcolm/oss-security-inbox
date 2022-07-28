Received: (qmail 1592 invoked by uid 550); 28 Jul 2022 20:32:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1562 invoked from network); 28 Jul 2022 20:32:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=FwLHTw+zpqGYSWcgv3DARiflhSHHrXmzSGGa4m9PvR8=; b=gpOf18x2sLcIZozjGpvFzC7bPV
	JvlmMNencTi8/OvQZw5+HsspmB5s/L0xoPhCLtBrkXY3KgcS9PoqHHhOgunTb7SU60Eun58ELAjrg
	7r9szcyPI+0bUYHcWWgM45TL5+cB0Ky0+tmDaksmKww+SM6oz3yd5Ubpw8CSvH0gDennwHXcZjxSi
	kbjYFmDkQTbkNlKjP9Y8hIR8h1f3asCUFHo7qQPM/Hbz9PZBZRVVQYmeE6DJARKwPekW0d06IalAN
	WU2y4k6zMS2gvdM0Am/V2G1Xruo/mXPagEMA7IUu3Q2MtYIeQDuGY8R70TO+2wwxLUlXXhBcaLtRH
	T9v8y4Ew==;
Message-ID: <cf40e28c-5cbb-bc9d-e460-42c503cef524@igalia.com>
Date: Thu, 28 Jul 2022 22:32:00 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0007

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0007
------------------------------------------------------------------------

Date reported           : July 28, 2022
Advisory ID             : WSA-2022-0007
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0007.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0007.html
CVE identifiers         : CVE-2022-32792, CVE-2022-32816, CVE-2022-2294.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-32792
    Versions affected: WebKitGTK and WPE WebKit before 2.36.5.
    Credit to Manfred Paul (@_manfp) working with Trend Micro Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An out-of-bounds write issue
    was addressed with improved input validation.

CVE-2022-32816
    Versions affected: WebKitGTK and WPE WebKit before 2.36.5.
    Credit to Dohyun Lee (@l33d0hyun) of SSD Secure Disclosure Labs &
    DNSLab, Korea Univ.
    Impact: Visiting a website that frames malicious content may lead to
    UI spoofing. Description: The issue was addressed with improved UI
    handling.

CVE-2022-2294
    Versions affected: WebKitGTK and WPE WebKit before 2.36.5 if
    USE_LIBWEBRTC is enabled.
    Credit to Jan Vojtesek of Avast Threat Intelligence team.
    Heap buffer overflow in LibWebRTC allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. NOTE:
    The tarballs of WebKitGTK or WPE WebKit don't ship LibWebRTC. Also
    the LibWebRTC support is disabled by default. You only are affected
    by this vulnerability if your build enabled the USE_LIBWEBRTC CMake
    option and used the repository as source instead of the tarballs.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
July 28, 2022
