X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2131" "Monday" "29" "March" "2021" "23:38:05" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "47" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0003" nil nil nil "3" nil nil (number mark "U       clopez@igali Mar 29   47/2131  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0003\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0003" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31919 invoked by uid 550); 29 Mar 2021 21:38:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31886 invoked from network); 29 Mar 2021 21:38:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=yO8A6kzUxUWvmz9QCADtFVAoF96KWEWdCRvSV8YogE4=;
	b=T4sR7O4JXJaGGbp4jwER+9arRA2zAKWG97Yv1qgGSInBOldfRikaUKab+Mf7TKDzy7M0Ms9Gm7Qgclk2p3ximoV3+bNGPzgU6/A2CSU0Teo9xRXuPmTj3o2Seour7/c9zShqLCitzp4ETj/wgxRm7ItdxlhX7wtZdXDPF/OeRbiPW8KhxLwKo/iBeyR7WCFbOfwX902oYmLvmYAQCTafwdsb6y9mgSVhXZLtVlss69dTDjaQw/4MutfdCykti+ALi3Ac9fqflQ6vWBkgoJFz/ICaS6yDvBfifO+OxeHPDT7deGHbvqQ6nleLPyhN/+WQ0hMgE+ECCg1mwIOIarFA7w==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <d715b87f-7b4c-e566-fb3c-92b495c0fedc@igalia.com>
Date: Mon, 29 Mar 2021 23:38:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0003

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0003
------------------------------------------------------------------------

Date reported           : March 29, 2021
Advisory ID             : WSA-2021-0003
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0003.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0003.html
CVE identifiers         : CVE-2021-1788, CVE-2021-1844, CVE-2021-1871.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2021-1788
    Versions affected: WebKitGTK before 2.32.0 and WPE WebKit before 2.32.0.
    Credit to Francisco Alonso (@revskills).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2021-1844
    Versions affected: WebKitGTK before 2.32.0 and WPE WebKit before 2.32.0.
    Credit to Clément Lecigne of Google’s Threat Analysis Group, Alison
    Huffman of Microsoft Browser Vulnerability Research.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved validation.

CVE-2021-1871
    Versions affected: WebKitGTK before 2.32.0 and WPE WebKit before 2.32.0.
    Credit to an anonymous researcher.
    Impact: A remote attacker may be able to cause arbitrary code
    execution. Apple is aware of a report that this issue may have been
    actively exploited. Description: A logic issue was addressed with
    improved restrictions.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
March 29, 2021
