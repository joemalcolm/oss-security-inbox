Received: (qmail 11761 invoked by uid 550); 21 Jul 2023 15:42:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11726 invoked from network); 21 Jul 2023 15:42:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=5BnnxyR/jAQR1AAJEwdO2KksYT9OzGufoKgIT5aKUaM=; b=VFwQo80SI513dEAKufjE+eFsjS
	Q0dMDcijFgtlR1IMzlS/CM0kWWNYeg0X8217tyLEsLhkOA0dz4F2DV8QzrKL0/fP/HP+MpUB2T2w2
	m/yVHTZvgZJaWcX//m27Z63Qqa2RitKUG4orwANfTnS4eNDDKXy9hfGsktQYogmxaOy7BYEivrjmO
	N+py4J1TjlSgXsjykSWU0ukzYrsHdf9VqzLG5IHYgHKe5dtaRxq/HVHs+1waZv+JeiEtf7G8yRDM3
	Mzhvuyxxg5u4eyjt3hpB7GetdZLPMEto4IVSP7LI/cFmoHmRXua4APJ9dV/618slRf7aPOOA0suF5
	qCoOAmEw==;
Message-ID: <635dea71-43eb-d11b-f030-a2c5a39f109d@igalia.com>
Date: Fri, 21 Jul 2023 17:42:24 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0006

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0006
------------------------------------------------------------------------

Date reported           : July 21, 2023
Advisory ID             : WSA-2023-0006
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0006.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0006.html
CVE identifiers         : CVE-2023-37450, CVE-2023-32393.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-37450
    Versions affected: WebKitGTK and WPE WebKit before 2.40.4.
    Credit to an anonymous researcher.
    Impact: Processing web content may lead to arbitrary code execution.
    Apple is aware of a report that this issue may have been actively
    exploited. Description: The issue was addressed with improved
    checks.

CVE-2023-32393
    Versions affected: WebKitGTK and WPE WebKit before 2.40.0.
    Credit to Francisco Alonso (@revskills).
    Impact: Processing web content may lead to arbitrary code execution.
    Description: The issue was addressed with improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
July 21, 2023
