X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7893" "Monday" "20" "May" "2019" "14:28:12" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" nil "182" nil nil nil nil "5" nil nil (number mark "U       mcatanzaro@i May 20  182/7893  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2019-0003\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2019-0003" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16302 invoked by uid 550); 20 May 2019 19:31:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14077 invoked from network); 20 May 2019 19:28:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=LrVQm8tbjqUD6bWyUCu2k6h7Bk9NsAlIwTNbNuo0mYw=;
	b=UfMMO9kysuItUarttY3XaP9AGBewURpoMkpHoOmQwOWFTRCGgREUA1P+BLTU112pwo/4yyKKGKIfcVqJEpUw2jn42CAEghVqEZDeXjWmFcweUsZZy13Kd5BD6NgYPEVnOtdXBHNXpcAuy01CeMYM+I6uGsdKt38IcYyQFokeJO4n0rEUUsrcsYaTWxOwaqNseu9d6ayo39wyMnDVT80fWXPRF+7DhNSd5JVPzfAWls1qhLq2pILAUf1VfZ3Xy2WZAJxcps22RHY7i5tB0RREVG9YW+nTM0MUUrgg7OLO85dqskpeZ++EXOgLEtC+NvqkPjl3NtAhnQlbIDCtsJ1sWw==;
Date: Mon, 20 May 2019 14:28:12 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1558380492.22997.0@igalia.com>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2019-0003

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory WSA-2019-0003
------------------------------------------------------------------------

Date reported : May 20, 2019
Advisory ID : WSA-2019-0003
WebKitGTK Advisory URL :=20
https://webkitgtk.org/security/WSA-2019-0003.html
WPE WebKit Advisory URL :=20
https://wpewebkit.org/security/WSA-2019-0003.html
CVE identifiers : CVE-2019-6237, CVE-2019-8571, CVE-2019-8583,
                  CVE-2019-8584, CVE-2019-8586, CVE-2019-8587,
                  CVE-2019-8594, CVE-2019-8595, CVE-2019-8596,
                  CVE-2019-8597, CVE-2019-8601, CVE-2019-8607,
                  CVE-2019-8608, CVE-2019-8609, CVE-2019-8610,
                  CVE-2019-8615, CVE-2019-8611, CVE-2019-8619,
                  CVE-2019-8622, CVE-2019-8623.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2019-6237
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to G. Geshev working with Trend Micro Zero Day Initiative,
    Liu Long of Qihoo 360 Vulcan Team.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8571
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to 01 working with Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8583
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to sakura of Tencent Xuanwu Lab, jessica (@babyjess1ca_) of
    Tencent Keen Lab, and dwfault working at ADLab of Venustech.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8584
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to G. Geshev of MWR Labs working with Trend Micro Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8586
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to an anonymous researcher.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8587
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to G. Geshev working with Trend Micro Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8594
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Suyoung Lee and Sooel Son of KAIST Web Security & Privacy
    Lab and HyungSeok Han and Sang Kil Cha of KAIST SoftSec Lab.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8595
    Versions affected: WebKitGTK and WPE WebKit before 2.24.2.
    Credit to G. Geshev from MWR Labs working with Trend Micro Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8596
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to Wen Xu of SSLab at Georgia Tech.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8597
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to 01 working with Trend Micro Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8601
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to Fluoroacetate working with Trend Micro's Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8607
    Versions affected: WebKitGTK and WPE WebKit before 2.24.2.
    Credit to Junho Jang and Hanul Choi of LINE Security Team.
    Processing maliciously crafted web content may result in the
    disclosure of process memory. An out-of-bounds read was addressed
    with improved input validation.

CVE-2019-8608
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to G. Geshev working with Trend Micro Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8609
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Wen Xu of SSLab, Georgia Tech.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8610
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to Anonymous working with Trend Micro Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8615
    Versions affected: WebKitGTK and WPE WebKit before 2.24.2.
    Credit to G. Geshev from MWR Labs working with Trend Micro's Zero
    Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8611
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Samuel Gro=DF of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8619
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to Wen Xu of SSLab at Georgia Tech and Hanqing Zhao of
    Chaitin Security Research Lab.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8622
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Samuel Gro=DF of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8623
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Samuel Gro=DF of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
May 20, 2019


