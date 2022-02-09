X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2110" "Wednesday" "9" "February" "2022" "13:23:18" "+0000" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "48" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0002" nil nil nil "2" nil nil (number mark "U       clopez@igali Feb  9   48/2110  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0002\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0002" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18023 invoked by uid 550); 9 Feb 2022 13:23:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17990 invoked from network); 9 Feb 2022 13:23:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
	Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=YDUvebiAt/BE/raiRFftial+fR3uwf5mwbLk48C8i4c=; b=YQuwpXRH0khvs54smgoOMniMJI
	v7vUYf1sd5/MGwLyfGzcS7vWszXYyEGYpn/Mn2lEX2CDVPFpsXvEaMdAqbUFWo87X0AscppEa25fi
	u9idBn/HGvF/gOsqf9e6IIySUb9yhEec+NjjJgKGBGkGFNETdjEzDh6OaWGeB+BHTwlsDZFTvY02/
	uZ+e1NS5NagqAyIp/SO2WJkdBDVp0iXSml2JoxNRuYuyypqjlJE6/OASB2jrvzvXP7vA/Y3WQYyVN
	GKInb1Blsg6TM4vdkiMM2jOeDu8VUDYFvp0B8PPp9lWF4r81zr2o15bBR1ZE7uLX8hnPHwcV9hkSP
	E20/+j2A==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <62b55912-4d43-0811-6431-0b36efdf8985@igalia.com>
Date: Wed, 9 Feb 2022 13:23:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0002

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0002
------------------------------------------------------------------------

Date reported           : February 09, 2022
Advisory ID             : WSA-2022-0002
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0002.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0002.html
CVE identifiers         : CVE-2022-22589, CVE-2022-22590,
                          CVE-2022-22592.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-22589
    Versions affected: WebKitGTK and WPE WebKit before 2.34.5.
    Credit to Heige of KnownSec 404 Team (knownsec.com) and Bo Qu of
    Palo Alto Networks (paloaltonetworks.com).
    Impact: Processing a maliciously crafted mail message may lead to
    running arbitrary javascript. Description: A validation issue was
    addressed with improved input sanitization.

CVE-2022-22590
    Versions affected: WebKitGTK and WPE WebKit before 2.34.5.
    Credit to Toan Pham from Team Orca of Sea Security
    (security.sea.com).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2022-22592
    Versions affected: WebKitGTK and WPE WebKit before 2.34.5.
    Credit to Prakash (@1lastBr3ath).
    Impact: Processing maliciously crafted web content may prevent
    Content Security Policy from being enforced. Description: A logic
    issue was addressed with improved state management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
February 09, 2022
