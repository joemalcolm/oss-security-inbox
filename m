X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4419" "Monday" "20" "December" "2021" "14:16:15" "+0000" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "100" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0007" nil nil nil "12" nil nil (number mark "U       clopez@igali Dec 20  100/4419  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0007\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0007" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13455 invoked by uid 550); 20 Dec 2021 14:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13385 invoked from network); 20 Dec 2021 14:16:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
	Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=V/mowgYT0Vs+jDxQTKQ4qNaUhNGg3xKsbecTqMEmLRY=; b=ZzcJJUHZQDeZfOB0Z//nW+O9tg
	lgRjavj36q0iEj+/+87n9C9jLVNjFD0JCFypwilFUoK5wYOXttzNOH35IWGY5uvBdipUL5uys9RuP
	EIeTjbG/jqVajy1dOe8WslgY9WN6mQqC5TssKjmEzSI9+c9tGXwY1EXO6fLBwwLe39IMdWGXjEFnT
	50xivcWWtVpsN7y2qc9H+k7NCK6/lKVQAcuv2vKNrAJ/AK4B+Dm3pNVbtoVK1/gDtrAui0jBf6g2f
	pwA9RZ9Iz9Xy4BGBWIgM4PwOpU10FMN8f+Ds9wGaKwK61djNMPRZM/Qewo1PtKQ8d391JgDiklyux
	QrAesSLg==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <8d5b2baa-d0b5-a0fb-1d93-eeca4b439efa@igalia.com>
Date: Mon, 20 Dec 2021 14:16:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: es
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0007

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0007
------------------------------------------------------------------------

Date reported           : December 20, 2021
Advisory ID             : WSA-2021-0007
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0007.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0007.html
CVE identifiers         : CVE-2021-30809, CVE-2021-30818,
                          CVE-2021-30823, CVE-2021-30836,
                          CVE-2021-30884, CVE-2021-30887,
                          CVE-2021-30888, CVE-2021-30889,
                          CVE-2021-30890, CVE-2021-30897.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2021-30809
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2021-30818
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Amar Menezes (@amarekano) of Zon8Research.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A type confusion issue was
    addressed with improved state handling.

CVE-2021-30823
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to David Gullasch of Recurity Labs.
    Impact: An attacker in a privileged network position may be able to
    bypass HSTS. Description: A logic issue was addressed with improved
    restrictions.

CVE-2021-30836
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to Peter Nguyen Vu Hoang of STAR Labs.
    Impact: Processing a maliciously crafted audio file may disclose
    restricted memory. Description: An out-of-bounds read was addressed
    with improved input validation.

CVE-2021-30884
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to an anonymous researcher.
    Impact: Visiting a maliciously crafted website may reveal a user's
    browsing history. Description: The issue was resolved with
    additional restrictions on CSS compositing.

CVE-2021-30887
    Versions affected: WebKitGTK and WPE WebKit before 2.34.3.
    Credit to Narendra Bhati (@imnarendrabhati) of Suma Soft Pvt. Ltd.
    Impact: Processing maliciously crafted web content may lead to
    unexpectedly unenforced Content Security Policy. Description: A
    logic issue was addressed with improved restrictions.

CVE-2021-30888
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Prakash (@1lastBr3ath).
    Impact: A malicious website using Content Security Policy reports
    may be able to leak information via redirect behavior. Description:
    An information leakage issue was addressed.

CVE-2021-30889
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher
    lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution, Description: A buffer overflow issue was
    addressed with improved memory handling.

CVE-2021-30890
    Versions affected: WebKitGTK and WPE WebKit before 2.34.3.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting. Description: A logic issue was
    addressed with improved state management.

CVE-2021-30897
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to an anonymous researcher.
    Impact: A malicious website may exfiltrate data cross-origin.
    Description: An issue existed in the specification for the resource
    timing API. The specification was updated and the updated
    specification was implemented.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
December 20, 2021
