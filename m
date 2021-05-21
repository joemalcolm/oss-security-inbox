X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1884" "Friday" "21" "May" "2021" "16:07:57" "+0200" "Maurits van Rees" "maurits@vanrees.org" nil "45" "[oss-security] Plone security hotfix 20210518" nil nil nil "5" nil nil (number mark "U       maurits@vanr May 21   45/1884  " thread-indent "\"[oss-security] Plone security hotfix 20210518\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Plone security hotfix 20210518" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10081 invoked by uid 550); 21 May 2021 14:23:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1283 invoked from network); 21 May 2021 14:08:17 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vanrees.org; s=MBO0001;
	t=1621606083;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0DM3Yit68O9ZMS6GGYOeXv1xJv8ztWDgeyVWqUGDTgY=;
	b=e5GLU7FelMWwVB8eom6NylAxYZ2cHXcHZbbyjCp1ydb2Ad8bv6rbNNflO7XX3rSzj7H14a
	r1jDQZR7ox8jL9E7QU0HbIulEwrEf5NNqmcqKvpBmdYzy7tW7vIrXS/t3GKbxGuvsYHdMb
	1whNi5Z8dko7EQXuGvF+DFpdk1QnRWgYV4Hs8vzlnwBNJlVwgp2Gzz6Dtyh7Gf3booos2j
	fOZFEdZWyuau7vR0godPU63AQZ++L8vkf4zL/g6mZtS7EX/d349EyPGYPmkZD/Y5gE5lwa
	yyh76MDpnDhX3dS11hBI6DvNvzc1W9LbfPZVkqfkAP+DL2AB7mUSAs2/madBNw==
To: oss-security@lists.openwall.com
From: Maurits van Rees <maurits@vanrees.org>
Message-ID: <0919707c-0f29-ac46-35f5-d6890faf0f4e@vanrees.org>
Date: Fri, 21 May 2021 16:07:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-MBO-SPAM-Probability: 
Subject: [oss-security] Plone security hotfix 20210518

A Plone security hotfix was released on Tuesday, May 18 2021.
For details, see https://plone.org/security/hotfix/20210518
Most CVE numbers are not yet issued. I will request them from Mitre shortly.

BTW, I am following the instructions at 
https://oss-security.openwall.org/wiki/mailing-lists/oss-security#cve-requests 
to first post to this list, then request CVEs at Mitre, then reply to my 
own post.
I don't see many other people doing it in this order. Is that page still 
accurate?

Versions Affected: All supported Plone versions (4.3.20 and any earlier 
4.3.x version, 5.2.4 and any earlier 5.x version).

Versions Not Affected: None. Earlier versions may be affected, but the 
hotfix has not been tested on them.

The patch addresses several security issues:

- Remote Code Execution via traversal in expressions. Reported by David 
Miller. CVE-2021-32633.
- Writing arbitrary files via docutils and Python Script. Reported by 
Calum Hutton.
- Various information disclosures: mostly installation logs. Reported by 
Calum Hutton. CVE-2021-21360 and CVE-2021-21336.
- Stored XSS from file upload (svg, html). Reported separately by Emir 
Cüneyt Akkutlu and Tino Kautschke.
- Reflected XSS in various spots. Reported by Calum Hutton.
- XSS vulnerability in CMFDiffTool. Reported by Igor Margitich.
- Stored XSS from user fullname. Reported by Tino Kautschke.
- Blind SSRF via feedparser accessing an internal URL. Reported by 
Subodh Kumar Shree.
- Server Side Request Forgery via event ical URL. Reported by MisakiKata 
and David Miller.
- Server Side Request Forgery via lxml parser. Reported by MisakiKata 
and David Miller.

A hotfix package has been created at 
https://pypi.org/project/Products.PloneHotfix20210518/
The fixes will be incorporated in future release Plone 5.2.5.

-- 
Maurits van Rees https://maurits.vanrees.org/
Plone Security Team security@plone.org

