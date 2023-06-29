Received: (qmail 1927 invoked by uid 550); 29 Jun 2023 13:07:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1897 invoked from network); 29 Jun 2023 13:07:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=MMFBqtiH3VwNJ9ylG0dSTTre2Gx5/g9BWfY9S4y0pkY=; b=RiHwINHTu5o1UcUbbM1+0YPyFE
	pNd61q7mCLOZaEfOcK2khOWOvONH2zl/0DkpI33UrSryba9Id1VCM83Da0tl7PkpgoXDo8R/pLM6F
	Dk4QYtKBFbuwUvqUZIgPEhHLeEw7NSiRwf6EamtP0Qlsat7TTyFv0avD9KBajXHhVPr+BiGcBJz+I
	STLHVyQxm9oQN9bznPeDgnQOZzDDY0c7EaX8wmgHdLZKeqOMJCt8desn4gS8qUTnnu6frLny4Kf4Y
	RlhZyoUbB0WxU7z4t6ewlTGlFWc0U3k4WyxRmrdxqU61/idYryRQkZxzQCpZWu874s7T9t5r46fYM
	WuTBR3fw==;
Message-ID: <c5e6ac62-28b2-76be-f65b-07449c82b536@igalia.com>
Date: Thu, 29 Jun 2023 15:07:40 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0005

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0005
------------------------------------------------------------------------

Date reported           : June 29, 2023
Advisory ID             : WSA-2023-0005
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0005.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0005.html
CVE identifiers         : CVE-2022-48503, CVE-2023-32435,
                          CVE-2023-32439.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-48503
    Versions affected: WebKitGTK and WPE WebKit before 2.38.0.
    Credit to Dongzhuo Zhao working with ADLab of Venustech, and ZhaoHai
    of Cyberpeace Tech Co., Ltd.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved bounds checks.

CVE-2023-32435
    Versions affected: WebKitGTK and WPE WebKit before 2.40.0.
    Credit to Georgy Kucherin (@kucher1n), Leonid Bezvershenko (@bzvr_),
    and Boris Larin (@oct0xor) of Kaspersky.
    Impact: Processing web content may lead to arbitrary code execution.
    Apple is aware of a report that this issue may have been actively
    exploited. Description: A memory corruption issue was addressed with
    improved state management.

CVE-2023-32439
    Versions affected: WebKitGTK and WPE WebKit before 2.40.3.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A type confusion
    issue was addressed with improved checks.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
June 29, 2023
