X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Monday" "20" "September" "2021" "12:49:39" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "32" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0005" nil nil nil "9" nil nil (number mark "U       clopez@igali Sep 20   32/1402  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0005\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0005" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22095 invoked by uid 550); 20 Sep 2021 11:50:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22065 invoked from network); 20 Sep 2021 11:50:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=bmwXDFMYaw6D4KWAAO5DFE5oYj3x4R2v1250LqZd160=;
	b=YKUWN7MTwp762DWgXX/aJDbakvjHR1ucPXE2wdacEFquJgjx9DNfuVQD6t1/rPtR1tsJFJh9ZAEPPdSqbCYet/akioBsRiVuyDpnCXBYWQm8QTR2pkcA81U2WfOUEBb2EZLYQQHJ4AW3291f+iXJ/WT60wpLvHLDLm/TLk96jWW5cx3hjzyhUouwRumhxot4Pt+VJu4avsJeU8Dicb/8QpWvD2wjU9q7UQLBc9Pb42YWwuwc2twRVAFTHmqqR20fOwbWprkhfEnFYmPxr9LYfar0pvAqY4Uks01VHxndU8rWEX7aJ6Og08vFiQ9roDsQO+/6jXnJX6/Vhs9Kgd0MGA==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <6fe1e735-82c6-91e0-d6e7-b0b237f2870c@igalia.com>
Date: Mon, 20 Sep 2021 12:49:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0005

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0005
------------------------------------------------------------------------

Date reported           : September 20, 2021
Advisory ID             : WSA-2021-0005
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0005.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0005.html
CVE identifiers         : CVE-2021-30858.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2021-30858
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A use after free
    issue was addressed with improved memory management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
September 20, 2021
