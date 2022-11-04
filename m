Received: (qmail 24106 invoked by uid 550); 4 Nov 2022 13:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24074 invoked from network); 4 Nov 2022 13:58:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=T+BlJmj2Mi99NAkdcMuh57h66CFgpRqYtzNjs8mWSMc=; b=JtWgsEocsSrXEnt7B2ErJ3PQyO
	SCrwDqw957MbspL1kol+bIOR+MdSzCnmRHaRGgNBV7C1HfMNZ9YwKeIDPgXPoM3MfkgBnRhmbk2sf
	lrM+3Jf6xq4UuWmWkoBAux4vlbculqQERpIEkKZsbI33vn0xvsEKMrgQ+vybGbi1i0F3nhkCgcWoF
	EQwX9Xl6y5DfbO2X+Eh7kKTzkaodOvUBzVUqsI1Zi4qciywqOFPMS8PFYgWTGphf9jon3wEkRmrD5
	y309QDd8e0DHqYZpMBkLcTkEm+C/myIHkTY08dr4bZa1eFTd/aImmOU8WAkaYSXGlvgmUBp5dSBAH
	ISTy3fMg==;
Message-ID: <1dc711a9-42e7-91c6-e015-ec75cddac21f@igalia.com>
Date: Fri, 4 Nov 2022 14:58:14 +0100
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0010

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0010
------------------------------------------------------------------------

Date reported           : November 04, 2022
Advisory ID             : WSA-2022-0010
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0010.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0010.html
CVE identifiers         : CVE-2022-32888, CVE-2022-32923,
                          CVE-2022-42799, CVE-2022-42823,
                          CVE-2022-42824.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-32888
    Versions affected: WebKitGTK and WPE WebKit before 2.38.0.
    Credit to P1umer (@p1umer).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An out-of-bounds write issue
    was addressed with improved bounds checking.

CVE-2022-32923
    Versions affected: WebKitGTK and WPE WebKit before 2.38.0.
    Credit to Wonyoung Jung (@nonetype_pwn) of KAIST Hacking Lab.
    Impact: Processing maliciously crafted web content may disclose
    internal states of the app. Description: A correctness issue in the
    JIT was addressed with improved checks.

CVE-2022-42799
    Versions affected: WebKitGTK and WPE WebKit before 2.38.2.
    Credit to Jihwan Kim (@gPayl0ad), Dohyun Lee. (@l33d0hyun).
    Impact: Visiting a malicious website may lead to user interface
    spoofing. Description: The issue was addressed with improved UI
    handling.

CVE-2022-42823
    Versions affected: WebKitGTK and WPE WebKit before 2.38.2.
    Credit to Dohyun Lee (@l33d0hyun) of SSD Labs.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A type confusion issue was
    addressed with improved memory handling.

CVE-2022-42824
    Versions affected: WebKitGTK before 2.38.2.
    Credit to Abdulrahman Alqabandi of Microsoft Browser Vulnerability
    Research, Ryan Shin of IAAI SecLab at Korea University, Dohyun Lee
    (@l33d0hyun) of DNSLab at Korea University.
    Impact: Processing maliciously crafted web content may disclose
    sensitive user information. Description: A logic issue was addressed
    with improved state management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
November 04, 2022
