Received: (qmail 2037 invoked by uid 550); 2 Feb 2023 16:26:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2004 invoked from network); 2 Feb 2023 16:26:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=HUBJcSnFZVWZrIEbsUTCg9Bf2UIuBLxMypMs91vfm+k=; b=gs9kLnkhhY/UH13dOfDTMLK4Q9
	kDyvBTsu80ixOAykbSvKY0/qburetU5ie69cx8OWv2muul4aWdbTEqC8XF3rKmQNmiv8fU12OxpCU
	/TZOpRxHQ16rh8pkTSaiNvHc1dDWMV0PT8J/R/0VEcsUqEUdzrdKp7Mki5by2c1VhXKGUYPGFgzCc
	ZRSVYGZ+HkNpLj7wQh9xHFOzfxTKKg3UYyJqb9INmpuiNjk7PysBHRnyYdzK3paQNiJF0HQYfxM3l
	qA24cRIM6xuqjKxdBCbiY9wQJlPrMTVqQJfb03mLCzJDWQTmA8uzas0PW7jPT3fh45laRxmJSm8RM
	2Jp+2pMg==;
Message-ID: <63233106-c225-f27a-467a-76a73adc996b@igalia.com>
Date: Thu, 2 Feb 2023 17:26:23 +0100
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0001

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0001
------------------------------------------------------------------------

Date reported           : February 02, 2023
Advisory ID             : WSA-2023-0001
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0001.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0001.html
CVE identifiers         : CVE-2023-23517, CVE-2023-23518,
                          CVE-2022-42826.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-23517
    Versions affected: WebKitGTK and WPE WebKit before 2.38.4.
    Credit to YeongHyeon Choi (@hyeon101010), Hyeon Park
    (@tree_segment), SeOk JEON (@_seokjeon), YoungSung Ahn (@_ZeroSung),
    JunSeo Bae (@snakebjs0107), Dohyun Lee (@l33d0hyun) of Team
    ApplePIE.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: The issue was addressed with
    improved memory handling.

CVE-2023-23518
    Versions affected: WebKitGTK and WPE WebKit before 2.38.4.
    Credit to YeongHyeon Choi (@hyeon101010), Hyeon Park
    (@tree_segment), SeOk JEON (@_seokjeon), YoungSung Ahn (@_ZeroSung),
    JunSeo Bae (@snakebjs0107), Dohyun Lee (@l33d0hyun) of Team
    ApplePIE.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: The issue was addressed with
    improved memory handling.

CVE-2022-42826
    Versions affected: WebKitGTK and WPE WebKit before 2.38.4.
    Credit to Francisco Alonso (@revskills).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
February 02, 2023
