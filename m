Received: (qmail 32499 invoked by uid 550); 8 Apr 2022 13:32:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32469 invoked from network); 8 Apr 2022 13:32:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=t7lx6ZaUN4IxgZX9xIQ7sEG4XyKWotC/P/0yhQKf7k4=; b=dYgt92n1k1i+oldcIUCDStiYgs
	2J3nvRwyudb5daHzrFK+TYK/FmPDLE7U5DuSelJKcYiWylwyJHPzEFukkVogSPKcCOWgVZr81vsPt
	mNxTuni3THChIDm8Kf9wB7ABKn/4TOCvVicgVAiIjC7sgt+FgjAcxEQhuLStK5NoAP22vKw9vb/H8
	7nL/iqO9L5Q66xuBrXbjL9/1qALFMbeItTluqX8B57c1C8kmmYkFKs1dDGsj/zBvLlqJafilcrAL3
	3dGnuYYtr6WLLtjHjS6oWzI37TCkgrh0N8U6xVKtFXaMeThtrXQoN5GGAqKT6hqF0GniJzkzRv+w9
	Z3Vju65A==;
Message-ID: <7ab10c96-aabc-5868-6ed9-2c3ec1e7c8ff@igalia.com>
Date: Fri, 8 Apr 2022 14:31:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-GB
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0004

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0004
------------------------------------------------------------------------

Date reported           : April 08, 2022
Advisory ID             : WSA-2022-0004
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0004.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0004.html
CVE identifiers         : CVE-2022-22624, CVE-2022-22628,
                          CVE-2022-22629, CVE-2022-22637.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-22624
    Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.34.7
    Credit to Kirin (@Pwnrin) of Tencent Security Xuanwu Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2022-22628
    Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.34.7
    Credit to Kirin (@Pwnrin) of Tencent Security Xuanwu Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2022-22629
    Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.34.7
    Credit to Jeonghoon Shin at Theori working with Trend Micro Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A buffer overflow issue was
    addressed with improved memory handling.

CVE-2022-22637
    Versions affected: WebKitGTK before 2.34.4 and WPE WebKit before 2.34.4
    Credit to Tom McKee of Google.
    Impact: A malicious website may cause unexpected cross-origin
    behavior. Description: A logic issue was addressed with improved
    state management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
April 08, 2022
