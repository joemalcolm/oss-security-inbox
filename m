Received: (qmail 7259 invoked by uid 550); 2 Aug 2023 09:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7229 invoked from network); 2 Aug 2023 09:09:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=cWA2hqlTh0ZnG7giP7DyxBHfdBHl0vAmPIJPlu2zXWA=; b=pKp20gNDuE3qHo7/hWYcLEqjW2
	VBIrOruNKTqZIHbl5TC+30iaSYy5kIRx3cNcioFUXZykU33nGraRrzwIXrcEf9FLudBHIYgsXIAmI
	zBxvOrYkVxy3jKUwnQrfVAocovgvYNCT3VOHOi5yNURv4Wz4NLH+dvquvpgknxwp8ZvECf+veaI7A
	3rLZxJ+lHx7GZ+FITih04Or/1MyeEpv1TBoUDRuPEs3uvOLTxr/bmbftB0M0n/Rv/3ZlHid017WWG
	aPf2q8ATjzQuCcG3UtoXSsDa88sGM21+TDhrgxAhHpfMlwviJ9ii3OPlURdVfVSp31itFJcuPIehu
	I1qX9bvQ==;
Message-ID: <2e988a57-9577-8ccc-7d0b-9e663f218431@igalia.com>
Date: Wed, 2 Aug 2023 11:09:30 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0007

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0007
------------------------------------------------------------------------

Date reported           : August 02, 2023
Advisory ID             : WSA-2023-0007
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0007.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0007.html
CVE identifiers         : CVE-2023-38133, CVE-2023-38572,
                          CVE-2023-38592, CVE-2023-38594,
                          CVE-2023-38595, CVE-2023-38597,
                          CVE-2023-38599, CVE-2023-38600,
                          CVE-2023-38611.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-38133
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to YeongHyeon Choi (@hyeon101010).
    Impact: Processing web content may disclose sensitive information.
    Description: The issue was addressed with improved checks.

CVE-2023-38572
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Narendra Bhati (twitter.com/imnarendrabhati) of Suma Soft
    Pvt. Ltd, Pune - India.
    Impact: A website may be able to bypass Same Origin Policy.
    Description: The issue was addressed with improved checks.

CVE-2023-38592
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Narendra Bhati (twitter.com/imnarendrabhati) of Suma Soft
    Pvt. Ltd, Pune - India, Valentino Dalla Valle, Pedro Bernardo, Marco
    Squarcina, and Lorenzo Veronese of TU Wien.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: A logic issue was addressed with improved restrictions.

CVE-2023-38594
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Yuhao Hu.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved checks.

CVE-2023-38595
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to an anonymous researcher, Jiming Wang, and Jikai Ren.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved checks.

CVE-2023-38597
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to 이준성(Junsung Lee) of Cross Republic.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved checks.

CVE-2023-38599
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Hritvik Taneja, Jason Kim, Jie Jeff Xu, Stephan van
    Schaik, Daniel Genkin, and Yuval Yarom.
    Impact: A website may be able to track sensitive user information.
    Description: A logic issue was addressed with improved state
    management.

CVE-2023-38600
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Anonymous working with Trend Micro Zero Day Initiative.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved checks.

CVE-2023-38611
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Francisco Alonso (@revskills).
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
August 02, 2023
