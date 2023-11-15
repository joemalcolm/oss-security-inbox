Received: (qmail 22408 invoked by uid 550); 15 Nov 2023 20:31:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22364 invoked from network); 15 Nov 2023 20:31:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=qeMe/NXV3J3LnH9iP0XOz+oZm5RxJ2NSfrlTe+JW54Y=; b=GFNV6XyWvljrLNATBIPdEDNDMi
	/UvGv+CdLdDCZChu/b5fYsRFLY4tffIdvwQX/cDqFRh5XGJdknXTvi0B9hgVKb9xbWvwYt1I6pBJE
	pvxSBMFdZN0p6rPoLXmcXllU7XP9NoWK2muo0/lgbMZr9O0ngY/mTmDP7O/UPN/4trTNeP51fk/J4
	D1uZziZrmFAn29u9rBmff39aRwPNIHK1hlrZl67kP/JnYVV9g4rACS8LqkPO8LGm6aJSKnovd67Ch
	KqiYCCzMrR7ZFDC46gN6R+2lqNuOmaWhjKzCzbfX0K8SxmyuEfbqseliFp+pzQsRTfnFbOIznn9DG
	dJbRb6Tg==;
Message-ID: <0c888152-705e-e0cf-9184-82e6ba7d1c6a@igalia.com>
Date: Wed, 15 Nov 2023 21:31:10 +0100
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0010

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0010
------------------------------------------------------------------------

Date reported           : November 15, 2023
Advisory ID             : WSA-2023-0010
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0010.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0010.html
CVE identifiers         : CVE-2022-32919, CVE-2022-32933,
                          CVE-2022-46705, CVE-2022-46725,
                          CVE-2023-32359, CVE-2023-41983,
                          CVE-2023-42852.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-32919
    Versions affected: WebKitGTK and WPE WebKit before 2.38.4.
    Credit to @real_as3617.
    Impact: Visiting a website that frames malicious content may lead to
    UI spoofing. Description: The issue was addressed with improved UI
    handling.
    WebKit Bugzilla: 247461

CVE-2022-32933
    Versions affected: WebKitGTK and WPE WebKit before 2.38.0.
    Credit to Binoy Chitale, MS student, Stony Brook University, Nick
    Nikiforakis, Associate Professor, Stony Brook University, Jason
    Polakis, Associate Professor, University of Illinois at Chicago, Mir
    Masood Ali, PhD student, University of Illinois at Chicago, Chris
    Kanich, Associate Professor, University of Illinois at Chicago, and
    Mohammad Ghasemisharif, PhD Candidate, University of Illinois at
    Chicago.
    Impact: A website may be able to track the websites a user visited
    in private browsing mode. Description: An information disclosure
    issue was addressed by removing the vulnerable code.
    WebKit Bugzilla: 239547

CVE-2022-46705
    Versions affected: WebKitGTK and WPE WebKit before 2.38.4.
    Credit to Hyeon Park (@tree_segment) of Team ApplePIE.
    Impact: Visiting a malicious website may lead to address bar
    spoofing. Description: A spoofing issue existed in the handling of
    URLs. This issue was addressed with improved input validation.
    WebKit Bugzilla: 247287

CVE-2022-46725
    Versions affected: WebKitGTK and WPE WebKit before 2.38.4.
    Credit to Hyeon Park (@tree_segment) of Team ApplePIE.
    Impact: Visiting a malicious website may lead to address bar
    spoofing. Description: A spoofing issue existed in the handling of
    URLs. This issue was addressed with improved input validation.
    WebKit Bugzilla: 247289

CVE-2023-32359
    Versions affected: WebKitGTK and WPE WebKit before 2.42.0.
    Credit to Claire Houston.
    Impact: A user's password may be read aloud by a text-to-speech
    accessibility feature. Description: This issue was addressed with
    improved redaction of sensitive information.
    WebKit Bugzilla: 248717

CVE-2023-41983
    Versions affected: WebKitGTK and WPE WebKit before 2.42.2.
    Credit to 이준성(Junsung Lee).
    Impact: Processing web content may lead to a denial-of-service.
    Description: The issue was addressed with improved memory handling.
    WebKit Bugzilla: 260757

CVE-2023-42852
    Versions affected: WebKitGTK and WPE WebKit before 2.42.2.
    Credit to an anonymous researcher.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: A logic issue was addressed with improved checks.
    WebKit Bugzilla: 260173


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
November 15, 2023
