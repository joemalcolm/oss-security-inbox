X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/14/3
Message-ID: <Pine.GSO.4.51.0808141701471.17005@faron.mitre.org>
Date: Thu, 14 Aug 2008 17:01:57 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: HAVP 0.89 fixes a crash
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-3688
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-3688
Reference: MLIST:[havp-devel] 20080715 Infinite loop which causes havp to block completely
Reference: URL:https://sourceforge.net/mailarchive/message.php?msg_name=487CDF51.5060201%40endian.com
Reference: CONFIRM:http://www.server-side.de/index.htm

sockethandler.cpp in HTTP Antivirus Proxy (HAVP) 0.88 allows remote
attackers to cause a denial of service (hang) by connecting to a
non-responsive server, which triggers an infinite loop due to an
uninitialized variable.


