Received: (qmail 9720 invoked by uid 550); 30 May 2022 14:07:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9680 invoked from network); 30 May 2022 14:07:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=t/Pq7d9CPPA0Rxr7VKvxLRlUDYxqNThVWf7nxv3BK2A=; b=A8vJPjR0eBvl4r5PYHD25KI6UB
	83caVbbNhubLR3wujbAfOtjm6r4+wtYpXd5p4amZqvvPv/cPv81QiUfef/TWJATRKG89SWRwOhb+7
	mAD1MZ3D/UCJS5QVhgSeMZ9djNGs27uS8TP8s//BAJ3ObqXK+1dm/kj0T/ZgGiup01cmgaiHsW3Mn
	L4qxuFdsvkNnkFQVIaGKb67u/Xarcd30h4g7YXGcN0UtL1fY+jJuP2M/EaVeQRIaTlZNLJWT7G1EA
	QCg8gpL/vr5xLD8GFVddcWIQFjOToHiFpimX2veIesNSRR4+GtbKRBVSam9IS1uEv5dNFGYuuDieQ
	EZKNnfUg==;
Message-ID: <d2901153-d74f-d45b-23c8-eb5b1160dac3@igalia.com>
Date: Mon, 30 May 2022 15:06:36 +0100
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0005

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0005
------------------------------------------------------------------------

Date reported           : May 30, 2022
Advisory ID             : WSA-2022-0005
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0005.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0005.html
CVE identifiers         : CVE-2022-26700, CVE-2022-26709,
                          CVE-2022-26717, CVE-2022-26716,
                          CVE-2022-26719, CVE-2022-30293,
                          CVE-2022-30294.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-26700
    Versions affected: WebKitGTK and WPE WebKit before 2.36.3.
    Credit to ryuzaki.
    Impact: Processing maliciously crafted web content may lead to code
    execution. Description: A memory corruption issue was addressed with
    improved state management.

CVE-2022-26709
    Versions affected: WebKitGTK and WPE WebKit before 2.36.3.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher
    lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2022-26717
    Versions affected: WebKitGTK and WPE WebKit before 2.36.3.
    Credit to Jeonghoon Shin of Theori.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2022-26716
    Versions affected: WebKitGTK and WPE WebKit before 2.36.3.
    Credit to SorryMybad (@S0rryMybad) of Kunlun Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved state management.

CVE-2022-26719
    Versions affected: WebKitGTK and WPE WebKit before 2.36.3.
    Credit to Dongzhuo Zhao working with ADLab of Venustech.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved state management.

CVE-2022-30293
    Versions affected: WebKitGTK and WPE WebKit before 2.36.1.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher
    lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or to a denial of service (application
    crash). Description: A memory corruption issue that could cause a
    heap use after free or a heap buffer overflow in
    WebCore::TextureMapperLayer::setContentsLayer was addressed with
    improved state management.

CVE-2022-30294
    Versions affected: WebKitGTK and WPE WebKit before 2.36.1.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher
    lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or to a denial of service (application
    crash). Description: A memory corruption issue that could cause a
    heap use after free or a heap buffer overflow in
    WebCore::TextureMapperLayer::setContentsLayer was addressed with
    improved state management. This is the same issue than
    CVE-2022-30293.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
May 30, 2022
