Received: (qmail 16274 invoked by uid 550); 18 Dec 2023 00:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16244 invoked from network); 18 Dec 2023 00:04:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=+BxCCi61UUEkT+cHwLvNWnlvvclCHhcyhHGE1YUZlQo=; b=rUf4zB+IW/JfS/G1Dv6Ubn/Uka
	ByxH7K+IQ63Cz39hFxbYVoPm1BCg0ZdDpUSHOfgEdnmCKbW6pvWIIYqN8FlLuffR8TbvVRWbjRqif
	17bAp4vlzThATOAqqw048FVjAg9t/APd90g+S2/BtIewNhYbE1/CEb4mepuFGMhnkiC5lPf9l5jQe
	U3Uq2DUkYOhU+HPa1IUBO8E7rqv1QQkJbg/aReMsRVnbdegwa0dyhc/umUO/HQIp7jLs56gjLuuMB
	lMdv+XVAkM3nf2fk5KqFg5jBkvptUM0vhzE94cJaKkUWTsVWam3CcLz1HSbuyeycXbgrsbqWD5Qac
	yA0B/MNw==;
Message-ID: <8eba63df-b543-10af-8f29-4c4c8ab3a5dc@igalia.com>
Date: Mon, 18 Dec 2023 01:04:46 +0100
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0012

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0012
------------------------------------------------------------------------

Date reported           : December 18, 2023
Advisory ID             : WSA-2023-0012
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0012.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0012.html
CVE identifiers         : CVE-2023-42883, CVE-2023-42890.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-42883
    Versions affected: WebKitGTK and WPE WebKit before 2.42.4.
    Credit to Zoom Offensive Security Team.
    Impact: Processing a SVG image may lead to a denial-of-service.
    Description: The issue was addressed with improved memory handling.
    WebKit Bugzilla: 263349

CVE-2023-42890
    Versions affected: WebKitGTK and WPE WebKit before 2.42.0.
    Credit to Pwn2car.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved memory handling.
    WebKit Bugzilla: 259830


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
December 18, 2023
