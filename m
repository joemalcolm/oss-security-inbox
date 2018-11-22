X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4533" "Wednesday" "21" "November" "2018" "18:27:50" "-0600" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1542846470.79064.0@mail.igalia.com>" "111" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0008" nil nil nil "11" "2018112200:27:50" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0008" (number mark "U       mcatanzaro@i Nov 21  111/4533  " thread-indent "\"[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0008\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9538 invoked by uid 550); 22 Nov 2018 08:11:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32700 invoked from network); 22 Nov 2018 00:28:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=0NkSGU8/Ls/V92OMv8i5gEDFAo6bzGBTAoMr+9uG+c4=;
	b=rTuvvIRcAb4V3ETSMBNthclAUJMYA+T9PCzZjXlQ781INwrqOcxYIok32s7BjFTxkAt2LKzE7I2FXf8+2ffeN4vGfYl8p4n84dg+Zx26KHdd5DnwMe/xhJwj+4qeuOKwN1BUQg9CmYzhrhBHEj3ecI5dsw8hboK7sRM7DtxEtnEKyeIHywvtFqLtK/bLpcSK+8pnfYN13/d/VWJNLyQPSt+u9n+PZMblLSrzc2jg21Vu9HpnMfCqOQHHaGYfB/H0Lfkco9kZj3fn65WK0EUdTbAFsXVZugEAHFY1YUJ/HeKniFBU8+NFg/i4qkwlmUOXEwdI9ccWl2NMIHv77IfzNA==;
Date: Wed, 21 Nov 2018 18:27:50 -0600
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1542846470.79064.0@mail.igalia.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-13; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0008

------------------------------------------------------------------------
WebKitGTK+ and WPE WebKit Security Advisory                WSA-2018-0008
------------------------------------------------------------------------

Date reported           : November 21, 2018
Advisory ID             : WSA-2018-0008
WebKitGTK+ Advisory URL :=20
https://webkitgtk.org/security/WSA-2018-0008.html
WPE WebKit Advisory URL :=20
https://wpewebkit.org/security/WSA-2018-0008.html
CVE identifiers         : CVE-2018-4345, CVE-2018-4372, CVE-2018-4373,
                          CVE-2018-4375, CVE-2018-4376, CVE-2018-4378,
                          CVE-2018-4382, CVE-2018-4386, CVE-2018-4392,
                          CVE-2018-4416.

Several vulnerabilities were discovered in WebKitGTK+ and WPE WebKit.

CVE-2018-4345
    Versions affected: WebKitGTK+ before 2.22.3 and WPE WebKit before
    2.22.1.
    Credit to an anonymous researcher.
    A cross-site scripting issue existed in WebKit. This issue was
    addressed with improved URL validation.

CVE-2018-4372
    Versions affected: WebKitGTK+ before 2.22.4 and WPE WebKit before
    2.22.2.
    Credit to HyungSeok Han, DongHyeon Oh, and Sang Kil Cha of KAIST
    Softsec Lab, Korea.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4373
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to ngg, alippai, DirtYiCE, KT of Tresorit working with Trend
    Micro=FFs Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4375
    Versions affected: WebKitGTK+ before 2.22.1 and WPE WebKit before
    2.22.0.
    Credit to Yu Haiwan and Wu Hongjun From Nanyang Technological
    University working with Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4376
    Versions affected: WebKitGTK+ before 2.22.1 and WPE WebKit before
    2.22.0.
    Credit to 010 working with Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4378
    Versions affected: WebKitGTK+ before 2.22.1 and WPE WebKit before
    2.22.0.
    Credit to an anonymous researcher, zhunki of 360 ESG Codesafe Team.
    Processing maliciously crafted web content may lead to code
    execution. A memory corruption issue was addressed with improved
    validation.

CVE-2018-4382
    Versions affected: WebKitGTK+ before 2.22.1 and WPE WebKit before
    2.22.0.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4386
    Versions affected: WebKitGTK+ before 2.22.3 and WPE WebKit before
    2.22.1.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4392
    Versions affected: WebKitGTK+ before 2.22.1 and WPE WebKit before
    2.22.0.
    Credit to zhunki of 360 ESG Codesafe Team.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4416
    Versions affected: WebKitGTK+ before 2.22.1 and WPE WebKit before
    2.22.0.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK+ and
WPE WebKit. It is the best way to ensure that you are running safe
versions of WebKit. Please check our websites for information about the
latest stable releases.

Further information about WebKitGTK+ and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK+ and WPE WebKit team,
November 21, 2018

