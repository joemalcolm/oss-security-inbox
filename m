X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["380" "Wednesday" "15" "July" "2020" "14:52:06" "+0200" "Jacques Le Roux" "jacques.le.roux@les7arts.com" "<80419b02-d26e-ed33-dc58-afecf4442ffb@les7arts.com>" "20" "[oss-security] [CVE-2020-13923] IDOR in Apache OFBiz" nil nil nil "7" "2020071512:52:06" "[oss-security] [CVE-2020-13923] IDOR in Apache OFBiz" (number mark "U       jacques.le.r Jul 15   20/380   " thread-indent "\"[oss-security] [CVE-2020-13923] IDOR in Apache OFBiz\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13923] IDOR in Apache OFBiz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27732 invoked by uid 550); 15 Jul 2020 13:22:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19640 invoked from network); 15 Jul 2020 12:52:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=les7arts.com;
	s=nfrance; t=1594817522;
	bh=rssZKys3Ef2kcDLr106fVlT8v5HPmESrCcaZuqhOYqk=;
	h=To:Reply-To:From:Subject:Date;
	z=To:=20oss-security@lists.openwall.com|Reply-To:=20dev@freemarker.
	 incubator.apache.org|From:=20Jacques=20Le=20Roux=20<jacques.le.rou
	 x@les7arts.com>|Subject:=20[CVE-2020-13923]=20IDOR=20in=20Apache=2
	 0OFBiz|Date:=20Wed,=2015=20Jul=202020=2014:52:06=20+0200;
	b=EvgESmnK1MAa7KLsEmWMUzDod1pmzXEGImjoKa5tOt4MZbpvfSCuIv7brRBViXJY4
	 b/3Yn8sa24aGRy9Pjg9bthuAbvYjbfBVu2ehYol8tDD4t4r/DqdE2skHZ/4Kt2ECtK
	 yh9zKpivyt/LLyHJ6W0jnxDqM9+kdkCYCRFyM8Ok=
To: oss-security@lists.openwall.com
From: Jacques Le Roux <jacques.le.roux@les7arts.com>
Organization: Les Arts Informatiques
Message-ID: <80419b02-d26e-ed33-dc58-afecf4442ffb@les7arts.com>
Date: Wed, 15 Jul 2020 14:52:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2020-13923] IDOR in Apache OFBiz

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
All versions < 17.12.04

Description:
IDOR vulnerability in the order processing feature from ecommerce component.

Mitigation:
Upgrade to 17.12.04 or manually apply the commit at OFBIZ-11836
----

Credit:
Harshit Shukla <harshit.shukz@gmail.com>

References:
https://ofbiz.apache.org/security.html

