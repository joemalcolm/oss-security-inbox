X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1393" "Monday" "15" "February" "2021" "16:26:27" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "32" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0001" nil nil nil "2" nil nil (number mark "U       clopez@igali Feb 15   32/1393  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0001\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0001" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31947 invoked by uid 550); 15 Feb 2021 15:26:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31911 invoked from network); 15 Feb 2021 15:26:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=QsaAYgl28SLnuSLi+m+qkCzzCmqeLTmFPa3M5EnUO0Y=;
	b=Po8vcVYvgybnRjkyrtO8CR1/C8CBai+nGLiRQLe++OqSNAZG2qX2MG1vweq9I5MnOQMGkhcphftqVj7bN+npgaNsM5sun+7DYHmrRrn2PkGxSTyrM8+cHGd2i3dXUMASX0UjoVCDCD0WXGp9fQN6bdPrFRomPTv5IsrZl55la+vErLdutBB6Zl1+QxkS5uVEj8EEhYOO6QAoJvd3ynDJtn5qJIkvVjEXAk0TtoEyXUImCH6CSlogRyG4ZgYlFud/rDNAyh5/LI8PEWPJDlJvfx+PkENUTBTOrLXNEHbLYoLp93tWltr9ZPOMXEuBUmQCOHQGCZTGOtMlJ6zvyV789g==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <21a077b5-6921-04b4-9149-571ee259da97@igalia.com>
Date: Mon, 15 Feb 2021 16:26:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0001

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0001
------------------------------------------------------------------------

Date reported           : February 15, 2021
Advisory ID             : WSA-2021-0001
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0001.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0001.html
CVE identifiers         : CVE-2020-13558.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2020-13558
    Versions affected: WebKitGTK before 2.30.5 and WPE WebKit before 2.30.5.
    Credit to Marcin 'Icewall' Noga of Cisco Talos.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An use after free issue in
    the AudioSourceProviderGStreamer class was addressed with improved
    memory management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
February 15, 2021
