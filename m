Received: (qmail 3740 invoked by uid 550); 11 Sep 2023 16:06:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3707 invoked from network); 11 Sep 2023 16:06:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=kq+SxBtvIe2UmgnebBQG0hQYxni2qw2gcqGpgb3/70s=; b=INdHxWU5iCvCyEevflXNOpjdsl
	3C2Oz+xYWVunL4AQj2589JXHq1H/rLOpFctAsi4mLaodCZxco62vJJ4Kd/T9xfsfiybZ3ZHguFt7K
	3khOaFn4lb7y54sEXJilfArAJSvKu8aRjXDRtjur1Qbom9Lw4BlXnbabXpTL+vDE0ceSbgERCZkYv
	b0ApWSVigUzH0Fly5CZn4wAI2eHv1i52NHVietYxbbjhD/9aFkGxsVvBNGSfzsOu8yC4AbIcyTaaR
	doaOowj8zDJjKeqhfdW8HtHWugGbiBdsQmv1WIaH9M+emRYwY7tGAWiYrhDT9RtQkxV65p5PeD2HV
	Xr/xSHWw==;
Message-ID: <e3905b54-e8b1-05dc-8216-3c3c32bdbf58@igalia.com>
Date: Mon, 11 Sep 2023 18:05:55 +0200
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
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2023-0008

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2023-0008
------------------------------------------------------------------------

Date reported           : September 11, 2023
Advisory ID             : WSA-2023-0008
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2023-0008.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2023-0008.html
CVE identifiers         : CVE-2023-28198, CVE-2023-32370,
                          CVE-2023-40397.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2023-28198
    Versions affected: WebKitGTK and WPE WebKit before 2.40.1.
    Credit to hazbinhotel working with Trend Micro Zero Day Initiative.
    Impact: Processing web content may lead to arbitrary code execution.
    Description: A use-after-free issue was addressed with improved
    memory management.

CVE-2023-32370
    Versions affected: WebKitGTK and WPE WebKit before 2.40.1.
    Credit to Gertjan Franken of imec-DistriNet, KU Leuven.
    Impact: Content Security Policy to block domains with wildcards may
    fail. Description: A logic issue was addressed with improved
    validation.

CVE-2023-40397
    Versions affected: WebKitGTK and WPE WebKit before 2.40.5.
    Credit to Johan Carlsson (joaxcar).
    Impact: A remote attacker may be able to cause arbitrary javascript
    code execution. Description: The issue was addressed with improved
    checks.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
September 11, 2023
