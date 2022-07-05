Received: (qmail 27881 invoked by uid 550); 5 Jul 2022 11:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27845 invoked from network); 5 Jul 2022 11:17:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=mWbuSlkyh7+h5K6of5AVjxnOUo+i6WDIUSOaP+68ako=; b=a07+cvVRbbIN3Ei9JY0yN0BFrh
	gtos4YghIc8DjqdaTO8a0/u5i4CScoPBmKVFEYsqWMXxOfb44sVPRZhmES/0yA7yLKGEQZpBXNv5M
	oro8hmcUY8KrH33yH0NNR/VN3DB34PmBsxQnQJ+yLI0ukrzu4BG/BnM7d0UfCExs3EQAEjKepTv+l
	JyzikZrzNj/l8A+3asLMgAcJfLgpfgMxHWvDvEhfsTq5Sh9uOxP5T+lh1qG0br2JijsRv459v+OH9
	Y6mVBrWSq05elmWRPHdtTD/Uv/mNlKFVC1au7VNitwQrJXJs2Iwf5LUVFPbXbtVunezKtrObP06sl
	lRQICjPQ==;
Message-ID: <a793b97f-2bca-43c3-2555-012e80daeeb8@igalia.com>
Date: Tue, 5 Jul 2022 13:16:55 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0006


------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0006
------------------------------------------------------------------------

Date reported           : July 05, 2022
Advisory ID             : WSA-2022-0006
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0006.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0006.html
CVE identifiers         : CVE-2022-22662, CVE-2022-22677, CVE-2022-26710.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-22662
    Versions affected: WebKitGTK and WPE WebKit before 2.36.0.
    Credit to Prakash (@1lastBr3ath) of Threat Nix.
    Impact: Processing maliciously crafted web content may disclose
    sensitive user information. Description: A cookie management issue
    was addressed with improved state management.

CVE-2022-22677
    Versions affected: WebKitGTK and WPE WebKit before 2.36.4.
    Credit to an anonymous researcher.
    Impact: The video in a webRTC call may be interrupted if the audio
    capture gets interrupted. Description: A logic issue in the handling
    of concurrent media was addressed with improved state handling.

CVE-2022-26710
    Versions affected: WebKitGTK and WPE WebKit before 2.36.4.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher lab.
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

July 05, 2022
