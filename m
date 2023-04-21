Received: (qmail 7194 invoked by uid 550); 21 Apr 2023 14:34:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6140 invoked from network); 21 Apr 2023 14:34:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=dZJahp3P9THYFcCYiAMOSMqvCZrg0s+PkxbQzlzlL2Q=; b=DaUpeHF/uLBDNhYEbuTNtaQz4H
	nHYLNdc5FSz0qh5cY51YiUNuTJfyDpogOzuPPd7ALBgj8vdeJ3rci/c8xSmZJ5v7PQj5eo1t1W8T5
	Ub91lNVGo/kiC8DRKo5z5HOmUg7mBjGcUiMohIBiIvrNzJ6lvgh8hJXvK3vJRZq8OgZRqV/YEvUt2
	xWV8ISAoPJS9EXbneyDQvpgraHGnmX/9cYjOKJBrYzjuPZfHQWrzU/taz4yoQbehoP6a3H7lkOouS
	WVHgxj+fZlpmhc8raw5Pyxt+c/0gc15T7HxuieJsscVQ9w4mOsQfef8uHknkGDpgA8ocGR1XPFfrw
	Vr4yyDqw==;
Message-ID: <65bdc479-3ce7-ffdd-9747-aeef94e6767d@igalia.com>
Date: Fri, 21 Apr 2023 16:34:17 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0003

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0003
------------------------------------------------------------------------

Date reported           : April 21, 2023
Advisory ID             : WSA-2023-0003
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0003.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0003.html
CVE identifiers         : CVE-2023-25358, CVE-2022-0108, CVE-2022-32885,
                          CVE-2023-27932, CVE-2023-27954,
                          CVE-2023-28205.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-25358
    Versions affected: WebKitGTK and WPE WebKit before 2.36.8.
    Credit to Chijin Zhou of ShuiMuYuLin Ltd and Tsinghua wingtecher
    lab.
    A use-after-free vulnerability exists in WebCore::RenderLayer. This
    issue allows remote attackers to execute arbitrary code or cause a
    denial of service (memory corruption and application crash) via a
    crafted web site. This is the same issue than CVE-2023-25360,
    CVE-2023-25361, CVE-2023-25362 and CVE-2023-25363.

CVE-2022-0108
    Versions affected: WebKitGTK and WPE WebKit before 2.38.6 and 2.40
    branch before 2.40.1.
    Credit to Luan Herrera (@lbherrera_).
    Impact: An HTML document may be able to render iframes with
    sensitive user information. Description: This issue was addressed
    with improved iframe sandbox enforcement.

CVE-2022-32885
    Versions affected: WebKitGTK and WPE WebKit before 2.38.6 and 2.40
    branch before 2.40.1.
    Credit to P1umer(@p1umer) and Q1IQ(@q1iqF).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved validation.

CVE-2023-27932
    Versions affected: WebKitGTK and WPE WebKit before 2.38.6 and 2.40
    branch before 2.40.1.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may bypass Same
    Origin Policy. Description: This issue was addressed with improved
    state management.

CVE-2023-27954
    Versions affected: WebKitGTK and WPE WebKit before 2.38.6 and 2.40
    branch before 2.40.1.
    Credit to an anonymous researcher.
    Impact: A website may be able to track sensitive user information.
    Description: The issue was addressed by removing origin information.

CVE-2023-28205
    Versions affected: WebKitGTK and WPE WebKit before 2.38.6 and 2.40
    branch before 2.40.1.
    Credit to Clément Lecigne of Google's Threat Analysis Group and
    Donncha Ó Cearbhaill of Amnesty International’s Security Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A use after free
    issue was addressed with improved memory management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
April 21, 2023
