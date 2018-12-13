X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3102" "Thursday" "13" "December" "2018" "15:53:29" "-0600" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1544738009.80391.0@mail.igalia.com>" "77" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0009" "^Cc:" nil nil "12" "2018121321:53:29" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0009" (number mark "U       mcatanzaro@i Dec 13   77/3102  " thread-indent "\"[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0009\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5431 invoked by uid 550); 13 Dec 2018 21:57:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1197 invoked from network); 13 Dec 2018 21:54:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=MxY7VkFudE6NdDLdzskRduJUN/TB+u/e2w55aIEMOaM=;
	b=I0ibPhh5R+X3LAHG5sgSt8n22KPXJk4bOye7/JYse1tNHlF0Y3og4c6hrBJGBjR1+jyscHXFwiFNQc/xrWv8UxLAmKQSq9+3+oqKGvWiaR4MQjtdxiMzUfaGBFznru4aT1ghnJgKNhLFbN0kM3Y7QR7ZYvEWf8BjeD+ZNbUkBEuYHEjNJ0elqiW7zirzUNMDcc3gmDcy1NQ5k/xTXOMVCi/qYb3G+JqRzESWe1Z7rj/eUTIkblXtgsG20PzLtusHyDSmA9m5kQ8uynlChhgEGDg7tNYkTjmyvdJrk4O1X4+JcMpxhTMDbRUgGadl6QMEo5QnzpQLFzh9k6ENveqEYg==;
Message-Id: <1544738009.80391.0@mail.igalia.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Thu, 13 Dec 2018 15:53:29 -0600
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0009
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org

------------------------------------------------------------------------
WebKitGTK+ and WPE WebKit Security Advisory                WSA-2018-0009
------------------------------------------------------------------------

Date reported           : December 13, 2018
Advisory ID             : WSA-2018-0009
WebKitGTK+ Advisory URL : 
https://webkitgtk.org/security/WSA-2018-0009.html
WPE WebKit Advisory URL : 
https://wpewebkit.org/security/WSA-2018-0009.html
CVE identifiers         : CVE-2018-4437, CVE-2018-4438, CVE-2018-4441,
                          CVE-2018-4442, CVE-2018-4443, CVE-2018-4464.

Several vulnerabilities were discovered in WebKitGTK+ and WPE WebKit.

CVE-2018-4437
    Versions affected: WebKitGTK+ before 2.22.5 and WPE WebKit before
    2.22.3.
    Credit to HyungSeok Han, DongHyeon Oh, and Sang Kil Cha of KAIST
    Softsec Lab, Korea.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2018-4438
    Versions affected: WebKitGTK+ before 2.22.3 and WPE WebKit before
    2.22.1.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A logic issue existed resulting in memory
    corruption. This was addressed with improved state management.

CVE-2018-4441
    Versions affected: WebKitGTK+ before 2.22.3 and WPE WebKit before
    2.22.1.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4442
    Versions affected: WebKitGTK+ before 2.22.3 and WPE WebKit before
    2.22.1.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4443
    Versions affected: WebKitGTK+ before 2.22.3 and WPE WebKit before
    2.22.1.
    Credit to lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4464
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to HyungSeok Han, DongHyeon Oh, and Sang Kil Cha of KAIST
    Softsec Lab, Korea.
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
December 13, 2018

