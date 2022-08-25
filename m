Received: (qmail 3335 invoked by uid 550); 25 Aug 2022 21:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3302 invoked from network); 25 Aug 2022 21:34:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=2Ykn4mEh3G19ehd2F92BqoewqqAJk1okW7b/5TPuIQw=; b=m949zs35xW+wJyDtZKSvOhFgs2
	V4zvatuftasHqTFd+70mFVlUfY+i1r6ge3XoBskrIXGYLvcG0KFrmrNH1wmEDzDa3GdEgEgQONkZE
	3E4TTI+ROE6tnZTBOwo3+f8YbwaZP+bris/WmGGEc9Y4GYuJ0IpY0vS/ZmgH58WxdvEgzSr5AXWnj
	5TShT/imBgWyHAs/SbfUs9gkqeiOyoXf7MsnthNlS0zxZWOT8284+Tspl7GMn4VTSVUXEHzeLAZSj
	Wbr4R0T4YODlUFuMr66+aErI3KhZHz8pzyBYEzJu57LgdP6+gnWqRosjyryYVZC0YLRvF77EEigTU
	fEurhEnw==;
Message-ID: <b2f4c0a2-695c-7744-2397-269a1e588c31@igalia.com>
Date: Thu, 25 Aug 2022 23:34:04 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0008

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0008
------------------------------------------------------------------------

Date reported           : August 25, 2022
Advisory ID             : WSA-2022-0008
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0008.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0008.html
CVE identifiers         : CVE-2022-32893.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2022-32893
    Versions affected: WebKitGTK and WPE WebKit before 2.36.7.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
August 25, 2022
