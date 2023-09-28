Received: (qmail 11279 invoked by uid 550); 28 Sep 2023 13:36:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10223 invoked from network); 28 Sep 2023 13:36:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=zS1NgXkw0b8PIiuDkPNLPPtu25s3dpuI1js8FG4w1ME=; b=kIhrRqQm0tgty8TFrHb3YIMnO7
	fjrPKrbfIk9i1JRgTKfygO0NmV1gb6LzzPHwfE7svS4uBZmrXu3biv9zcDEeIoowD3m5q5mUWzPJa
	hZkwNv8A/Nx9oiqwQpW6Hg1vZbI0mXzAQ55oysbePnBLfzQt/P53VFSWe9WsPuoTJOqwWLLiHDj/G
	Fwoao+AyVX2gJILs8vhNB5/7uEI+GBbwvIB+LCA2pinkGGtIDq9/xXUgFgkW64s7qZd2NEA5aSCi2
	aFDzmx71ANSglIIkJ4fBVHXNNaPLUL7LJU2ygKXynLBALWTTzWAAEDQfDJg2PMKt9r1Vo6pEm27bV
	2MfNBpyQ==;
Message-ID: <8c649bda-f460-31be-c058-ea2ab5d0a73b@igalia.com>
Date: Thu, 28 Sep 2023 15:36:09 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0009

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0009
------------------------------------------------------------------------

Date reported           : September 28, 2023
Advisory ID             : WSA-2023-0009
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0009.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0009.html
CVE identifiers         : CVE-2023-39928, CVE-2023-35074,
                          CVE-2023-39434, CVE-2023-40451,
                          CVE-2023-41074, CVE-2023-41993.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-39928
    Versions affected: WebKitGTK and WPE WebKit before 2.42.0.
    Credit to Marcin 'Icewall' Noga of Cisco Talos.
    A use-after-free vulnerability exists in the MediaRecorder API of
    the WebKit GStreamer-based ports (WebKitGTK and WPE WebKit). A
    specially crafted web page can abuse this vulnerability to cause
    memory corruption and potentially arbitrary code execution. A user
    would need to to visit a malicious webpage to trigger this
    vulnerability. WebKit Bugzilla: 260649.

CVE-2023-35074
    Versions affected: WebKitGTK and WPE WebKit before 2.40.0.
    Credit to Abysslab Dong Jun Kim(@smlijun) and Jong Seong
    Kim(@nevul37).
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved memory handling.

CVE-2023-39434
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Francisco Alonso (@revskills), and Dohyun Lee (@l33d0hyun)
    of PK Security.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: A use-after-free issue was addressed with improved
    memory management.

CVE-2023-40451
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to an anonymous researcher.
    Impact: An attacker with JavaScript execution may be able to execute
    arbitrary code. Description: This issue was addressed with improved
    iframe sandbox enforcement.

CVE-2023-41074
    Versions affected: WebKitGTK and WPE WebKit before 2.42.0.
    Credit to 이준성(Junsung Lee) of Cross Republic and me Li.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved checks.

CVE-2023-41993
    Versions affected: WebKitGTK and WPE WebKit before 2.42.1.
    Credit to Bill Marczak of The Citizen Lab at The University of
    Toronto's Munk School and Maddie Stone of Google's Threat Analysis
    Group.
    Impact: Processing web content may lead to arbitrary code execution.
    Apple is aware of a report that this issue may have been actively
    exploited. Description: The issue was addressed with improved
    checks.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
September 28, 2023
