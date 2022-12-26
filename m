Received: (qmail 27720 invoked by uid 550); 26 Dec 2022 17:15:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27689 invoked from network); 26 Dec 2022 17:15:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=OnZ8N6eMgJCf+tqwOx+8StXo2+9JJlX2QuPTc2rHrxc=; b=KcffF5lHT3PtNoG9NIk+5/Ck5U
	tN3CZuTK6qywj27z8LKzofMjesX+iZanUaqvURMO05ogVuZPZxVejZZaOTZ48KrgBdLukzp88Eh6k
	6e3f05f5Vk3hxAt78aAyp4OyjVvcIudtBGlCIQ/3oSPPg/ubdJGoQVmTQnK6bekQburTCW1z4pqRy
	vrP4hMxridFuyh+PWM+o+23eSZrAgNd7uOe1flSoP0kv4l+2L5mJGZnpRewxzFs5QLfUuoTFDTF0+
	DYIZ5J7FXMH06v1dxPNLBOaKTMv+ESKBGS1nPsFmKiqfmLcScfk+n29vnPGAjzt3o+BTLGGGIIK3z
	jV4sW+bw==;
Message-ID: <22302fa4-b994-7a92-83d0-2c83c344bcfb@igalia.com>
Date: Mon, 26 Dec 2022 18:15:30 +0100
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
Content-Transfer-Encoding: 8bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0011

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0011
------------------------------------------------------------------------

Date reported           : December 26, 2022
Advisory ID             : WSA-2022-0011
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0011.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0011.html
CVE identifiers         : CVE-2022-42852, CVE-2022-42856,
                          CVE-2022-42863, CVE-2022-42867,
                          CVE-2022-46691, CVE-2022-46692,
                          CVE-2022-46698, CVE-2022-46699,
                          CVE-2022-46700.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-42852
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to hazbinhotel working with Trend Micro Zero Day Initiative.
    Impact: Processing maliciously crafted web content may result in the
    disclosure of process memory. Description: The issue was addressed
    with improved memory handling.

CVE-2022-42856
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to Clément Lecigne of Google's Threat Analysis Group.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A type confusion issue was
    addressed with improved state handling.

CVE-2022-42863
    Versions affected: WebKitGTK and WPE WebKit before 2.38.0.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved state management.

CVE-2022-42867
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to Maddie Stone of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A use after free issue was
    addressed with improved memory management.

CVE-2022-46691
    Versions affected: WebKitGTK and WPE WebKit before 2.38.1.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory consumption issue
    was addressed with improved memory handling.

CVE-2022-46692
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to KirtiKumar Anandrao Ramchandani.
    Impact: Processing maliciously crafted web content may bypass Same
    Origin Policy. Description: A logic issue was addressed with
    improved state management.

CVE-2022-46698
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to Dohyun Lee (@l33d0hyun) of DNSLab at Korea University,
    Ryan Shin of IAAI SecLab at Korea University.
    Impact: Processing maliciously crafted web content may disclose
    sensitive user information. Description: A logic issue was addressed
    with improved checks.

CVE-2022-46699
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to Samuel Groß of Google V8 Security.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved state management.

CVE-2022-46700
    Versions affected: WebKitGTK and WPE WebKit before 2.38.3.
    Credit to Samuel Groß of Google V8 Security.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved input validation.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
December 26, 2022
