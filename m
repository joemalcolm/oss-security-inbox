X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["383" "Thursday" "30" "April" "2020" "14:11:22" "+0200" "Jacques Le Roux" "jacques.le.roux@les7arts.com" "<65d12083-a07c-b486-5f4e-365170833a1a@les7arts.com>" "22" "[oss-security] [CVE-2019-12425] Apache OFBiz Host Header Injection" nil nil nil "4" "2020043012:11:22" "[oss-security] [CVE-2019-12425] Apache OFBiz Host Header Injection" (number mark "U       jacques.le.r Apr 30   22/383   " thread-indent "\"[oss-security] [CVE-2019-12425] Apache OFBiz Host Header Injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12425] Apache OFBiz Host Header Injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3449 invoked by uid 550); 30 Apr 2020 12:33:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20392 invoked from network); 30 Apr 2020 12:12:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=les7arts.com;
	s=nfrance; t=1588248677;
	bh=dShBTFH3J4aEcmloRxiu4z0U/IXeuORK/D37XQrzyGE=;
	h=To:From:Subject:Date;
	z=To:=20oss-security@lists.openwall.com|From:=20Jacques=20Le=20Roux
	 =20<jacques.le.roux@les7arts.com>|Subject:=20[CVE-2019-12425]=20Ap
	 ache=20OFBiz=20Host=20Header=20Injection|Date:=20Thu,=2030=20Apr=2
	 02020=2014:11:22=20+0200;
	b=logVxvBLCVOymHgfworB6fyPkNgVLbfi0rrYEywraldDkG6BD4YYsWTxENr1aD35c
	 rSyBvThEwfMnP9m3qTFB0aOaNht7cfdMwVmBLB1SPedV9bc/gJ6D3dxJKgmG6XZRaq
	 4Q3+ak7ddHbi6z5dn1GbZghyP/cg17+wLY+7Hyvc=
To: oss-security@lists.openwall.com
From: Jacques Le Roux <jacques.le.roux@les7arts.com>
Organization: Les Arts Informatiques
Message-ID: <65d12083-a07c-b486-5f4e-365170833a1a@les7arts.com>
Date: Thu, 30 Apr 2020 14:11:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2019-12425] Apache OFBiz Host Header Injection

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 17.12.01

Description:
Apache OFBiz is vulnerable to Host header injection by accepting arbitrary hosts

Mitigation:
Upgrade to 17.12.03 or manually apply the commit at OFBIZ-11583
----

Credit:
Pradeep Jairamani <pradeepjairamani22@gmail.com>

References:
https://ofbiz.apache.org/security.html

