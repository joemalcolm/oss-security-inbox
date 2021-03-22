X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3852" "Monday" "22" "March" "2021" "20:41:36" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "85" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0002" nil nil nil "3" nil nil (number mark "U       clopez@igali Mar 22   85/3852  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0002\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0002" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17500 invoked by uid 550); 22 Mar 2021 19:42:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17467 invoked from network); 22 Mar 2021 19:41:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=Zy3GqEw9k2D4X2uUmMVT0Uxzydqu60xjc3jPF7kqqlY=;
	b=HRgX1hdQvSs4e5Me6X3QpJxN2bBeb91Cj+n+M18Hj3dooiyLMHsAZaGYtKFgZVx51Ya5s/IUB+c0gNz5qk6vQqPurcG/Q+SKa8x+xdcU2xGJ4dCzmr3WROlU8lGUdMBuxk/k+HMjyLJQyYXgvVGH5o6bps+EYTDGFdt2yXRLLN0DO/5jtzKKe8Ee7IXi4FzXO4YpTqSFp10/aWsJIJcDpyJdSbz2qEdhcfQWvQXJskDB5/AiiWYP1iviIbzhRGmDngpEy0Ckt6wz37czvqw1joBIMaZ0sCydXaiyR+GhOPi4EZotJpw/eomXZYutZInH+o+jHlu469KhajPRtk+lBA==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <fef0f10f-a8db-f14d-eb25-4329f1c914f8@igalia.com>
Date: Mon, 22 Mar 2021 20:41:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0002

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0002
------------------------------------------------------------------------

Date reported           : March 22, 2021
Advisory ID             : WSA-2021-0002
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0002.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0002.html
CVE identifiers         : CVE-2020-27918, CVE-2020-29623, CVE-2020-9947,
                          CVE-2021-1765, CVE-2021-1789, CVE-2021-1799,
                          CVE-2021-1801, CVE-2021-1870.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2020-27918
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
    Credit to Liu Long of Ant Security Light-Year Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2020-29623
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
    Credit to Simon Hunt of OvalTwo LTD.
    Impact: A user may be unable to fully delete browsing history.
    Description: "Clear History and Website Data" did not clear the
    history in some circumstances. The issue was addressed with improved
    data deletion.

CVE-2020-9947
    Versions affected: WebKitGTK before 2.30.0 and WPE WebKit before 2.30.0.
    Credit to cc working with Trend Micro Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2021-1765
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
    Credit to Eliya Stein of Confiant.
    Impact: Maliciously crafted web content may violate iframe
    sandboxing policy. Description: This issue was addressed with
    improved iframe sandbox enforcement.

CVE-2021-1789
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
    Credit to @S0rryMybad of 360 Vulcan Team.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A type confusion issue was
    addressed with improved state handling.

CVE-2021-1799
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
    Credit to Gregory Vishnepolsky & Ben Seri of Armis Security, and
    Samy Kamkar.
    Impact: A malicious website may be able to access restricted ports
    on arbitrary servers, Description: A port redirection issue was
    addressed with additional port validation.

CVE-2021-1801
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
    Credit to Eliya Stein of Confiant.
    Impact: Maliciously crafted web content may violate iframe
    sandboxing policy. Description: This issue was addressed with
    improved iframe sandbox enforcement.

CVE-2021-1870
    Versions affected: WebKitGTK before 2.30.6 and WPE WebKit before 2.30.6.
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
March 22, 2021
