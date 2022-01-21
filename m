X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4853" "Friday" "21" "January" "2022" "16:53:45" "+0000" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "109" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil "1" nil nil (number mark "U       clopez@igali Jan 21  109/4853  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7724 invoked by uid 550); 21 Jan 2022 16:54:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7688 invoked from network); 21 Jan 2022 16:54:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
	Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=s+HqYncE/ro6X5dkjPRv/+97JtZeg8AjtLIHvz7xhHc=; b=LSJFqyZp3oFgZu978hS6IsIMPH
	TnQqG7uwbnQSOT7FBSMwdRa/gpTYMqkkH4pC1wGE97j1EOCwK2ormrrayDNLUIrNRpGX9XqW668m0
	qdtAvnDlGMEBljmx5/VJBHRNd5r2ba5F0of8Gs4WRn5ffkUUtHx9LUZmT6S33tmNAcxbKQhTFAi2f
	LPgu9YG0jmr2ND1OYWa2dbDpKbzi695c7lW+ME7MolSluVvikWUJDWE8WzvKmZPwo8/y2qUnS8TNG
	waiKVn106obR/kOiHZ75kV/ve6tnu09oo59cTmXvkDewFaDSz3tzEvv1IcCbLR2Mk+sUQYalfaBWH
	3bDnM2Vg==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <cb8ce1dd-6dee-b6f9-4081-f662887ce835@igalia.com>
Date: Fri, 21 Jan 2022 16:53:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0001
------------------------------------------------------------------------

Date reported           : January 21, 2022
Advisory ID             : WSA-2022-0001
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0001.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0001.html
CVE identifiers         : CVE-2021-30934, CVE-2021-30936,
                          CVE-2021-30951, CVE-2021-30952,
                          CVE-2021-30953, CVE-2021-30954,
                          CVE-2021-30984, CVE-2022-XXXXX,
                          CVE-2021-45481, CVE-2021-45482,
                          CVE-2021-45483.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2021-30934
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Dani Biro.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A buffer overflow issue was
    addressed with improved memory handling.

CVE-2021-30936
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher
    lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2021-30951
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Pangu.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2021-30952
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to WeBin.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An integer overflow was
    addressed with improved input validation.

CVE-2021-30953
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to VRIJ.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An out-of-bounds read was
    addressed with improved bounds checking.

CVE-2021-30954
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Kunlun Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A type confusion issue was
    addressed with improved memory handling.

CVE-2021-30984
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Kunlun Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A race condition was
    addressed with improved state handling.

CVE-2022-XXXXX
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Martin Bajanik from fingerprintjs.com.
    Impact: A malicious website may exfiltrate data cross-origin.
    Description: A cross-origin issue existed with the IndexedDB. This
    was addressed with improved checking of security origins. 
    Notes: There is a public PoC demonstrating this issue at
    https://safarileaks.com so this issue may have been actively
    exploited. We still don't know the CVE number that will be assigned
    to this issue. We will update this advisory once we know it.

CVE-2021-45481
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher lab.
    Processing maliciously crafted web content may cause an application
    crash due to an incorrect memory allocation in
    WebCore::ImageBufferCairoImageSurfaceBackend::create

CVE-2021-45482
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher lab.
    Processing maliciously crafted web content may cause a memory
    corruption issue (use-after-free) in WebCore::ContainerNode::firstChild

CVE-2021-45483
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher lab.
    Processing maliciously crafted web content may cause a memory
    corruption issue (heap-use-after-free) in WebCore::Frame::page


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
January 21, 2022
