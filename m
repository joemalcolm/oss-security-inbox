Received: (qmail 13374 invoked by uid 550); 30 May 2023 16:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13344 invoked from network); 30 May 2023 16:53:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=FM47Jojk6yEM4e/93nqJ0uqAigxhXbOIxxikHNywttM=; b=jRUqbPCPRBWVLn0tt+Tpm2YCCJ
	i5ndCPesmTTPeRzud26TwFFYDQVBGQ+XNxLsstRfOzfD038MrHY44La45KdIpELJQ7+sKPxAXMjtQ
	c3cLoqSmAJAF0jTyCBjiaP6xj/J5g7VYrTKwcOKeVfivEYt84w1Q5KAz8WdFTgqZzP804YDkJ5VLq
	NDXtw6PqlsSeXJIcg4mMFkpx7XHe4z/c+uV2eYo/1J6c/0Tat6Qm6bYPn/tIOBWBWm5qMoMwR0JrU
	Y1Kb69S/BfJxcAd/y+6+2gMNKjio49zydON29QWFdMi58FoDMkRlKJ7GH/N5EioX1uwK/ugo2RKes
	85EUW+Gg==;
Message-ID: <33a99dc0-7403-3ac8-d3df-59544fac800d@igalia.com>
Date: Tue, 30 May 2023 18:53:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-GB
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, oss-security@lists.openwall.com
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0004

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0004
------------------------------------------------------------------------

Date reported           : May 30, 2023
Advisory ID             : WSA-2023-0004
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0004.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0004.html
CVE identifiers         : CVE-2023-28204, CVE-2023-32373.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-28204
    Versions affected: WebKitGTK and WPE WebKit before 2.40.2.
    Credit to an anonymous researcher.
    Impact: Processing web content may disclose sensitive information.
    Apple is aware of a report that this issue may have been actively
    exploited. Description: An out-of-bounds read was addressed with
    improved input validation.

CVE-2023-32373
    Versions affected: WebKitGTK and WPE WebKit before 2.40.2.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A use-after-free
    issue was addressed with improved memory management.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
May 30, 2023
