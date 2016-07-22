X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Friday" "22" "July" "2016" "19:18:13" "+0000" "Tim Allison" "tallison@apache.org" "<1145026931.4188822.1469215093907.JavaMail.yahoo@mail.yahoo.com>" "16" "[oss-security] [CVE-2016-5000] XML External Entity (XXE) Vulnerability in Apache POI's XLSX2CSV Example" nil nil nil "7" "2016072219:18:13" "[oss-security] [CVE-2016-5000] XML External Entity (XXE) Vulnerability in Apache POI's XLSX2CSV Example" (number mark "U       tallison@apa Jul 22   16/734   " thread-indent "\"[oss-security] [CVE-2016-5000] XML External Entity (XXE) Vulnerability in Apache POI's XLSX2CSV Example\"\n") "<1145026931.4188822.1469215093907.JavaMail.yahoo.ref@mail.yahoo.com>" ("<1145026931.4188822.1469215093907.JavaMail.yahoo.ref@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7472 invoked by uid 550); 22 Jul 2016 19:18:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7454 invoked from network); 22 Jul 2016 19:18:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1469215106; bh=79y7//rVyQyN+zKpcw8X5XOwqRUhJSngMFp6cQ56H0o=; h=Date:From:Reply-To:To:Subject:References:From:Subject; b=WcYK/Pu0DmvzHkF89Fow6aBTlPLgWEM5ivauqw9sxLm4bQ1Mq9wQW448pORfDEwonMC19k+URd3+JofJR+iMrCjoNK68XLqT1sB9QykOLB7PwaR7yFzJimw02Zk10JxGJ1Gzge5OD9JZUnMMbCTHLuF39iaJLYnq5/xgKi28pjuIWmXLW1py5PeRrTUzV+YfZvCFw+bT2UMcARte0uviSjRK5cCbTrY6lq1QN8wf7rCX5taoRguB+L/Ae10VG5m/nH5xZIs4BHjjp4E7YoETmSbuqe+2FOU9mhmzkFS+wzASkcJALVNP87W42rcQgYWVfy11ixpNiAizaddw81oGnw==
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 504219.58927.bm@omp1055.mail.bf1.yahoo.com
X-YMail-OSG: ptQH_ycVM1mXiF0r69BK9NFwQm9a0RjIy2XzF1jQLGk_8qKxlt1sOIVs.CQ0FU.
 Qk8exnMkS3SgnjIeM.QwvoQs4zX_.3yl5ayqUXWloASGFpynLQRRVZYlaHmCTHWwEQDVN8IQT3Dz
 tjuzITpqvegYdVUiSRFmUfIB99BUCRBf1_GVJRpuSBF8olum2i0OroVAJX2NL0mYb8i68bD8jUCF
 JAFarzGtmugge6MJY3HIGEXT8bDFdmK7a75VFsEybk48xk.JzXomYijYKG71HOFNOmVHgfBv.g5I
 bVJ_fnWdO.WIMVCw7.tt4sDrV.kx3qx0Ttl_7zShnBq59vj3pbmUe56pk1QvlcfcLwSJ1T5BxuUM
 QrlfVWDHq8KVDI.a2o6B0FrpEymF5snkTGreo7qBw2m19t5dKwEWbGQ3C8AJjlH8FPs9ggM8O9WB
 y0MlcrI1XXyXjVf1Dn6Q0U7s571hx0MEa53td.YL3jS9XwvAygmV3nA_CtsNxQlf_h3sfrwL1nVP
 pWY2foH2_LvrJjvWHtSXDagXN
Date: Fri, 22 Jul 2016 19:18:13 +0000 (UTC)
From: Tim Allison <tallison@apache.org>
To: "security@apache.org" <security@apache.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>, 
	"dev@poi.apache.org" <dev@poi.apache.org>, 
	"user@poi.apache.org" <user@poi.apache.org>
Message-ID: <1145026931.4188822.1469215093907.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1145026931.4188822.1469215093907.JavaMail.yahoo.ref@mail.yahoo.com>
Subject: [oss-security] [CVE-2016-5000] XML External Entity (XXE) Vulnerability in Apache
 POI's XLSX2CSV Example

CVE-2016-5000: XML External Entity (XXE) Vulnerability in Apache POI's XLSX2CSV Example 

Severity: Important 

Vendor: The Apache Software Foundation 

Versions Affected: POI 3.5-3.13 

Description: 

Apache POI's XLSX2CSV example uses Java's XML components to parse OpenXML files. Applications and users that use XLSX2CSV and accept such files from end-users are vulnerable to XML External Entity (XXE) attacks, which allow remote attackers to bypass security restrictions and read arbitrary files via a crafted OpenXML document that provides an XML external entity declaration in conjunction with an entity reference.

Mitigation: Upgrade to 3.14 or higher 


Credit: This issue was discovered by Mauro Gentile of Minded Security.
