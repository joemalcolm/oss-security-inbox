X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["942" "Wednesday" "30" "June" "2021" "20:25:34" "+0200" "Maurits van Rees" "maurits@vanrees.org" nil "25" "[oss-security] Plone: stored XSS in folder contents" nil nil nil "6" nil nil (number mark "U       maurits@vanr Jun 30   25/942   " thread-indent "\"[oss-security] Plone: stored XSS in folder contents\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Plone: stored XSS in folder contents" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29795 invoked by uid 550); 30 Jun 2021 18:26:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28481 invoked from network); 30 Jun 2021 18:25:50 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vanrees.org; s=MBO0001;
	t=1625077536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QkH+SeqwdorBYgCd15RAiDxrkFIJbZU+ldka4lYrbeY=;
	b=LIsmtdy2ko86z6aU5UjSJ2uFHiQcyiTNHnOJ38RL16K6IDYe5d9PmZcyGniuLX1gWrm4gu
	+Fb92XTeoGStzeyiUhK/+Qx9aFlb9QDU1/4diidIWqNOQRBF780KYw3/ivajqxfXBhhM9i
	bP1lzOg1bXTojbrgqh13sRwmNRW+X2Tn7AQqnmlgkOv+W++ohu99D/JvjgTaxlG0i95pH6
	rWhxNteH3DA3eWMUTsNIIogXIxrMKD7dozU2GpGILuHziCD03tOiYMBzqCQ4RYBCGUWzrF
	/XtASKOwR2VTMX/2T3CVK4X+/7kRgrSG3tvoaR/4X0tybfpPTuu4Upy4oMfhtg==
To: oss-security@lists.openwall.com
From: Maurits van Rees <maurits@vanrees.org>
Message-ID: <5102a4b5-ade4-643b-66f3-41c0f7e4bbcc@vanrees.org>
Date: Wed, 30 Jun 2021 20:25:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-MBO-SPAM-Probability: 
Subject: [oss-security] Plone: stored XSS in folder contents

A very good day to all you lovely people!

Matt Moreschi discovered a vulnerability in Plone and reported it to the 
security list, security@plone.org.
In Plone 5.0.0 through 5.2.4, Editors are vulnerable to XSS in the 
folder contents view, if a Contributor has created a folder with a 
SCRIPT tag in the description field.
Full information is here: 
https://plone.org/security/hotfix/20210518/stored-xss-in-folder-contents
Since we had recently created a hotfix package, we decided to include a 
fix in a new version, 1.5.
This is available from 
https://pypi.org/project/Products.PloneHotfix20210518/1.5/ and 
https://plone.org/security/hotfix/20210518
The fix will be included in the affected package plone.app.content 
3.8.8, which will be included in Plone 5.2.5, expected in July.

CVE number is CVE-2021-35959:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-35959

Thanks,

-- 
Maurits van Rees https://maurits.vanrees.org/

