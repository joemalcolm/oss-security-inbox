Received: (qmail 28277 invoked by uid 550); 19 Sep 2022 12:45:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28243 invoked from network); 19 Sep 2022 12:45:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=uJmE8JG9IIo2FDQ6/topvnKTrXoiXEHMJHMUyBB1GvM=; b=L/ebiGw5HBbPjtT3Fw9504xTnH
	AgpvTEbin8OZ4nrqsEaF0FXyHWyxhxUE1a4fpGr1ovrDfqpTib3hoiKIJO8MknYgAwEAp/72d7GVq
	ywhNqW84CialCWfFdc9erO/A2sLErE4R3Rq02ifw0CZCqn8Y34yb/4BPmY+IVl8lhrDkWJ06gwR92
	9xXGVh4HQ16oughNWeI803mptUG3kwZW1aP5HvupKGyyfBs61Pm5PO5g2t1jJunJ0bRJ71qqmg6hA
	sZDRCsVjm5VdILaqLItwigjtpmMN5oRJtYhS6tdLANS7+vyB6o28BZSc03FDLh3W+LHa7hX/vJwET
	6lc5jMtA==;
Message-ID: <59540946-5cbe-d264-4edc-2a2874ed222c@igalia.com>
Date: Mon, 19 Sep 2022 14:44:45 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0009

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0009
------------------------------------------------------------------------

Date reported           : September 19, 2022
Advisory ID             : WSA-2022-0009
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0009.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0009.html
CVE identifiers         : CVE-2022-32886, CVE-2022-32891,
                          CVE-2022-32912.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-32886
    Versions affected: WebKitGTK and WPE WebKit before 2.36.8.
    Credit to P1umer, afang5472, xmzyshypnc.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A buffer overflow issue was
    addressed with improved memory handling.

CVE-2022-32891
    Versions affected: WebKitGTK and WPE WebKit before 2.36.5.
    Credit to @real_as3617, an anonymous researcher.
    Impact: Visiting a website that frames malicious content may lead to
    UI spoofing. Description: The issue was addressed with improved UI
    handling.

CVE-2022-32912
    Versions affected: WebKitGTK and WPE WebKit before 2.36.8.
    Credit to Jeonghoon Shin (@singi21a) at Theori working with Trend
    Micro Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: An out-of-bounds read was
    addressed with improved bounds checking.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
September 19, 2022
