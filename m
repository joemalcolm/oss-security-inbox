X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6798" "Wednesday" "10" "April" "2019" "21:51:02" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" nil "167" nil nil nil nil "4" nil nil (number mark "U       mcatanzaro@i Apr 10  167/6798  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2019-0002\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2019-0002" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11495 invoked by uid 550); 11 Apr 2019 10:52:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15449 invoked from network); 11 Apr 2019 02:51:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=3HrwUN0PqBEKOu4MB3PmWydQvXyVzpqqJzvPMQn8//U=;
	b=JvGU4GSWnoFdII1o72C2OuoC51ZCEJyxb87S/AeHLc63jGrvFHpjEmBvD7KiFe+WTkgofbI/yif4L/2eUVF/pA/NYDtjLpCI2TIZXkUtjXx4HilsnqXsyfdTR9f1guCzPRK1SY5Ruh8EEkR6iO6oc786mEzeko0vz9So8YYfKpAfj1dBqAMwh00XwHlZz27IFpzuxDT0qLiFId7FOoTsE2fOmrBKDSrMA13rmrngo8qdxSJeZLGQRVAG/AOVmY9cJwlC2cJtI8Kl7nhcqCPRjjspDb6bB7U8dNwGvwEH8rdJ0iRADUuEQAfvSAPmgJV1JBqdMboPv+sW3zmZAWb/tQ==;
Date: Wed, 10 Apr 2019 21:51:02 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1554951062.13418.0@igalia.com>
X-Mailer: geary/3.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2019-0002

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory WSA-2019-0002
------------------------------------------------------------------------

Date reported : April 10, 2019
Advisory ID : WSA-2019-0002
WebKitGTK Advisory URL :=20
https://webkitgtk.org/security/WSA-2019-0002.html
WPE WebKit Advisory URL :=20
https://wpewebkit.org/security/WSA-2019-0002.html
CVE identifiers : CVE-2019-6201, CVE-2019-6251, CVE-2019-7285,
                          CVE-2019-7292, CVE-2019-8503, CVE-2019-8506,
                          CVE-2019-8515, CVE-2019-8518, CVE-2019-8523,
                          CVE-2019-8524, CVE-2019-8535, CVE-2019-8536,
                          CVE-2019-8544, CVE-2019-8551, CVE-2019-8558,
                          CVE-2019-8559, CVE-2019-8563, CVE-2019-11070.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2019-6201
    Versions affected: WebKitGTK before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to dwfault working with ADLab of Venustech.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-6251
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to Dhiraj.
    Processing maliciously crafted web content may lead to spoofing.
    WebKitGTK and WPE WebKit were vulnerable to a URI spoofing attack
    similar to the CVE-2018-8383 issue in Microsoft Edge.

CVE-2019-7285
    Versions affected: WebKitGTK before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to dwfault working at ADLab of Venustech.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A use after free issue was addressed with improved
    memory management.

CVE-2019-7292
    Versions affected: WebKitGTK before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to Zhunki and Zhiyi Zhang of 360 ESG Codesafe Team.
    Processing maliciously crafted web content may result in the
    disclosure of process memory. A validation issue was addressed with
    improved logic.

CVE-2019-8503
    Versions affected: WebKitGTK before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to Linus S=E4rud of Detectify.
    A malicious website may be able to execute scripts in the context of
    another website. A logic issue was addressed with improved
    validation.

CVE-2019-8506
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Samuel Gro=DF of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A type confusion issue was addressed with improved
    memory handling.

CVE-2019-8515
    Versions affected: WebKitGTK before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to James Lee, @Windowsrcer.
    Processing maliciously crafted web content may disclose sensitive
    user information. A cross-origin issue existed with the fetch API.
    This was addressed with improved input validation.

CVE-2019-8518
    Versions affected: WebKitGTK before 2.22.7 and WPE WebKit before
    2.22.5.
    Credit to Samuel Gro=DF of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8523
    Versions affected: WebKitGTK before 2.22.7 and WPE WebKit before
    2.22.5.
    Credit to Apple.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8524
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to G. Geshev working with Trend Micro Zero Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8535
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Zhiyang Zeng, @Wester, of Tencent Blade Team.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved state management.

CVE-2019-8536
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Apple.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2019-8544
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to an anonymous researcher.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2019-8551
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Ryan Pickren, ryanpickren.com.
    Processing maliciously crafted web content may lead to universal
    cross site scripting. A logic issue was addressed with improved
    validation.

CVE-2019-8558
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Samuel Gro=DF of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8559
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Apple.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-8563
    Versions affected: WebKitGTK and WPE WebKit before 2.24.0.
    Credit to Apple.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-11070
    Versions affected: WebKitGTK and WPE WebKit before 2.24.1.
    Credit to Igalia.
    WebKitGTK and WPE WebKit failed to properly apply configured HTTP
    proxy settings when downloading livestream video (HLS, DASH, or
    Smooth Streaming), an error resulting in deanonymization. This issue
    was corrected by changing the way livestreams are downloaded.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
April 10, 2019


