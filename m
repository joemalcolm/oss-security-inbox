X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5932" "Tuesday" "7" "August" "2018" "21:00:19" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1533693619.3820.0@mail.igalia.com>" "152" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0006" nil nil nil "8" "2018080802:00:19" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0006" (number mark "U       mcatanzaro@i Aug  7  152/5932  " thread-indent "\"[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0006\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6024 invoked by uid 550); 8 Aug 2018 08:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6008 invoked from network); 8 Aug 2018 02:00:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=jBy9CnDeuUqZZ0XnhtAYDaVw0Of7KBMtHYXnmBU+IMY=;
	b=jOHsDHn9xBnD9P/IB+XERO+YcBdyg4iHob1n09Hiua8zfjz/+m8sQEVCmI1R5mVGLEvL3CuGN0Nq42BRTVdy2QWx2U380kLuFKGXD2zkmhOjyZbqmnCFuyNtuj8ssxVHXk1vh9gIjU3bi4pqFgmiDlVf5Ip73wHkelz9JmZU/7C/iOGCYn4X290f2MSXo8DeOXfA46vr5dopvM+x15Q0tkBg74MfZBRmQEyq/OLjp5n1H/erDgSwS0osio9w8Ix4P5lb/JxyXiUYj5/zRwChuib3KWUJIjZs1dPHJOyiL0JhxdCgTvsz2gKDyMrobLS1HURI3bJ1clvqqbH9tVsaFQ==;
Date: Tue, 07 Aug 2018 21:00:19 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1533693619.3820.0@mail.igalia.com>
X-Mailer: geary/0.12.3
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2018-0006

------------------------------------------------------------------------
WebKitGTK+ and WPE WebKit Security Advisory                WSA-2018-0006
------------------------------------------------------------------------

Date reported           : August 07, 2018
Advisory ID             : WSA-2018-0006
WebKitGTK+ Advisory URL : 
https://webkitgtk.org/security/WSA-2018-0006.html
WPE WebKit Advisory URL : 
https://wpewebkit.org/security/WSA-2018-0006.html
CVE identifiers         : CVE-2018-4246, CVE-2018-4261, CVE-2018-4262,
                          CVE-2018-4263, CVE-2018-4264, CVE-2018-4265,
                          CVE-2018-4266, CVE-2018-4267, CVE-2018-4270,
                          CVE-2018-4271, CVE-2018-4272, CVE-2018-4273,
                          CVE-2018-4278, CVE-2018-4284, CVE-2018-12911.

Several vulnerabilities were discovered in WebKitGTK+ and WPE WebKit.

CVE-2018-4246
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.1.
    Credit to OSS-Fuzz.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A type confusion issue was addressed with improved
    memory handling.

CVE-2018-4261
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to Omair working with Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4262
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to Mateusz Krzywicki working with Trend Micro's Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4263
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to Arayz working with Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4264
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to OSS-Fuzz, Yu Zhou and Jundong Xie of Ant-financial Light-
    Year Security Lab.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4265
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to cc working with Trend Micro's Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4266
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to OSS-Fuzz.
    A malicious website may be able to cause a denial of service. A race
    condition was addressed with additional validation.

CVE-2018-4267
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to Arayz of Pangu team working with Trend Micro's Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4270
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to OSS-Fuzz.
    Processing maliciously crafted web content may lead to an unexpected
    application crash. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4271
    Versions affected: WebKitGTK+ before 2.20.2.
    Credit to OSS-Fuzz.
    Processing maliciously crafted web content may lead to an unexpected
    application crash. A memory corruption issue was addressed with
    improved input validation.

CVE-2018-4272
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to OSS-Fuzz.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2018-4273
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to OSS-Fuzz.
    Processing maliciously crafted web content may lead to an unexpected
    application crash. A memory corruption issue was addressed with
    improved input validation.

CVE-2018-4278
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to Jun Kokatsu (@shhnjk).
    A malicious website may exfiltrate audio data cross-origin. Sound
    fetched through audio elements may be exfiltrated cross-origin. This
    issue was addressed with improved audio taint tracking.

CVE-2018-4284
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to OSS-Fuzz.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A type confusion issue was addressed with improved
    memory handling.

CVE-2018-12911
    Versions affected: WebKitGTK+ before 2.20.4 and WPE WebKit before
    2.20.2.
    Credit to Yu Haiwan.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A buffer overflow issue was addressed with improved
    memory handling.


We recommend updating to the latest stable versions of WebKitGTK+ and
WPE WebKit. It is the best way to ensure that you are running safe
versions of WebKit. Please check our websites for information about the
latest stable releases.

Further information about WebKitGTK+ and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK+ and WPE WebKit team,
August 07, 2018

